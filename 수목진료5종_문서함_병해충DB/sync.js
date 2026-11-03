(function(){
  'use strict';
  const KEYS = ['treeDiagnosisProfile','diagnosis-form-v1','rx-form-v1','jinryobu','tree-survey-v1','tree-opinion-v1'];
  const META_KEY='treeSyncMetaV1';
  const CFG=window.SUPABASE_URL && window.SUPABASE_ANON_KEY &&
    !String(window.SUPABASE_URL).includes('YOUR-PROJECT') && !String(window.SUPABASE_ANON_KEY).includes('YOUR_SUPABASE');
  let client=null, busy=false, timer=null;
  const meta=()=>{try{return JSON.parse(localStorage.getItem(META_KEY)||'{}')}catch(e){return {}}};
  const setMeta=(m)=>localStorage.setItem(META_KEY,JSON.stringify(m));
  const emit=(msg,kind='info')=>window.dispatchEvent(new CustomEvent('treesyncstatus',{detail:{msg,kind}}));
  const rawSet=Storage.prototype.setItem, rawRemove=Storage.prototype.removeItem;
  let internal=false;
  function touch(k){
    if(internal || !KEYS.includes(k)) return;
    const m=meta(); m[k]=new Date().toISOString(); setMeta(m); schedulePush();
  }
  Storage.prototype.setItem=function(k,v){rawSet.call(this,k,v); if(this===localStorage) touch(k)};
  Storage.prototype.removeItem=function(k){rawRemove.call(this,k); if(this===localStorage && KEYS.includes(k)){const m=meta();delete m[k];setMeta(m);schedulePush()}};
  function schedulePush(){clearTimeout(timer);timer=setTimeout(()=>{if(client&&window.TreeSyncUser)pushAll().catch(()=>{});},1800)}
  async function init(){
    if(!CFG){emit('Supabase 설정 전입니다. sync.js는 기기 저장만 유지합니다.','warn');return null}
    if(!window.supabase?.createClient){emit('Supabase 라이브러리를 불러오지 못했습니다.','error');return null}
    client=window.supabase.createClient(window.SUPABASE_URL,window.SUPABASE_ANON_KEY);
    const {data}=await client.auth.getSession();
    window.TreeSyncUser=data?.session?.user||null;
    if(window.TreeSyncUser) {await syncNow();}
    client.auth.onAuthStateChange((_event,session)=>{window.TreeSyncUser=session?.user||null; window.dispatchEvent(new CustomEvent('treesyncauth',{detail:{user:window.TreeSyncUser}})); if(window.TreeSyncUser)setTimeout(()=>syncNow(),0);});
    return client;
  }
  function getClient(){return client}
  async function signUp(email,password){if(!client)throw Error('Supabase 설정이 필요합니다.');return client.auth.signUp({email,password,options:{emailRedirectTo:location.origin+location.pathname}})}
  async function signIn(email,password){if(!client)throw Error('Supabase 설정이 필요합니다.');return client.auth.signInWithPassword({email,password})}
  async function signOut(){if(client)await client.auth.signOut();}
  async function pushAll(){
    if(!client||!window.TreeSyncUser||busy)return;
    busy=true; emit('클라우드에 동기화 중…');
    try{
      const uid=window.TreeSyncUser.id, m=meta();
      const rows=[];
      for(const key of KEYS){
        const value=localStorage.getItem(key); if(value===null) continue;
        let json; try{json=JSON.parse(value)}catch(e){json={_raw:value}}
        if(value.length>900000){emit(key+' 자료가 너무 커서 클라우드 동기화에서 제외했습니다.','warn');continue}
        rows.push({user_id:uid,key_name:key,value_json:json,updated_at:m[key]||new Date().toISOString()});
      }
      if(rows.length){const {error}=await client.from('tree_sync_store').upsert(rows,{onConflict:'user_id,key_name'});if(error)throw error;}
      emit('동기화 완료','ok');
    }finally{busy=false}
  }
  async function syncNow(){
    if(!client||!window.TreeSyncUser||busy)return;
    busy=true; emit('PC/휴대폰 자료를 비교하는 중…');
    try{
      const uid=window.TreeSyncUser.id;
      const {data:rows,error}=await client.from('tree_sync_store').select('key_name,value_json,updated_at').eq('user_id',uid);
      if(error)throw error;
      const m=meta(), uploads=[]; let changed=false;
      for(const key of KEYS){
        const r=rows?.find(x=>x.key_name===key); const lv=localStorage.getItem(key); const lm=m[key];
        if(r && (!lv || !lm || new Date(r.updated_at)>new Date(lm))){
          internal=true; rawSet.call(localStorage,key,JSON.stringify(r.value_json)); internal=false; m[key]=r.updated_at; changed=true;
        } else if(lv && !r){uploads.push(key)}
      }
      setMeta(m);
      if(uploads.length) await pushAll();
      if(changed){emit('최신 클라우드 자료를 불러왔습니다. 화면을 새로 표시합니다.','ok');setTimeout(()=>location.reload(),350)}
      else emit('동기화 완료','ok');
    }catch(e){emit('동기화 오류: '+(e.message||e),'error');}
    finally{busy=false}
  }
  window.TreeSync={init,getClient,signUp,signIn,signOut,pushAll,syncNow,keys:KEYS,isConfigured:()=>CFG};
  document.addEventListener('DOMContentLoaded',()=>init());
})();
