/* 수목진료 서식 — 작성 문서 보관함
 * - 작성한 문서를 이름을 붙여 여러 건 저장하고, 필요할 때 다시 불러와 편집합니다.
 * - 기기 저장: IndexedDB(용량이 커서 사진이 포함된 문서도 저장 가능)
 * - 클라우드: Supabase tree_documents 테이블 (작성자료 관리에서 로그인한 경우)
 *
 * 각 서식 페이지는 아래처럼 연결합니다.
 *   TreeDocs.register({
 *     type:'rx', label:'처방전',
 *     get:()=>상태객체,             // 현재 화면의 내용을 JSON 가능한 객체로
 *     set:(data)=>{...},            // 저장된 내용을 화면에 복원
 *     reset:()=>{...},              // 빈 서식으로 (새 문서)
 *     title:(data)=>'기본 제목'      // 저장 시 기본 제목
 *   });
 */
(function(){
  'use strict';
  const DB_NAME='tree-docs', STORE='docs', TABLE='tree_documents';
  const CLOUD_LIMIT=6*1024*1024; // 6MB 초과 문서는 기기에만 보관
  const TYPES={
    diagnosis:{label:'진단서',icon:'🩺',path:'diagnosis/index.html'},
    rx:{label:'처방전',icon:'💊',path:'prescription/index.html'},
    jinryobu:{label:'진료부',icon:'📋',path:'jinryobu/index.html'},
    survey:{label:'기초현황조사표',icon:'🌳',path:'survey/index.html'},
    opinion:{label:'소견서',icon:'📝',path:'opinion/index.html'}
  };

  /* ---------------- IndexedDB ---------------- */
  let dbp=null;
  function db(){
    if(dbp) return dbp;
    dbp=new Promise((ok,no)=>{
      if(!window.indexedDB){no(new Error('이 브라우저는 IndexedDB를 지원하지 않습니다.'));return}
      const r=indexedDB.open(DB_NAME,1);
      r.onupgradeneeded=()=>{const s=r.result.createObjectStore(STORE,{keyPath:'id'});s.createIndex('type','type')};
      r.onsuccess=()=>ok(r.result);
      r.onerror=()=>no(r.error);
    });
    return dbp;
  }
  function tx(mode,fn){
    return db().then(d=>new Promise((ok,no)=>{
      const t=d.transaction(STORE,mode),s=t.objectStore(STORE);let out;
      Promise.resolve(fn(s)).then(v=>{out=v});
      t.oncomplete=()=>ok(out);t.onerror=()=>no(t.error);t.onabort=()=>no(t.error);
    }));
  }
  const req=r=>new Promise((ok,no)=>{r.onsuccess=()=>ok(r.result);r.onerror=()=>no(r.error)});
  const getRaw=id=>tx('readonly',s=>req(s.get(id)));
  const putRaw=doc=>tx('readwrite',s=>req(s.put(doc)));
  const allRaw=()=>tx('readonly',s=>req(s.getAll()));

  async function list(type){
    const all=await allRaw();
    return all.filter(d=>!d.deleted&&(!type||d.type===type)).sort((a,b)=>String(b.updated_at).localeCompare(String(a.updated_at)));
  }
  async function getDoc(id){const d=await getRaw(id);return d&&!d.deleted?d:null}
  const uuid=()=>crypto.randomUUID?crypto.randomUUID():'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g,c=>{const r=Math.random()*16|0;return (c==='x'?r:(r&3|8)).toString(16)});
  const now=()=>new Date().toISOString();
  async function saveDoc({id,type,title,data}){
    const old=id?await getRaw(id):null;
    const doc={id:id||uuid(),type,title:title||'제목 없음',data,created_at:old?old.created_at:now(),updated_at:now(),deleted:false,dirty:true};
    await putRaw(doc);scheduleSync();return doc;
  }
  async function removeDoc(id){
    const d=await getRaw(id);if(!d)return;
    await putRaw({id:d.id,type:d.type,title:d.title,data:null,created_at:d.created_at,updated_at:now(),deleted:true,dirty:true});
    scheduleSync();
  }

  /* ---------------- Supabase 동기화 ---------------- */
  let syncing=false,syncTimer=null;
  const client=()=>window.TreeSync&&window.TreeSync.getClient&&window.TreeSync.getClient();
  const user=()=>window.TreeSyncUser||null;
  function scheduleSync(){clearTimeout(syncTimer);syncTimer=setTimeout(()=>{syncNow().catch(()=>{})},1200)}
  async function syncNow(){
    const c=client(),u=user();
    if(!c||!u||syncing)return {skipped:true};
    syncing=true;let down=0,up=0,skipped=0;
    try{
      const {data:rows,error}=await c.from(TABLE).select('id,doc_type,title,updated_at,deleted').eq('user_id',u.id);
      if(error)throw error;
      const remote=new Map((rows||[]).map(r=>[r.id,r]));
      const local=new Map((await allRaw()).map(d=>[d.id,d]));
      // 클라우드가 더 최신 → 내려받기
      for(const r of remote.values()){
        const l=local.get(r.id);
        if(!l||new Date(r.updated_at)>new Date(l.updated_at)){
          let data=null;
          if(!r.deleted){const {data:full,error:e2}=await c.from(TABLE).select('data').eq('id',r.id).single();if(e2)throw e2;data=full.data}
          await putRaw({id:r.id,type:r.doc_type,title:r.title,data,created_at:l?l.created_at:r.updated_at,updated_at:r.updated_at,deleted:!!r.deleted,dirty:false});
          local.set(r.id,null);down++;
        }
      }
      // 기기가 더 최신 → 올리기
      for(const l of local.values()){
        if(!l)continue;const r=remote.get(l.id);
        if(!r||new Date(l.updated_at)>new Date(r.updated_at)){
          const size=l.data?JSON.stringify(l.data).length:0;
          if(size>CLOUD_LIMIT){skipped++;continue}
          const {error:e3}=await c.from(TABLE).upsert({id:l.id,user_id:u.id,doc_type:l.type,title:l.title,data:l.data,deleted:!!l.deleted,created_at:l.created_at,updated_at:l.updated_at},{onConflict:'id'});
          if(e3)throw e3;
          await putRaw(Object.assign({},l,{dirty:false}));up++;
        }else if(l.dirty){await putRaw(Object.assign({},l,{dirty:false}))}
      }
      emit('docs-synced',{down,up,skipped});
      return {down,up,skipped};
    }catch(e){
      const msg=String(e&&e.message||e);
      emit('docs-sync-error',{message:/relation|does not exist|schema cache/i.test(msg)?'Supabase에 tree_documents 테이블이 없습니다. supabase_setup.sql을 다시 실행해 주세요.':msg});
      throw e;
    }finally{syncing=false}
  }
  function emit(n,d){window.dispatchEvent(new CustomEvent(n,{detail:d}))}
  window.addEventListener('treesyncauth',e=>{if(e.detail&&e.detail.user)scheduleSync()});
  window.addEventListener('online',scheduleSync);
  // sync.js가 로그인 세션을 복원한 뒤 한 번 동기화
  document.addEventListener('DOMContentLoaded',()=>{let n=0;const t=setInterval(()=>{if(user()&&client()){clearInterval(t);scheduleSync()}else if(++n>20)clearInterval(t)},500)});

  /* ---------------- 공통 유틸 ---------------- */
  function hash(s){let h=2166136261;for(let i=0;i<s.length;i++){h^=s.charCodeAt(i);h=Math.imul(h,16777619)}return (h>>>0).toString(36)+':'+s.length}
  const esc=s=>String(s==null?'':s).replace(/[&<>"']/g,c=>({'&':'&amp;','<':'&lt;','>':'&gt;','"':'&quot;',"'":'&#39;'}[c]));
  function fmt(iso){try{const d=new Date(iso);const p=n=>String(n).padStart(2,'0');return d.getFullYear()+'.'+p(d.getMonth()+1)+'.'+p(d.getDate())+' '+p(d.getHours())+':'+p(d.getMinutes())}catch(e){return ''}}
  function sizeText(data){const n=data?JSON.stringify(data).length:0;return n>1048576?(n/1048576).toFixed(1)+'MB':Math.max(1,Math.round(n/1024))+'KB'}

  /* ---------------- 화면 UI ---------------- */
  const CSS=`
.tdoc-fab{position:fixed;right:12px;bottom:calc(88px + env(safe-area-inset-bottom,0px));z-index:99990;display:flex;flex-direction:column;align-items:flex-end;gap:6px;font-family:system-ui,-apple-system,"Segoe UI","Noto Sans KR","Malgun Gothic",sans-serif}
.tdoc-fab .row{display:flex;gap:6px}
.tdoc-fab button{border:0;border-radius:999px;padding:10px 15px;font:700 14px/1 inherit;font-family:inherit;cursor:pointer;box-shadow:0 3px 12px rgba(0,0,0,.22);background:#173f5f;color:#fff}
.tdoc-fab button.lt{background:#fff;color:#173f5f;border:1px solid #c9d4df}
.tdoc-cur{max-width:min(320px,70vw);background:rgba(255,255,255,.96);border:1px solid #d8dee8;border-radius:10px;padding:5px 9px;font-size:12px;color:#344054;box-shadow:0 2px 8px rgba(0,0,0,.08);white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.tdoc-cur b{color:#173f5f}.tdoc-cur .m{color:#b54708}
.tdoc-ov{position:fixed;inset:0;z-index:100001;background:rgba(15,23,42,.5);display:flex;align-items:flex-end;justify-content:center;font-family:system-ui,-apple-system,"Segoe UI","Noto Sans KR","Malgun Gothic",sans-serif}
@media(min-width:700px){.tdoc-ov{align-items:center}}
.tdoc-box{background:#fff;color:#172033;width:100%;max-width:560px;max-height:88dvh;display:flex;flex-direction:column;border-radius:16px 16px 0 0;box-shadow:0 -6px 30px rgba(0,0,0,.3);padding:14px 16px calc(14px + env(safe-area-inset-bottom,0px))}
@media(min-width:700px){.tdoc-box{border-radius:16px}}
.tdoc-box h2{margin:0 0 10px;font-size:18px;display:flex;align-items:center;justify-content:space-between}
.tdoc-box h2 button{border:0;background:transparent;font-size:20px;color:#667085;cursor:pointer;width:36px;height:36px}
.tdoc-box input[type=text],.tdoc-box input[type=search]{width:100%;box-sizing:border-box;font:16px inherit;font-family:inherit;padding:10px 12px;border:1px solid #cfd7e2;border-radius:10px}
.tdoc-box .hint{font-size:12.5px;color:#667085;margin:8px 0 0;line-height:1.5}
.tdoc-btns{display:flex;flex-wrap:wrap;gap:8px;justify-content:flex-end;margin-top:14px}
.tdoc-btns button,.tdoc-item button{border:1px solid #cfd7e2;background:#f5f7fa;color:#172033;border-radius:9px;padding:9px 13px;font:600 14px inherit;font-family:inherit;cursor:pointer}
.tdoc-btns button.p,.tdoc-item button.p{background:#173f5f;border-color:#173f5f;color:#fff}
.tdoc-btns button.d,.tdoc-item button.d{color:#a12b2b}
.tdoc-list{overflow:auto;display:flex;flex-direction:column;gap:8px;margin-top:10px;min-height:80px}
.tdoc-item{border:1px solid #dce3eb;border-radius:12px;padding:10px 12px;background:#fafbfd}
.tdoc-item.on{border-color:#173f5f;background:#eef4fa}
.tdoc-item .t{font-weight:700;font-size:15px;word-break:break-all}
.tdoc-item .s{font-size:12px;color:#667085;margin:3px 0 8px}
.tdoc-item .a{display:flex;flex-wrap:wrap;gap:6px}
.tdoc-item .a button{padding:6px 10px;font-size:13px}
.tdoc-empty{color:#667085;text-align:center;padding:26px 0;font-size:14px}
.tdoc-toast{position:fixed;left:50%;bottom:calc(150px + env(safe-area-inset-bottom,0px));transform:translateX(-50%);background:#1d2a21;color:#fff;padding:10px 16px;border-radius:10px;font:14px system-ui,sans-serif;z-index:99999;max-width:90vw;text-align:center}
@media print{.tdoc-fab,.tdoc-ov,.tdoc-toast{display:none!important}}
.exporting .tdoc-fab{display:none!important}`;

  let A=null;           // 현재 페이지 어댑터
  let cur=null;         // {id,title,hash}
  const curKey=()=>'treeDocsCurrent:'+A.type;
  function loadCur(){try{cur=JSON.parse(localStorage.getItem(curKey())||'null')}catch(e){cur=null}}
  function storeCur(){try{cur?localStorage.setItem(curKey(),JSON.stringify(cur)):localStorage.removeItem(curKey())}catch(e){}}
  const snap=()=>{try{return JSON.stringify(A.get())}catch(e){return ''}};
  function isDirty(){if(!cur)return false;return hash(snap())!==cur.hash}
  function hasContent(){try{return !!A.hasContent?A.hasContent(A.get()):true}catch(e){return true}}

  let toastT=null;
  function toast(m){let t=document.querySelector('.tdoc-toast');if(!t){t=document.createElement('div');t.className='tdoc-toast';document.body.append(t)}t.textContent=m;t.hidden=false;clearTimeout(toastT);toastT=setTimeout(()=>{t.hidden=true},2800)}

  function modal(html){
    const ov=document.createElement('div');ov.className='tdoc-ov';ov.innerHTML='<div class="tdoc-box" role="dialog" aria-modal="true">'+html+'</div>';
    document.body.append(ov);
    const close=()=>ov.remove();
    ov.addEventListener('pointerdown',e=>{if(e.target===ov)close()});
    ov.querySelectorAll('[data-x]').forEach(b=>b.onclick=close);
    const onKey=e=>{if(e.key==='Escape'){close();document.removeEventListener('keydown',onKey)}};document.addEventListener('keydown',onKey);
    return {ov,close,q:s=>ov.querySelector(s)};
  }
  function confirmBox(msg,okText){
    return new Promise(res=>{
      const m=modal('<h2>확인</h2><div style="font-size:15px;line-height:1.6">'+msg+'</div><div class="tdoc-btns"><button data-n>취소</button><button class="p" data-y>'+esc(okText||'확인')+'</button></div>');
      m.q('[data-n]').onclick=()=>{m.close();res(false)};m.q('[data-y]').onclick=()=>{m.close();res(true)};
      m.ov.addEventListener('pointerdown',e=>{if(e.target===m.ov)res(false)});
    });
  }

  function renderBadge(){
    const el=document.querySelector('.tdoc-cur');if(!el)return;
    if(cur){el.innerHTML='편집 중: <b>'+esc(cur.title)+'</b>'+(isDirty()?' <span class="m">· 저장 안 된 변경</span>':'');el.hidden=false}
    else{el.innerHTML='새 문서 <span class="m">· 아직 보관함에 저장 안 됨</span>';el.hidden=!hasContent()}
  }
  let badgeT=null;const badgeSoon=()=>{clearTimeout(badgeT);badgeT=setTimeout(renderBadge,700)};

  /* 저장 */
  async function openSave(){
    const data=A.get();
    const def=(cur&&cur.title)||(A.title?A.title(data):'')||(TYPES[A.type]?TYPES[A.type].label:'문서')+' '+fmt(now()).slice(0,10);
    const m=modal('<h2>문서 저장<button data-x aria-label="닫기">✕</button></h2>'+
      '<label style="font-size:13px;color:#475467">문서 이름</label><input type="text" id="tdocTitle" value="'+esc(def)+'" style="margin-top:4px">'+
      '<p class="hint">'+(cur?'<b>덮어쓰기</b>는 지금 편집 중인 문서(“'+esc(cur.title)+'”)를 갱신하고, <b>새 문서로 저장</b>은 별도 문서를 하나 더 만듭니다.':'보관함에 저장하면 나중에 [📂 문서함]에서 다시 불러와 편집할 수 있습니다.')+
      ' 로그인되어 있으면 PC·휴대폰에 함께 동기화됩니다.</p>'+
      '<div class="tdoc-btns"><button data-x>취소</button>'+(cur?'<button id="tdocNew">새 문서로 저장</button><button class="p" id="tdocOver">덮어쓰기 저장</button>':'<button class="p" id="tdocNew">저장</button>')+'</div>');
    const ti=m.q('#tdocTitle');setTimeout(()=>{ti.focus();ti.select()},40);
    const go=async asNew=>{
      const title=ti.value.trim()||def;
      try{
        const doc=await saveDoc({id:asNew?null:cur.id,type:A.type,title,data:A.get()});
        cur={id:doc.id,title:doc.title,hash:hash(snap())};storeCur();renderBadge();m.close();
        toast((asNew?'보관함에 저장했습니다: ':'덮어써서 저장했습니다: ')+title);
      }catch(e){toast('저장하지 못했습니다: '+(e.message||e))}
    };
    m.q('#tdocNew').onclick=()=>go(true);
    if(cur)m.q('#tdocOver').onclick=()=>go(false);
    ti.addEventListener('keydown',e=>{if(e.key==='Enter'){e.preventDefault();go(!cur)}});
  }

  /* 불러오기 */
  async function guardLeave(){
    if(cur&&isDirty())return confirmBox('편집 중인 “'+esc(cur.title)+'”에 저장하지 않은 변경이 있습니다.<br>저장하지 않고 계속할까요?','계속');
    if(!cur&&hasContent())return confirmBox('지금 화면의 내용은 보관함에 저장되지 않았습니다.<br>저장하지 않고 계속할까요?','계속');
    return true;
  }
  async function openDoc(id,asCopy){
    const d=await getDoc(id);if(!d){toast('문서를 찾을 수 없습니다.');return false}
    try{A.set(JSON.parse(JSON.stringify(d.data)))}catch(e){console.error(e);toast('문서를 여는 중 오류가 발생했습니다.');return false}
    if(asCopy){cur=null;toast('복사본으로 열었습니다. 저장하면 새 문서가 됩니다.')}
    else{cur={id:d.id,title:d.title,hash:hash(snap())};toast('불러왔습니다: '+d.title)}
    storeCur();renderBadge();window.scrollTo({top:0});return true;
  }
  async function openList(){
    const lbl=TYPES[A.type]?TYPES[A.type].label:'문서';
    const m=modal('<h2>📂 '+esc(lbl)+' 문서함<button data-x aria-label="닫기">✕</button></h2>'+
      '<input type="search" id="tdocQ" placeholder="이름으로 찾기">'+
      '<div class="tdoc-list" id="tdocL"><div class="tdoc-empty">불러오는 중…</div></div>'+
      '<div class="tdoc-btns"><button id="tdocSync" hidden>☁ 지금 동기화</button><button id="tdocBlank">＋ 새 문서 작성</button><button data-x>닫기</button></div>');
    const L=m.q('#tdocL'),Q=m.q('#tdocQ');
    let docs=[];
    const draw=()=>{
      const q=Q.value.trim().toLowerCase();
      const v=docs.filter(d=>!q||String(d.title).toLowerCase().includes(q));
      if(!v.length){L.innerHTML='<div class="tdoc-empty">'+(docs.length?'검색 결과가 없습니다.':'저장된 '+esc(lbl)+'가 없습니다.<br>작성 후 [💾 문서 저장]을 누르세요.')+'</div>';return}
      L.innerHTML=v.map(d=>'<div class="tdoc-item'+(cur&&cur.id===d.id?' on':'')+'" data-id="'+d.id+'"><div class="t">'+esc(d.title)+(cur&&cur.id===d.id?' <small style="color:#173f5f">(편집 중)</small>':'')+'</div>'+
        '<div class="s">수정 '+fmt(d.updated_at)+' · '+sizeText(d.data)+(d.dirty?' · 클라우드 미반영':'')+'</div>'+
        '<div class="a"><button class="p" data-act="open">열기</button><button data-act="copy">복사본으로 열기</button><button data-act="ren">이름 변경</button><button class="d" data-act="del">삭제</button></div></div>').join('');
    };
    const load=async()=>{docs=await list(A.type);draw()};
    Q.oninput=draw;
    L.onclick=async e=>{
      const b=e.target.closest('button[data-act]');if(!b)return;
      const id=b.closest('.tdoc-item').dataset.id,d=docs.find(x=>x.id===id);if(!d)return;
      const act=b.dataset.act;
      if(act==='open'||act==='copy'){
        if(!(cur&&cur.id===id&&act==='open')&&!(await guardLeave()))return;
        if(await openDoc(id,act==='copy'))m.close();
      }else if(act==='del'){
        if(!(await confirmBox('“'+esc(d.title)+'” 문서를 삭제할까요?<br>PC·휴대폰 동기화 시 다른 기기에서도 삭제됩니다.','삭제')))return;
        await removeDoc(id);if(cur&&cur.id===id){cur=null;storeCur();renderBadge()}
        toast('삭제했습니다.');load();
      }else if(act==='ren'){
        const n=prompt('새 문서 이름',d.title);if(n===null||!n.trim())return;
        await saveDoc({id:d.id,type:d.type,title:n.trim(),data:d.data});
        if(cur&&cur.id===id){cur.title=n.trim();storeCur();renderBadge()}
        load();
      }
    };
    m.q('#tdocBlank').onclick=async()=>{
      if(!(await guardLeave()))return;
      try{A.reset()}catch(e){console.error(e)}
      cur=null;storeCur();renderBadge();m.close();toast('새 문서를 시작합니다.');
    };
    const sb=m.q('#tdocSync');
    if(user()&&client()){sb.hidden=false;sb.onclick=async()=>{sb.disabled=true;sb.textContent='동기화 중…';try{const r=await syncNow();toast('동기화 완료'+(r&&r.skipped?' (용량이 큰 문서 '+r.skipped+'건은 기기에만 보관)':''));await load()}catch(e){toast('동기화 오류: '+(e.message||e))}sb.disabled=false;sb.textContent='☁ 지금 동기화'}}
    load();
  }

  function mountUI(){
    const st=document.createElement('style');st.textContent=CSS;document.head.append(st);
    const f=document.createElement('div');f.className='tdoc-fab';
    f.innerHTML='<div class="tdoc-cur" hidden></div><div class="row"><button class="lt" type="button" id="tdocOpen">📂 문서함</button><button type="button" id="tdocSave">💾 문서 저장</button></div>';
    document.body.append(f);
    f.querySelector('#tdocSave').onclick=openSave;
    f.querySelector('#tdocOpen').onclick=openList;
    ['click','input','change','keyup'].forEach(ev=>document.addEventListener(ev,e=>{if(!e.target.closest||!e.target.closest('.tdoc-ov,.tdoc-fab'))badgeSoon()},true));
    window.addEventListener('docs-synced',async()=>{
      if(cur){const d=await getRaw(cur.id);if(!d||d.deleted){cur=null;storeCur()}else if(d.title!==cur.title){cur.title=d.title;storeCur()}}
      renderBadge();
    });
  }

  async function register(adapter){
    A=adapter;loadCur();
    const go=async()=>{
      mountUI();
      const id=new URLSearchParams(location.search).get('doc');
      if(id){
        await openDoc(id,false);
        try{history.replaceState(null,'',location.pathname+location.hash)}catch(e){}
      }else if(cur){
        const d=await getRaw(cur.id).catch(()=>null);
        if(!d||d.deleted){cur=null;storeCur()}
      }
      renderBadge();
    };
    if(document.readyState==='loading')document.addEventListener('DOMContentLoaded',go);else go();
  }
  // 페이지의 기존 [새로 작성/초기화] 버튼을 눌렀을 때 호출 → 보관함 문서와의 연결 해제
  function detach(){if(!A)return;cur=null;storeCur();setTimeout(renderBadge,50)}

  window.TreeDocs={register,detach,list,get:getDoc,save:saveDoc,remove:removeDoc,syncNow,types:TYPES,openList:()=>A&&openList(),openSave:()=>A&&openSave()};
})();
