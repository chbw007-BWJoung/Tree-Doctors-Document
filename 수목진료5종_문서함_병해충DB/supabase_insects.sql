-- 수목 해충 데이터베이스 (엑셀 "원본" 시트 179종)
-- Supabase Dashboard > SQL Editor 에서 전체 실행. 다시 실행해도 내용이 새로 덮어써집니다.

create table if not exists public.tree_insects (
  id integer primary key,
  category text,
  order_name text,
  family text,
  name text not null,
  sci_name text,
  host text,
  damage_stage text,
  generations text,
  overwinter_stage text,
  overwinter_site text,
  distribution text,
  host_plants text,
  damage_trait text,
  damage_sign text,
  morphology text,
  morphology2 text,
  morphology3 text,
  ecology text,
  physical_control text,
  biological_control text,
  spray_timing text,
  chemical_control text,
  chemical_control2 text
);

alter table public.tree_insects enable row level security;
grant select on table public.tree_insects to anon, authenticated;

-- 참고자료이므로 누구나 읽기만 가능 (쓰기는 대시보드에서만)
drop policy if exists "tree insects read" on public.tree_insects;
create policy "tree insects read" on public.tree_insects for select
to anon, authenticated using (true);

create index if not exists tree_insects_name_idx on public.tree_insects(name);

truncate table public.tree_insects;

insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (1,$v$식엽성 해충$v$,$v$나비목$v$,$v$독나방아과$v$,$v$독나방$v$,$v$Euproctis subflava
에우프록티스 서브플라바$v$,$v$활엽수$v$,$v$유충$v$,$v$1$v$,$v$유충$v$,$v$잡초, 낙엽사이$v$,$v$한국, 일본, 중국, 타이완, 러시아$v$,$v$감나무, 느티나무, 단풍나무, 등, 매실나무, 밤나무, 버드나무, 배나무, 복사나무, 뽕나무, 사과나무, 자두나무, 장미, 진달래, 찔레, 해당화 등 활엽수$v$,$v$벚나무 피해 쉽게 눈에 띔(군서 가해)
잎끝 부터 식해-망상 식흔,  
봄 피해 심(참나무 새싹)
최근 1958년 전국 대발생
성충과 유충에 독침 털 피부 염증 유발$v$,$v$잎매만 남김$v$,$v$성충 : 13~17(30~40)mm, 몸과 날개 황색, 
         앞날개 중간부 자색 띠 무늬
유충 : 35mm, 흑갈색~등황색, 육질 돌기, 긴털 
        배마디 #1, #2, #8 등면 털무더기
알 : 암갈색, 규칙덕인 다층 알덩어리 인편가루$v$,null,null,$v$월동 유충 : 4월 중순출현, 잎 뒷면 머리 정렬 식해
용화 : 5월 하순부터 읲뒷면 다갈색 털로 고치속
우화 : 6월 상순~8월상순 수컷 먼저 우화
산란 : 지면 가까이의 잎 뒷면 줄기에 난괴
부화 : 7월, 월동처로 이동 : 11월$v$,$v$6~7월 성충을 유아등, 유살등으로 유인 포살 
가해 초기 집단유충 채취 소각$v$,$v$기생성 천적 : 알좀벌류, 맵시벌류, 좀벌류, 
포식성 전적 : 조류$v$,$v$유충밀도 높을 때$v$,$v$등록 약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (2,$v$식엽성 해충$v$,$v$나비목$v$,$v$독나방아과$v$,$v$매미나방$v$,$v$Lymantria dispar
리만트리아 디스파$v$,$v$활엽수,침엽수(잎갈)$v$,$v$유충$v$,$v$1$v$,$v$알덩어리$v$,$v$줄기, 가지$v$,$v$한국, 일본, 중국, 유럽, 미국$v$,$v$벚나무, 참나무류, 느릅나무류, 잎갈나무류, 장미, 댕강나무류, 사과나무, 배나무, 감나무, 포도, 버드나무류, 포플러류, 호두나무, 대추나무, 오리나무, 귤나무류, 철쭉류, 자작나무, 자두나무$v$,$v$토착 해충, 국지적 대발생(돌발성)
유충 섭식량 : 700~1800cm^2, 참나무잎$v$,$v$700~1800 cm2$v$,$v$암수 이형, 더듬이 : 닭털 모양
성충 : 수-41~54mm, 암갈색,  닭털 모양
         암-78~93mm,회백색 실모양, 4개 횡대
유충 : 55mm, 등쪽 돌기 암청색, 암적색 긴털
알 : 1.7mm, 공모양 난괴가 노란색 털로 덮혀있음$v$,null,null,$v$부화 : 4월 중순경, 실크타고 바람에 분산
용화 : 6월중순~7월상순 잎말이 속에 갈색 고치
우화 산란 : 7~8월, 줄기또는 가지에 알무더기
숫컷 구애 활발(집시나방), 암컷 무거워 날지못함
난괴 성충 체모$v$,$v$4월 이전 월동 알덩어리 제거(소각,매몰) 
성충시기(7월) 유아등, 유살등 포획$v$,$v$포식 : 풀색딱정별레, 검정명주딱정벌레, 청노린재
기생 : 무늬수중다리좀벌, 긴등기생파리, 나방살이납작매뱁시벌, 송충알벌, 독나방살이고치벌, 짚시벼룩좀벌, 황다리납작뱀시벌, 송충잡이자루맵시벌, 포라맵시벌, 흰발목벼룩좀벌, 오렌지다리납작맵시벌, 검정다리꼬리압직맵시벌 
Bt 균, 핵다각체바이러스 살포$v$,$v$어린유충기$v$,$v$에마멕티벤조에이트 유제, 스피네토람, 액상수화제, 노발루론 액상수화제 등 적용약제
등록 약제(티아클로프리드)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (3,$v$식엽성 해충$v$,$v$나비목$v$,$v$독나방아과$v$,$v$미국흰불나방$v$,$v$Hyphantria cunea
히판트리아 쿠네아$v$,$v$활엽수$v$,$v$유충$v$,$v$2~3$v$,$v$번데기$v$,$v$수피,지피물 밑 고치$v$,$v$북아메리카, 한국, 일본, 중국, 러시아, 유럽, 케나다, 멕시코$v$,$v$감나무, 대추나무, 버즘나무, 벚나무, 단풍나무, 포플러류 등 활엽수$v$,$v$1985년 외래해충
5령기 이후 분산 가해 잎맥만 남김
100~150cm^2
2화기 피해 심(3화기 10월)
생활권 수목 피해 큼$v$,$v$5령기 이후 분산$v$,$v$성충 : 1화기성충 검은점, 2화기 순백색
         수-28~30(9~10)mm
         암-36~37(12~14)mm, 
유충 : 30mm, 등에 검은색 돌기, 옆 황갈색 돌기
알 : 0.5mm, 둥근모양, 담록색->회흑색 
     알덩이 흰 자모
유충 색깔변화 심$v$,null,null,$v$1화기 우화 : 5월 중순~6월 상순, 잎 뒷면 산란
         부화 : 5월 하순, 5령기 분산, 7월까지 가해
         용화 : 수피틈, 돌틈 등에 고치짓고 속
2화기 우화 : 7월 하순~8월 중순,
        부화 : 8월 상순, 10월 상순까지 가해
3화기 : 9월 하순 3화기 출현하기도 함
용화 : 수피틈, 돌틈 등에 고치짓고 속
유충은 5령기 이후 분산, 우화 시각 저녁 6~7시,
성충은 야행성, 주광성,$v$,$v$5월 상순 ~ 8월 중순 알덩어리 잎 , 유충 패해 초기에 잎을 채취 소각
월동 번데기 채취 제거
성충 활동기 유살(유아등, 포충기)
유충 월동 준비기에 나무 줄기에 잠복장소 설치(짚) 후 봄에 제거 소각$v$,$v$어린 유충기에 Bt 균, 핵다각체바이러스 살포
포식성 천적 : 꽃노린재류, 검정명주딱정별레, 
기생성 천적 : 흑선두리먼지벌레, 납작선두리먼지벌레, 무늬수중다리좀벌, 긴등기생파리, 나방살이납작맵시벌, 송충알벌 등$v$,$v$유충 발생 초기$v$,$v$에마멕틴벤조에이트 유제, 아바멕틴 미탁제, 아바멕틴 분산성 액제등을 나무주사
사이안트라릴리프롤.피메트로진 입상수화제, 디풀루벤쥬론 입상수화제, 디풀루벤쥬론.설폭사플로르 입상수화제, 트리플루뮤론 수화제, 클로란트라릴리프롤 입상수화제 등 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (4,$v$식엽성 해충$v$,$v$나비목$v$,$v$독나방아과$v$,$v$붉은매미나방$v$,$v$리만트리아 마투라 아우로라$v$,$v$밤나무, 벚나무$v$,null,$v$1$v$,$v$알덩어리$v$,$v$줄기, 가지$v$,null,null,$v$1992, 1998, 2007 대발생
밤나무, 벚나무
다시 새순$v$,null,$v$암수 이형
앞날개 흰색, 둣날개 붉은색, 외연 갈색 띠$v$,null,null,$v$1/년, 알덩이, 줄기
숫컷 그늘에서 활발
난괴 성충 체모$v$,$v$4월 이전 알덩어리 제거(소각,매몰) 
성충시기 유아등, 유살등 포획$v$,$v$기생성 : 무늬수중다리좀벌, 긴등기생파리, 나방살이납작맵시벌, 송충알벌, 
          독나방살이고치벌, 짚시벼룩좀벌, 황다리납작맵시벌, ….$v$,$v$어린유충기$v$,$v$등록 약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (5,$v$식엽성 해충$v$,$v$나비목$v$,$v$독나방아과$v$,$v$사과독나방$v$,$v$칼리테아라 슈도아비에티스$v$,null,null,$v$2$v$,$v$번데기$v$,null,null,null,$v$벚나무 가끔 약한 피해
각모, 인펀 인체 아레르기 유발$v$,null,$v$성충 : 회색바탕 검은 인펀, 
         뒷날개 백색바탕 검은 점무늬
유충 : 체색 녹황색, 황색 긴털
         배마디 8절 붉은색 긴 털 무더기$v$,null,null,$v$2/년, 번데기 월동
각모를 썩어서 만든 황색고치 월동$v$,$v$유충 발견 즉시 포살$v$,$v$포식성 : 무당벌레류, 풀잠자리류, 응애류, 거미류 보호$v$,$v$유충 발생 초기$v$,$v$등록 약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (6,$v$식엽성 해충$v$,$v$나비목$v$,$v$독나방아과$v$,$v$삼나무독나방$v$,$v$alliteara argentata
알리테아라 아르겐타타$v$,null,null,null,null,null,null,null,$v$유충이 잎을 식해하며 대발생하면 어린나무에 특히 피해가 심하다.
• 1961년 수원지방의 리기다소나무림에 대발생하였다.
• 최근에는 피해가 거의 보고되고 있지 않다.$v$,null,$v$성충의 몸길이는 25mm, 날개를 편 길이는 42~65mm이며 몸은 회백색이고 앞날개는 회갈색으로 흑갈색의 파상무늬가
있다.
• 노숙유충의 몸길이는 40~45mm이고 황녹색을 띠며 옆에는 흰선이 있고 배의 1~4절 등면에는 털 무더기가 있다.
• 몸에는 검은색과 백색의 긴털이 산재되어 있다.
• 고치는 엉성한 타원형이며 황갈색을 띠고 유충의 털이 붙어 있다.
생태$v$,null,null,$v$연 1~2회 발생하며 유충으로 월동한다.
• 4~5월에 나와서 잎을 식해한 후 5월에 잎 사이에 엷은 황갈색의 엉성한 고치를 만들고 번데기가 된다.
• 번데기기간은 약 10일간이며 5월 하순~6월에 우화한다.
• 산란수는 200~300개로 10~30개씩 무더기로 지엽이나 수피위에 산란한다.
• 6~8월에는 유충이 출현하고 주로 구엽을 가해하므로 새잎만 남게 된다.
• 2화기 성충은 8~9월에 출현하여 산란하고 약 10일간의 알기간을 거쳐 부화한 유충은 모여 살다가 성장하면 분산하며
지엽사이에서 월동한다.$v$,$v$약제방제
-발생량이 많을 때는 어린유충기인 4월과 9월에 약제 처리를 하면 효과가 있으나 등록된 약제가 없다.
• 친환경방제
-알을 포식하는 무당벌레류, 풀잠자리류, 응애류, 거미류를 보호한다.
-난괴나 모여사는 유충 피해엽을 채취하여 소각한다.$v$,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (7,$v$식엽성 해충$v$,$v$나비목$v$,$v$독나방아과$v$,$v$차독나방$v$,$v$에우프록티스 슈도콘스페르사
Euproctis psedoconspersa$v$,$v$차,동백,귤(상록활엽수$v$,$v$유충$v$,$v$2$v$,$v$알덩어리$v$,$v$가지, 잎뒷면$v$,$v$한국, 일본, 중국, 타이완$v$,$v$차나무, 동백나무, 애기동백, 귤나무류, (주로)
감나무, 매실나무, 뽕나무, 밤나무, 졸참나무$v$,$v$어린유충기 : 그물모양 식해- 갈변, 자라면서 일렬로 잎 가장자리 부터 가해 분산.
성충, 유춘, 고치, 알덩어리에 독침-통증 염증
성충 야간 불빛에 유인 잘됨.$v$,$v$어린유충 잎맥만$v$,$v$성충 : (25~35)mm, 체색은 담황색, 날개 황갈색
         수컷 앞날개 - 내.외 횡선 뚜렷, 인편 산재
         암컷 앞날개 - 담황색 외 횡선 희미,인편 X.
유충 : 25mm, 머리 광택 황갈색, 체색-담황색
        배마디에 흑갈색 혹$v$,null,null,$v$부화 유충 : 4월 하순, 7월 잎 뒷면 집단으로 가해
                노숙 유충 분산, 
용화 : 수피틈, 지제부에서 엉성한고치 속
성충 : 7~8월과 9~10월 출현, 
산란 : 가지 또는 잎 뒷면에 산란$v$,$v$가해 초기 집단 유충 포살, 소각$v$,$v$좀벌류, 맵시벌류, 알좀벌류$v$,$v$유충밀도 높을 때$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (8,$v$식엽성 해충$v$,$v$나비목$v$,$v$독나방아과$v$,$v$황다리독나방$v$,$v$Ivela auripes
이벨라 아우리페스$v$,$v$층층나무 만$v$,$v$유충$v$,$v$1$v$,$v$알덩어리$v$,$v$줄기$v$,$v$한국, 일본, 중국, 러시아$v$,$v$층층나무(단식성)$v$,$v$층층나무 단식
3령이후 피해 심 주맥만 남김$v$,$v$3령이후 주맥만 남김$v$,$v$성충 : 43mm, 체색-흑갈색 흰색 인모 도포
         앞다리 종아리와 발목 마디가 노란색
         누윳빛 날개(무지)
유충 : 2->40mm, 암갈색->흑색 등면에 노랑무늬
번데기 : 긴타원형 노란색에 검은 무늬 산재$v$,null,null,$v$1/년, 알덩이, 줄기
부화 : 4월 중순 기어 올라 잎 가해
용화 : 5월 하순부터 기주와 주변나무 물체등에
우화 : 6월 상순~(최성기 6월 중순
         숫컷 구애 활발난괴 성충 체모$v$,$v$줄기의 월동 알덩어리 채취 소각$v$,$v$황다리독나방기생고치벌$v$,$v$피해 발생 초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (9,$v$식엽성 해충$v$,$v$나비목$v$,$v$독나방아과$v$,$v$흰독나방$v$,$v$에우프록티스 시밀리스
Euproctis similis$v$,null,null,$v$2$v$,$v$유충$v$,null,null,null,$v$조경수, 정원수, 과수 피해
벚나무 가끔 약한 피해
각모, 인펀 인체 아레르기 유발$v$,null,$v$성충 : 전체 백색
      앞날개 후연부 흑갈색 무늬 2개
유충 : 2 tone(황색형, 흑갈색형)$v$,null,null,$v$2/년, 유충 월동
잎 뒷면 알 무더기 산란
각모를 썩어서 만든 고치속 번데기$v$,$v$유충 발견 즉시 포살, 소각, 매몰$v$,$v$포식성 : 무당벌레류, 풀잠자리류, 거미류 보호
기생성 천적 : 
    벌 : 무늬수중다리좀벌, 나방살이납작맵시벌, 독나방살이 고치벌, 송충알벌
    파리 : 긴등기생파리,$v$,$v$유충 발생 초기$v$,$v$등록 약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (10,$v$식엽성 해충$v$,$v$나비목$v$,$v$명나방과$v$,$v$벼슬집명나방$v$,$v$Locastra muscosalis
로카스트라 무스코살리스$v$,null,null,$v$1$v$,$v$유충$v$,$v$땅속(고치)$v$,null,null,$v$유충 : 집단 거미줄 잎철 잎살 만 가해
중령 : 집단 이동 잎맥만을 남김
노숙 : 1~3마리씩 분산하여 가해$v$,null,$v$암컷 : 짧은 원통형 광택 흑갈색 ~ 검은색. 
       몸 표면에 드문드문 털
수컷 : 약간 납작한 장타원형 체색은 황갈색$v$,null,null,$v$최성기는 7월 10일 경
잎 표면에 무더기로 산란
유충은 거미줄로 잎을 말고 군서$v$,$v$군서 유충을 채취하여 소각$v$,$v$기생성 : 천적인 기생벌류, 맵시벌류, 알좀벌류, 기생파리류$v$,$v$유충 발생기
약충 발생시기$v$,$v$페니트로티온 유제(50%), 클로르플루아주론 유제(5%) 1,000배액 또는 비페트린 입상수화제(8%) 4,000배액을 1회 살포한다
메치온, 디메토, 이미다클로프리드 액제를 1,000배액으로 희석하여 10일 간격으로 2회 정도 살포한다$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (11,$v$식엽성 해충$v$,$v$나비목$v$,$v$명나방과$v$,$v$제주집명나방$v$,$v$Orthaga olivachea
오르타가 올리바체아$v$,$v$후박나무$v$,$v$유충$v$,$v$1$v$,$v$유충$v$,$v$토양(추정)$v$,$v$한국, 일본, 중국, 타이완$v$,$v$후박나무(주로)$v$,$v$유충이 잎을 철하여 바구니모양 벌레주머니
피해가지 고사 경관 훼손 수세약화 고사$v$,$v$벌레주머니$v$,$v$성충 : 25~31mm, 머리 담갈색, 담갈색, 흑갈색
유충 : 35mm, 머리 검은색, 몸 녹색에 점무늬$v$,null,null,$v$성충 : 6~8월 출현
유충 : 9월 월동처로 이동$v$,$v$벌레집 채취 포살$v$,null,$v$유충발생 시기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (12,$v$식엽성 해충$v$,$v$나비목$v$,$v$뭉뚝날개나방과$v$,$v$자귀뭉뚝날개나방$v$,$v$Homadaula anisocentra
호마다울라 아니소켄트라$v$,$v$자귀나무, 주엽나무$v$,$v$유충$v$,$v$2$v$,$v$번데기$v$,$v$수피틈, 나무밑 지피물$v$,$v$한국, 일본, 중국, 북아메리카$v$,$v$자귀나무, 주엽나무$v$,$v$유충 잎 사이 실크 그물망 내부 식해 & 벌레똥$v$,$v$잎말이, 배설물$v$,$v$성충 : 날개 편길이 11~15mm 
         앞날개 다소 광택, 암갈회색 검은점 산재
유충 : 16mm, 회색, 갈색 변이 심
              세로방향 5개의 하얀 줄무늬
알 : 진주색 또는 분홍색$v$,null,null,$v$성충 : 6월 상순 출현(2세대 8월), 잎에 산란. 
부화 유충 : 그물망 잎철 안에서 식해, 낙하 습성
늣여름부터 번데기(월동태) 관찰
추운지역 9월 성충 관찰 됨$v$,$v$매년 발생상황 불균일
주엽나무는 감수성 계통/ 중간 감수성 계통 - 마국에서 발견$v$,null,$v$심할 때(예찰 후)$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (13,$v$식엽성 해충$v$,$v$나비목$v$,$v$밤나방과$v$,$v$가중나무껍질밤나방$v$,$v$Eligma narcissus
엘리그마 나르씨수스$v$,null,null,null,null,null,null,null,$v$유충은 군서하면서 식해$v$,null,$v$성충 : 앞날개 좁고 긴 편, 뒷날개는 등황색
유충 : 검은 띠가 있고 황색의 긴 털$v$,null,null,$v$1회/년 추정, 수피에 고치
번데기가 우는 소리를 냄$v$,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (14,$v$식엽성 해충$v$,$v$나비목$v$,$v$밤나방과$v$,$v$두충나방$v$,$v$Protegira songi
푸로테기라 손지$v$,$v$두충나무$v$,$v$유충$v$,$v$1$v$,$v$?$v$,$v$?$v$,$v$한국, 일본, 중국,$v$,$v$두충나무$v$,$v$중국원산, 2014년 국내 유입
잎을 주맥만 남기고 가해 발견 용이$v$,$v$주맥만 남김$v$,$v$성충 : 25~30mm, 앞날개 흑갈색 중실 둥근무늬
유충 : 27~35mm, 녹색-> 암갈색$v$,null,null,null,null,null,$v$유충 발생 초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (15,$v$식엽성 해충$v$,$v$나비목$v$,$v$밤나방과$v$,$v$큰붉은잎밤나방$v$,$v$Anomis privata
아노미스 프리바타$v$,$v$무궁화, 사과, 핵과$v$,$v$유충$v$,$v$2$v$,$v$번데기$v$,$v$?$v$,$v$한국, 일본, 중국, 타이완$v$,$v$무궁화, 부용, 복사나무, 사과나무, 자두나무$v$,$v$유충이 주로 무궁화의 잎을 주맥만 남김
8~9월 피해 심, 무궁화 증가로 피해 확산 중$v$,$v$무궁화 주맥만 남김$v$,$v$성충 : 17~21mm, 
날개 암컷-등갈색, 수컷-등적색, 갈색 횡선
유충 : 40mm, 녹색->흑회색, 꼬이다리 후방 돌출
노숙유충은 수피와 보호색$v$,null,null,$v$발생시기 불규칙, 
유충 : 6~9월 까지 관찰 됨
성충 : 5월과 7~9월에 관찰 됨$v$,null,$v$거미류$v$,$v$유충 발생 초기$v$,$v$적용 약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (16,$v$식엽성 해충$v$,$v$나비목$v$,$v$밤나방과(버짐나방아과))$v$,$v$배노랑버짐나방$v$,$v$Trichosea champa (Moore, 1879)$v$,null,null,$v$2$v$,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (17,$v$식엽성 해충$v$,$v$나비목$v$,$v$뿔나방과$v$,$v$철쭉뿔나방$v$,$v$Anacampsis lignaria (Meyrick, 1926)$v$,null,null,null,null,null,null,$v$철쭉$v$,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (18,$v$식엽성 해충$v$,$v$나비목$v$,$v$뿔나방과$v$,$v$향나무뿔나방$v$,$v$Stenolechia bathrodyas Meyrick, 1935$v$,null,null,null,null,null,null,$v$향나무$v$,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (19,$v$식엽성 해충$v$,$v$나비목$v$,$v$산누에나방과$v$,$v$가중나무고치나방$v$,$v$Samia cyinthia
사미아 신티아$v$,null,null,$v$2$v$,$v$번데기$v$,$v$고치속$v$,null,null,null,null,$v$대형나방 갈색이며 앞뒷날개에 회백색의 무늬
어린 유충기에는 담황색->담청녹색
각 환절에 6개씩의 육질 돌기$v$,null,null,$v$2회/년, 번데기로 고치속 월동
우화 : 6월과 8월. 
유충 : 7~8월과 9~10월$v$,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (20,$v$식엽성 해충$v$,$v$나비목$v$,$v$산누에나방과$v$,$v$밤나무산누에나방$v$,$v$칼리귤라 자포니카
Caligula japinica$v$,$v$밤나무, 참나무 등 57종$v$,$v$유충$v$,$v$1$v$,$v$알$v$,$v$줄기의 수피$v$,$v$한국, 일본, 중국, 러시아$v$,$v$밤나무, 참나무류, 느티나무, 벚나무류, 감나무, 단풍나무, 호두나무, 배나무, 사과나무, 은행나무 등 57종$v$,$v$주로 밤나무 피해, 수세 쇠약, 수확 감소
유충이 4~5월 부화 새잎 식해 , 줄기만 앙상$v$,$v$줄기만 남음$v$,$v$성충 : 30, 111(수)~38, 124(암)mm, 대형 나방
         뒷날개 중앙 원형 무늬, 적갈색~암갈색
알 : 2mm, 타원형 회갈색, 단단함
유충 : 5->100mm, 검은색 -> 황록색, 마디 돌기
고치 : 그물 모양, 번데기 41mm$v$,null,null,$v$부화 유충 : 4월 하순 잎 뒷면 집단으로 가해
                3령이후 분산, 
용화 : 6월 하순 잎사이 고치 속
우화 : 9월 하순~10월 중순 출현, 
산란 : 10월 줄기의 하부 또는 가지 분지점 산란$v$,$v$월동기 알덩이 제거,
피해초기 피해 가지, 잎 제거
7, 8월 고치 채집 제거$v$,$v$기생성 : 알(벼룩좀벌류), 유충(고치벌류, 맵시벌류), 번데기(침파리류)
포식성 : 노린재, 개미
조류 : 노란때까치, 까치, 박새, 꾀꼬리, 참새$v$,$v$5~6월(유충 발생기)$v$,$v$적용약제(아세타미프리드)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (21,$v$식엽성 해충$v$,$v$나비목$v$,$v$솔나방과$v$,$v$도토리나무나방$v$,$v$Cyclophragma yamadai 
시클로파라그마 야마다이$v$,null,null,$v$1$v$,$v$알$v$,$v$수피틈$v$,null,null,$v$상수리나무의 해충으로 대형 곤충.
유충털 인체 박혀 염증$v$,null,$v$성충의 몸과 날개는 회백색
수컷 앞날개 중앙부와 끝부분에 흰 무늬
 유충 : 회갈색의 긴 털 다수$v$,null,null,$v$1회/년, 유충 난각위 군서, 야식
6월 하순경 가지->줄기->줄기 밑 ->7월지제부(벌레똥 쌓임)
성충 : 야간에 활동 수피틈 산란$v$,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (22,$v$식엽성 해충$v$,$v$나비목$v$,$v$솔나방과$v$,$v$솔나방$v$,$v$Dendrolimus spectabilis
덴드롤리무스 스펙타빌리스$v$,$v$소나무, 잎갈나무,전남, 솔송나무$v$,$v$유충$v$,$v$1~2$v$,$v$유충(5령)$v$,$v$수피,지피물 밑$v$,$v$한국, 일본, 중국, 타이완, 러시아$v$,$v$소나무, 곰솔, 잣나무, 리기다소나무, 일본잎갈나무, 개잎갈나무, 전나무, 가문비나무, 방크스소나무, 솔송나무 등$v$,$v$소나무의 대표적 소나무 해충(송충이)
유충 섭식량 : 수컷이 약 40m, 암컷이 약 78m
                   (평균 64mm)
월동후의 유충기 95% 피해
묵은잎 식해(고밀도 시 새잎도 가해)
야행성$v$,$v$제주도 수관월동$v$,$v$성충 : 50~68mm(체장 30~40mm), 암컷이 더 큼
         외횡선은 흰색과 검은색 점으로 파도모양
     앞날개 : 암컷 회백색, 암갈색, 검은색
                수컷 적갈색, 흑갈색, 변이 심함
유충 : 담황색 -> 담회황색(70mm), 털이 많음
알 : 2mm, 원형 담적갈색과 청갈색.
번데기  :방추형 갈색,
고치 : 장타원형 황갈색, 표면에 유충의 센털 부착$v$,null,null,$v$월동 : 11월 경 5령 유충 나무껍질 속 지피물아래
         (제주도 수관에서 월동)
월동 유충 : 4월(17도)부터 식해, 8령이됨(320일)
용화 : 7월 산중순 노숙유충 솔잎에 고치속 번데기
우화 산란 : 7월 하순~8월 중순 저녁 시간에 우화
               솔잎에 무더기 산란
부화 유충 : 오전에 부화 알껍질 먹음. 군서 가해
                차츰 분산 가해(폐사유 높은 시기)
8월경 비가 많으면 이듬해 발생량 줄어듬$v$,$v$- 봄철에는 소나무 잎을 가해하고 있는 유충이나 7월초ㆍ중순에 솔잎에 붙어 있는 고치가 쉽게 발견되므로 집게나 나무젓가락으로 잡아 죽인다.
-유충은 낮에 줄기에 한데 모여 정지하고 있는 습성이 있으므로 이들 유충을 포살하는 것도 효과적이다.
- 성충은 주광성이 강하므로 7월 하순~8월 중순까지 성충 우화시기에 유아등이나 유살등으로 유인 포획할 수 있다.$v$,$v$Bt, 조류, 좀벌류, 맵시벌류, 알좀벌류, 기생파리류, 무당벌레, 풀잠자리류,거미류$v$,$v$유충기(2회)
유충 월동기$v$,$v$페니트로티온, Bt, 디풀루벤쥬론, , 펜토에이트
아바멕틴, 클로란트라릴리프롤$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (23,$v$식엽성 해충$v$,$v$나비목$v$,$v$솔나방과$v$,$v$천막벌레나방$v$,$v$Malacosoma neustria
말라코소마 네우스트리아$v$,null,null,$v$1$v$,$v$알$v$,$v$가지에 반지 모양 산란$v$,$v$한국, 유럽, 중국, 러시아, 대만$v$,$v$앵두나무, 자두나무, 벚나무, 복승아$v$,$v$유충 가지의 갈라진 틈 거미줄 천막
때때로 대발생
한나무 다 먹고 옆나무로 이동$v$,null,$v$암수 이색(암 : 담등색, 수 : 황갈색) 갈색 띠
유충 : 몸마디 긴털, 회청색 바탕에 검은색 점$v$,null,null,$v$1회/년, 알 월동
5령기 이후 분산
6월 나뭇가지에 번데기$v$,$v$난괴 가지 채취 소각
분산전 군집 유충(집) 제거 후 소각 또는 매립$v$,$v$맵시벌 : 먹수염납작맵시벌, 황다리납작맵시벌, 그멜린납작맵시벌, 
         송충잡이자루맵시벌, 검정다리꼬리납작맵시벌, 오렌지다리납작맵시벌,
         검정무늬납작맵시벌, 담흑납작맵시벌
좀벌 :  무늬수중다리좀벌
고치벌 :  독나방살이고치벌
파리 : 검정무니기생파리,  긴등기생파리
포식성 : 왕병대벌레, 왕침노린재
포식성 조류  :박새, 찌르레기
병원미생물 보호$v$,$v$유충 발생 초기$v$,$v$등록 약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (24,$v$식엽성 해충$v$,$v$나비목$v$,$v$쐐기나방과$v$,$v$노랑쐐기나방$v$,$v$Monema flavescens
모네마 풀라베스켄스$v$,$v$다양한 수종$v$,$v$유충$v$,$v$1$v$,$v$유충$v$,$v$가지$v$,$v$한국, 일본, 중국, 타이완$v$,$v$감나무, 느릅나무, 단풍나무, 대추나무, 모과나무, 매실나무, 박태기나무, 밤나무, 버드나무류, 벚나무류, 복승아나무, 뽕나무, 포플러류, 유자나무, 장미, 찔레꽃, 참나무류, 해당화, 사과나무, 배나무, 오리나무, 차나무, 배롱나무, 석류 등$v$,$v$어린유충 잎 뒷면에서 잎살, 
노숙유충 잎살만 남김
위생해충(성충 유충의 자모) 염증 유발
유충은 잡식성으로 여러 수종의 잎을 식해
체표면에 자모가 피부에 접촉하면 통증$v$,null,$v$성충 : 28~35mm, 전체적으로 황색. 
        더듬이 : 실 모양 황갈색
        앞날개 : 적갈색, 외연에 2개의 흑갈색 사선
유충 : 24mm, 머리와, 등쪽에 암자색의 무늬
             몸 표면에 자모
고치 : 새알모양, 타원형, 회백색, 흑갈색 무늬$v$,null,null,$v$1회/년, 유충, 고치 속 월동
용화 : 월동유충 5월 고치속 번데기
우화 산란 : 6월, 야간 교미 후 잎에 1~2개씩 산란
유충 : 잎을 시해, 6~7월 가지에 고치 짓고... 
성충 : 밤에만 활동, 주광성 수컷 강, 암컷 약
10월 까지 유충 관찰 됨$v$,$v$유충과 고치가 눈에 띄면 제거하여 죽인다. 수컷이 유아등 또는
유살등에 잘 유인되므로 유인 포살$v$,$v$기생성 : 기생벌류, 맵시벌류, 알좀벌류, 기생파리류, 
포식성 : 거미류와 고치를 쪼아 먹는 조류등의 천적을 보호$v$,$v$유충 발생 초기
(6월)$v$,$v$클로란트라릴리프롤 입상수화제
페니트로티온 유제(50%), 수화제(40%)
 1,000배액을 수관 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (25,$v$식엽성 해충$v$,$v$나비목$v$,$v$알락나방과$v$,$v$노랑털알락나방$v$,$v$Pryeria sinica
프리에리아 시니카$v$,$v$노박,사스레피, 사철, 화살$v$,$v$유충$v$,$v$1$v$,$v$알$v$,$v$가지 위$v$,$v$한국, 일본, 중국, 미국$v$,$v$노박덩굴, 비쭈기나무, 사스레피나무, 사철나무, 줄사철나무, 참빗살나무, 화살나무,$v$,$v$매년 반복 발생 경향, 대발생시 가지만 남김 울타리 기능 상실, 미적가치 상실$v$,$v$뒷면 탈피각,잎철$v$,$v$성충 : 31~33mm, 몸 검은색, 어께 배 등황색 털
         배끝부분 검은색 털 무더기, 입 퇴화
유충 : 20m, 담황색, 흑갈색 세로선 여럿
         흰색 미세한 털$v$,null,null,$v$1회/년, 알, 가지 위 월동
부화 유충 : 새가지 위 집단 가해, 뒷면 탈피각
용화 : 5월 잎철 번데기, 
우화산란 : 10월 우화후 알덩이 산란$v$,$v$흔들어서 낙하하는유충 포살,  피해 잎 채취 소각$v$,null,$v$유충 발생 초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (26,$v$식엽성 해충$v$,$v$나비목$v$,$v$알락나방과$v$,$v$대나무쐐기알락나방$v$,$v$Fuscartona funeralis
푸스카르토나 프네랄리스$v$,$v$대나무, 조릿대$v$,$v$유충$v$,$v$2$v$,$v$전용$v$,$v$잎위(전용)$v$,$v$한국, 일본, 중국$v$,$v$대나무류, 조릿대류$v$,$v$어린유충 잎 뒷면에서 집단 가해- 회백색화
대나무의 주요 해충  병렬 식해
돌발해충, 털독 피부발진$v$,$v$잎살만, 전부$v$,$v$성충 : 10~11mm(23mm), 몸과 날개는 흑색
수컷 뒷날개 기부 반투명(암컷 앞날개 중앙부)
알 : 1mm, 타원형, 담황갈색
유충 : 20mm, 등갈색, 각 마디 검은 모기판과긴털
번데기 : 납작한 긴 타원형, 등갈색$v$,null,null,$v$2회/년, 번데기, 잎위 월동
우화 : 1화기 성충 5~6월,  2화기 7~8월
산란 : 뒷면 무더기 산란
유충 : 집단 잎 뒤 엽육 식해 회백색화
3령이후부터 모조리 식해.
용화 : 잎뒷면, 동맹이 아래  고치를 짓고 용화$v$,$v$집단유충 포살, 소각$v$,$v$공란$v$,$v$유충 발생 초기$v$,$v$페니트로티온 유제(50%) 및 트리클로르폰
수화제(80%) 10일 간격으로 2회 정도 살포한다.$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (27,$v$식엽성 해충$v$,$v$나비목$v$,$v$알락나방과$v$,$v$벚나무모시나방(애)$v$,$v$Elcysma westwoodi
엘씨스마 웨스트우디$v$,$v$벚나무등 장미과$v$,$v$유충$v$,$v$1$v$,$v$유충$v$,$v$지피물$v$,$v$한국, 일본, 중국, 러시아$v$,$v$벚나무류, 메실나무, 복사나무, 사과나무, 살구나무, 자두나무 등$v$,$v$어린유충 : 잎 뒷면 잎살
중령 : 구멍, 종령 모조리 식해
때로 대발생, 곧 새잎 출아, 유충 협오감 유발$v$,$v$잎살만, 전부$v$,$v$성충 : 30~35mm, 60mm, 몸은 검은색
        날개 : 엷은황색 반투명, 뚜렷한 시맥
        제비꼬리모양 돌기, 
유충 : 30mm, 머리 흑갈색 몸은 담황색$v$,null,null,$v$1회/년, 어린유충 지피물 집단월동
9~10월 산란, 부화, 월동처로 이동
불빛 유인$v$,$v$월동 집단유충 포살, 소각
피해 초기 유충 가해 잎 제거 소각$v$,$v$기생성 : 기생벌류, 맵시벌류, 기생파리류
포식성 : 무당벌레, 풀잠자리류, 거미류$v$,$v$유충 발생 초기$v$,$v$등록 약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (28,$v$식엽성 해충$v$,$v$나비목$v$,$v$알락나방과$v$,$v$벚나무알락나방(털)$v$,$v$Leech Illiberis rotundata$v$,null,null,null,null,null,null,$v$벚나무류$v$,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (29,$v$식엽성 해충$v$,$v$나비목$v$,$v$잎말이나방과$v$,$v$매실애기잎말이나방$v$,$v$Rhopobota neavana
로호포보타 네아바나$v$,$v$감탕, 꽝꽝, 쮜똥, 장미과$v$,$v$유충$v$,$v$3~5$v$,$v$알$v$,$v$가지, 줄기$v$,$v$한국, 일본, 중국, 타이완, 인도, 유럽, 북아메리카$v$,$v$감탕나무, 꽝꽝나무, 매실나무, 벚나무류, 배나무, 사과나무, 산사나무, 쥐똥나무, 회양목$v$,$v$유충이 어린 가지의 잎을 여러장 묶어 그 속에서 가해 - 피해잎 갈변으로 경관 해침$v$,$v$잎말이, 철$v$,$v$성충 : 11~16mm, 회갈색 작은 나방
알 : 유백색 또는 등적색의 납작 타원형
유충 : 10mm, 머리 가슴 흑갈색 몸 황갈색 변이
번데기 : 방추형 황갈색$v$,null,null,$v$유충 : 1세대 4월 하순~5월 초순, 이후 세대 10월까지 불규칙 출현
번데기 : 잎말이 안에 고치짖고 용화
7월(2~3세대) 피해증가, 8~9월(3~4세대)피해극심
알 : 잎, 가지 등에 낱개로 산란$v$,$v$피해잎 채취 소각$v$,$v$거미류, 좀벌류, 맵시벌류, 기생파리류$v$,$v$유충 발생 초기$v$,$v$뷰프로페진.에터펜프록스 입상수화제, 클로란트라닐리프롤 입상수화제, 에토벤프록스 유탁제, 페니트로티온 유제 등$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (30,$v$식엽성 해충$v$,$v$나비목$v$,$v$잎말이나방과$v$,$v$소나무순나방$v$,$v$Rhyacionia duplana
리야시오니아 두풀라나$v$,null,null,null,null,null,null,null,$v$• 소나무류의 새가지 속을 가해하여 신초 부위를 고사시킨다.
• 주로 새가지 만을 가해하고 2년생 이상의 가지에는 피해를 주지 않는다.
• 소나무 새가지 속을 가해하는 심식충류가 몇 종 있어 구분이 어렵지만 본 해충의 피해가 비교적 많다.
• 제주도를 비롯한 남부지방에 피해가 심한 경향이다.$v$,null,$v$성충의 앞날개 길이는 7mm내외이며 다갈색이고 외연부는 적등색이다.
• 뒷날개는 앞날개에 비하여 폭이 넓고 암갈색이다.
• 유충의 몸길이는 12mm내외이며 머리와 앞가슴 등판은 엷은 다갈색이고 몸은 등황색이다$v$,null,null,$v$• 연 1회 발생하며 주로 새가지 속에서 번데기로 월동한다.
• 성충은 이른봄인 3월 하순~4월 중순에 나타나 정아, 침엽, 엽초 등에 한개씩 산란한다.
• 알은 20여일 후에 부화하여 눈 또는 새가지 속을 파고 들아가 가해하며 한 새가지에 1마리가 가해하나 간혹 2마리가
가해하는 경우도 있다.
• 6월까지는 새가지 선단부속에서 식해하며 여기에서 송지로 단단한 고치를 만들고 유충태로 여름휴면을 한다.
• 9~10월에 번데기가 되어 월동한다.$v$,$v$약제방제
-성충산란기 및 부화유충기인 4월 초ㆍ중에 약제를 살포하는 것이 좋으나 등록된 약제가 없다.
• 친환경방제
-알을 포식하는 무당벌레류, 풀잠자리류, 거미류 등을 보호한다.
-유충이나 번데기가 들어있는 피해 신초를 채취하여 소각한다.$v$,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (31,$v$식엽성 해충$v$,$v$나비목$v$,$v$자나방과$v$,$v$별박이자나방$v$,$v$Naxa seriaria
낙사 세리아리아$v$,$v$쥐똥, 광, 수수꽃다리, 물프레, 층층나무$v$,$v$유충$v$,$v$1$v$,$v$중령 유충(집단)$v$,$v$가지, 잎$v$,$v$한국, 일본, 중국, 러시아$v$,$v$물푸레나무과(쥐똥나무, 광나무, 물푸레나무, 수수꽃다리), 층층나무과(층층나무)$v$,$v$북규칙 대발생, 
유충이 잎과 가지에 거미줄속에서 군서 가해
피해 부위 가지만 앙상 미관 저해$v$,$v$가지만 남음$v$,$v$성충 : 20mm, 날개 유백색 바탕 흑갈색 작은 점
        날개 가장자리에 2줄의 검은점 테두리
노숙유충 : 6번째 마다에 배다리. 
유충 : 검은색과 담황갈색의 무늬, 머리 검은색
        전반에 흰 자모가 듬성듬성 지저분 느낌$v$,null,null,$v$1회/년,  중령유충, 실크 속에서 월동
월동 유층 : 4월부터 잎을 가해. 
용화 : 5월 거미줄 안에서...
우화 산란 : 6~7월에 우화 잎에 산란, 8월에 부화$v$,$v$노숙 유충이 집단을 이루면서 월동하
므로 발견하면 제거하여 소각하거나 불 솜방
망이로 태운다.$v$,$v$포식성 : 무당벌레류, 풀잠자리류, 응애류, 거미류, 조류를 보호$v$,$v$유충 발생 초기
(4월, 8월)$v$,$v$에토펜프록스 수화제, 아세타미프리드 수화제.
페니트로티온 유제(50%) 또는 델타메스린 유제(1%)
 1,000배액을 1회 살포한다.$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (32,$v$식엽성 해충$v$,$v$나비목$v$,$v$자나방과$v$,$v$줄마디가지나방$v$,$v$Chinasmia cinerearia
치나스미아 치네레아리아$v$,$v$화나무, 조경수$v$,$v$유충$v$,$v$2$v$,$v$번데기$v$,$v$지제부 토양$v$,$v$한국,중국, 타이완$v$,$v$회화나무(가로수, 조경수)$v$,$v$돌발성 대발생 해충
발생 밀도가 높고, 식엽량도 많음.$v$,null,$v$성충 : 30~35mm, 회갈색 날개, 외회선 사각 무늬
알 : 0.5mm, 원형, 백색, 
유충 : 25~30mm(부화 1.2mm), 담녹색$v$,null,null,$v$성충 : 1화기 4월 상순(5상 최성기), 5월 중순 유충
          2화기 7월 상순(7상 최성기), 7월 말 유충
 1세대 기간 47일$v$,$v$포살, 잎채취 소각$v$,null,$v$유충 발생 초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (33,$v$식엽성 해충$v$,$v$나비목$v$,$v$재주나방과$v$,$v$꼬마버들재주나방$v$,$v$Clostera anachoreta
클로스테라 아나초레타$v$,$v$버드나무, 장미과 과수, 갈참나무, 느릅나무$v$,$v$유충$v$,$v$2$v$,$v$번데기$v$,$v$땅속, 지피물$v$,$v$한국, 일본, 중국, 인도$v$,$v$버드나무, 포플러류, 사과나무, 배나무, 산사나무, 갈참나무, 느릅나무 등$v$,$v$어린 유충 잎을 말고 그 속에서 군서 식해
그물모양 식흔, 분산 유충도 잎을 말고 밖으로 나와 식해(버등재주나방과의 차이)$v$,$v$잎철, 그물모양 흔$v$,$v$성충 : 30~40mm, 회갈색, 중실끝 검은 점무늬
         흰색 톱니모양 앞날개 외횡선
알 : 분홍색 -> 적갈색,
유충 : 40mm, 회갈색, 드쪽 회색, 
      배의 1,9절에 검은 돌기, 돌기위 붉운 혹 융기$v$,null,null,$v$1화기 성충 : 6월 중순 출현, 산란(읲 뒷면 무더기)
  노숙유충 잎철 엉성한 고치속 용화
2화기 성충??
  가을 유충이 낙하하여 땅속, 지피물에 고치 용화$v$,$v$집단 유충 포살, 소각$v$,$v$밤나방살이자루맵시벌, 좀별류, 알좀벌류, 기생파리류, 무당벌레류, 풀자자리류, 거미류$v$,$v$유충 발생 초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (34,$v$식엽성 해충$v$,$v$나비목$v$,$v$재주나방과$v$,$v$먹무늬재주나방$v$,$v$Phalera flavescens
팔레라 플라베스켄스$v$,null,null,$v$1$v$,$v$번데기$v$,$v$흙속$v$,null,null,$v$어린유충 군서 식해
가로수 벚나무 대발생 돌발해충
1968년 중부지방, 최근 2017년 제주$v$,null,$v$성충 : 앞날개 회백색, 기부 검은 무늬,  
        외연 초승달무늬 4~5개
        배 : 등면은 황갈색, 복면은 유백색
유충 : 적갈색 -> 흑자색
        마디 중앙부 황백색 긴 털 밀생$v$,null,null,$v$1/년, 번데기, 땅속
부화 유충 잎 뒷면 군서 정열 식해
가지끝부터 식해 -> 기부로 이동
휴식시 앞 뒤 들어올림$v$,$v$군서 피해잎 채취 소각 매몰$v$,$v$기생성 : 기생봉, 맵시벌류, 알좀벌류, 기생파리
포식성 : 무당벌레, 풀잠자리, 거미류$v$,$v$유충 발생 초기$v$,$v$등록 약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (35,$v$식엽성 해충$v$,$v$나비목$v$,$v$재주나방과$v$,$v$버들재주나방$v$,$v$Clostera anastomosis
클로스테라 아나스토모시스$v$,$v$버드나무, 장미과 과수, 갈참나무, 느릅나무$v$,$v$유충$v$,$v$3~4$v$,$v$유충(고치속)$v$,$v$줄기 기부$v$,$v$한국, 일본, 중국, 러시아, 인도, 유럽$v$,$v$포플러류, 버드나무, 참나무류, 느릅나무, 사과나무, 배나무, 산사나무 등$v$,$v$부화 유충 모여서 잎살만 가해-> 분산 잎자루만 남김. 8월 이후 피해 심
유충 섭식량 : 암컷-95㎡, 수컷-60㎡$v$,$v$잎자루만 남김$v$,$v$성충 : 15~20(30~40)mm, 체색-회갈색, 갈색 띠
앞날개- 3줄의 사선 띠, 검은 점무늬, 
유충 : 35mm, 암갈색, 홍(가슴2~3, 배2), 
         흑(배1,9), 황색(배3~7)의 돌기$v$,null,null,$v$1화기 성충 : 5월하순~6월 상순 출현, 산란
                  (읲 뒷면 무더기)
발생이 불규칙 - 각 충태가 혼재 다반사.$v$,$v$집단 유충 포살, 소각$v$,$v$맵시벌(팔점보라, 밤나방살이보라, 산누에살이)$v$,$v$유충 발생 초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (36,$v$식엽성 해충$v$,$v$나비목$v$,$v$재주나방과$v$,$v$참나무재주나방$v$,$v$Phalera assimilis
파할레라 아씨밀리스$v$,$v$밤나무, 참나무류$v$,$v$유충$v$,$v$1$v$,$v$번데기$v$,$v$땅속$v$,$v$한국, 일본, 중국$v$,$v$상수,리나무, 갈참나무, 졸참나무, 밤나무 등$v$,$v$유충이 군서하면서 한가지씩 모조리 식해.
해에 따라 돌발적 대발생.$v$,$v$모조리$v$,$v$성충 : 50~60mm(수), 60~70mm(암), 
         앞날개 끝 황색 무늬 
유충 : 55mm, 체색은 검은색, 등갈색 선, 마디 털$v$,null,null,$v$성충 : 6~8월 출현 잎 뒷면에 무더기로 산란
유충 : 7~10월까지 가해, 최성기는 8~9월
      몸의 끝부분을 드는 습성  ,9월 월동처로 이동$v$,$v$피해잎 제거$v$,$v$기생파리류, 맵시벌류, 알좀벌류,$v$,$v$유충 발생기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (37,$v$식엽성 해충$v$,$v$나비목$v$,$v$주머니나방과$v$,$v$검정주머니나방$v$,$v$Mahasena aurea (Butler, 1881)$v$,null,null,$v$1$v$,$v$유충$v$,null,null,$v$은행나무$v$,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (38,$v$식엽성 해충$v$,$v$나비목$v$,$v$주머니나방과$v$,$v$남방차주머니나방$v$,$v$Eumeta japonica
에우메타 자포니카$v$,$v$상록활엽수, 침엽수$v$,$v$유충$v$,$v$1$v$,$v$유충$v$,$v$주머니속(가지)$v$,$v$한국, 일본, 중국$v$,$v$감나무, 개나리, 밤나무, 버즘나무, 배나무, 참나무류, 금목서, 돈나무, 사철나무, 아왜나무, 홍가시나무, 협죽도, 개잎갈나무, 삼나무, 잣나무, 측백나무, 향나무 등 잡식성$v$,$v$불규칙 대발생 해충, 
광식성, 주머니 형태 유충집 현수 생활
단풍나무 정원수, 조경수
낙엽후 주머니 잔존 경관헤침 
중령이후 피해 심(10월)$v$,null,$v$성충 : 수컷 35mm, 암갈색, 빗살모양 더듬이
         암컷 27~35mm, 날개와 다리 퇴화, 적갈색
유충 : 20~35m, 회갈색 머리 몸은 황갈색
주머니 : 35~50mm, 방추형 표면에 잎 가지 조각$v$,null,null,$v$월동 유충 : 봄 새잎 가해,
용화 : 4월 중순~6월 주머니속
우화 산란 : 5월 하순~8월 상순 우화  암컷 성페로몬 방출 수컷 유인 교미 주머니속 산란
부화 : 6월 하순 7월 상순 부화 주머니 탈출 분산
7~10월 까지 잎을 식해
월동 : 주머니 수직으로 고정 머리는 위로 향함$v$,$v$발생량 적을 때 월동 주머니 채취 제거$v$,$v$기생파리류$v$,$v$유충 발생 초기$v$,$v$적용 약제 살포(피해 미미 화학적 방제 비추천)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (39,$v$식엽성 해충$v$,$v$나비목$v$,$v$주머니나방과$v$,$v$차주머니나방$v$,$v$Eumeta minuscula
에우메타 미누스쿨라$v$,null,null,$v$1$v$,$v$유충$v$,$v$주머니속(가지)$v$,null,null,$v$벚나무 가로수, 정원수, 피해 경
낙엽후 주머니 잔존 경관헤침
주머니집 발견 용이$v$,null,$v$암컷 성충 다리 날개 퇴화(황백색)
노숙유충 : 흑갈색 무늬, 머리 황백색 몸통$v$,null,null,$v$1회/년, 유충, 주머니 속 월동
주머니속 산란, 부화후 바람에 분산
월동시 주머니 수직으로 고정 월동$v$,$v$월동 주머니 채취 제거$v$,$v$기생파리류$v$,null,$v$피해 미미 화학적 방제 비추천$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (40,$v$식엽성 해충$v$,$v$나비목$v$,$v$집나방과$v$,$v$벚나무집나방$v$,$v$Yponomeuta evonymellus (Linnaeus, 1758)$v$,null,null,null,null,null,null,$v$귀룽나무$v$,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (41,$v$식엽성 해충$v$,$v$나비목$v$,$v$집나방과$v$,$v$화살나무집나방$v$,$v$Yponomeuta polystictus (Butler, 1879)$v$,null,null,null,null,null,null,$v$화살나무$v$,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (42,$v$식엽성 해충$v$,$v$나비목$v$,$v$포충나방과$v$,$v$목화명나방$v$,$v$Haritalodes derogata
하리탈로데스 데로가타$v$,$v$무궁화,(벽)오동, 아왜$v$,$v$유충$v$,$v$2~3$v$,$v$유충$v$,null,$v$한국, 일본, 중국, 타이완, 러시아, 인도네시아, 호주$v$,$v$무궁화, 벽오동, 감오동나무, 아왜나무 등$v$,$v$유충이 잎을 말고 속에 거미줄치고 식해
유충 잎살, 노숙 유충 : 잎 전체 , 경관 홰손
유충 피해 극심기 : 8월 하순~9월 중순$v$,$v$잎철(실크) 식엽$v$,$v$성충 : 22~34mm, 머리 황백색, 
유충 : 22mm, 머리 가슴 흑갈색, 몸 담록색
        번데기 직전 분홍색 개체도 있음$v$,null,null,$v$성충 : 1화기 5~6월, 2화기 7월, 3화기 8~9월 출현
산란 : 잎 뒷면 1개씩$v$,$v$저밀도 일때는 손으로 포살, 피해 잎 채취 소각$v$,$v$먹수염납작맵시벌, 가시은주둥이벌, 애꽃노린재류, 갈색주둥이노린재, 주둥이노린재, 흑선두리먼지벌레, 고동배감탕벌 등$v$,$v$월동 유충 가해시기
유충 발생 초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (43,$v$식엽성 해충$v$,$v$나비목$v$,$v$포충나방과$v$,$v$뽕나무명나방$v$,$v$Glyphodes pyloalis
글리포데스 필로알리스$v$,$v$뽕나무$v$,$v$유충$v$,$v$4$v$,$v$유충$v$,$v$가지 사이, 
낙엽 또는 ,잡초$v$,$v$한국, 일본, 중국, 인도, 미얀마, 스리랑카, 남아메리카$v$,$v$뽕나무류$v$,$v$6월 유충 뽕나무류 잎를 접고 안에서 가해 
특히 여름과 가을에 피해 심, 뽕잎만 가해
전정후 2차 생육기(8~9월)에 지속 확산$v$,$v$잎철(실크) 식엽$v$,$v$성충 : 17~18mm, 전연 부근의 백색 무늬 
유충 : 연두색 -> 회녹색, 가슴 배 검은점,$v$,null,null,$v$용화 : 월동 유충이 5월 상순 버데기가 됨
우화 : 5월 중순 출현
산란 : 잎 뒷면의 잎맥에 100~400개 산란$v$,$v$손으로 포살, 잎채취 소각$v$,$v$포식성 천적 : 조류, 거미류
기생성 천적 : 좀벌류, 맵시벌류, 기생파리류,$v$,$v$유충 발생 초기$v$,$v$펜토에이트 유제등 적용약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (44,$v$식엽성 해충$v$,$v$나비목$v$,$v$포충나방과$v$,$v$회양목명나방$v$,$v$Glyphodes perspectalis
글리포데스 퍼르스펙탈리스$v$,$v$화양목$v$,$v$유충$v$,$v$2~3$v$,$v$유충$v$,null,$v$한국, 일본, 중국, 인도$v$,$v$회양목$v$,$v$회양목 단식성
거미줄 잎철 
수년간 피해 반복시 고사$v$,$v$잎철(실크), 잎살$v$,$v$성충 : 20~24mm, 머리 회백색 가슴 배는 은백색
        앞날개 중실 끝 초승달 무늬
알 : 1.3mm, 납작한 둥근모양, 잎에 포개진 모양
유충 : 35mm, 검은머리 배 윗면 양쪽 갈색점무늬 
번데기 : 18mm, 타워형, 연녹색 ->흑갈색$v$,null,null,$v$2회/년, 유충 월동
월동유충 : 4월 하순 출현, 
           6월 이후 피해 심,가해부위에서 번데기 됨
성충 : 1화기 6~7월, 2화기 8월 하순
기온에 따라 빌생시기 불규칙$v$,$v$피해 가지, 잎 포살, 소각$v$,$v$Bt, 핵다각체병바이러스,  페로몬 유인 유살$v$,$v$유충 발생 초기$v$,$v$메티다티온 수화제, 클로르페나피르유제 등 적용약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (45,$v$식엽성 해충$v$,$v$대벌레목$v$,$v$대벌레과$v$,$v$대벌레$v$,$v$Ramulus irregularlterdentatus
라물루스 이레귤라리테르덴타투스$v$,$v$활엽수 광식성$v$,$v$약충, 성충$v$,$v$1$v$,$v$알$v$,$v$땅속$v$,null,null,$v$1990년 이후 대발생, 광식성
피해목 수세약화$v$,null,$v$대나무 모양, 날개 퇴화, 
암컷성충 머리꼭대기 1쌍의 가시
의태, 의태색, 다리 절단, 숫컷 민첩$v$,$v$없음$v$,$v$기주에 따라 변이$v$,$v$1회/년, 알, 땅속
산란시 머리 위쪽 정지 특성
환경에 따라 단위생식,$v$,$v$손으로 잡아 죽임$v$,$v$포식성 : 풀잠자리류, 무당벌레류, 사마귀류, 딱정벌레류, 침노린제류$v$,$v$6월 이전(산란전)$v$,$v$적용 약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (46,$v$식엽성 해충$v$,$v$딱정벌레목$v$,$v$무당벌레과$v$,$v$곱추무당벌레$v$,$v$Epilachna quadricollis
에필라치나 쿼드리콜리스$v$,$v$활엽수$v$,null,$v$1$v$,null,null,$v$한국 , 중국$v$,$v$물푸레나무, 쥐똥나무$v$,$v$잎 뒷면에서 잎살만 가해- 그물모양 회백색 흔
회백색 -> 갈색으로 미관 저해$v$,$v$그물모양 식흔$v$,$v$성충 : 4.2~5.5mm X 3.5~4.3mm 암적색, 
         5쌍 점무늬 4.4.2 배열
유충 : 9mm, 담갈색, 각 마디에 가시털$v$,null,null,$v$성충 : 5월 하순 ~6월 하순 출현
유충 : 7~9월 출현$v$,null,null,$v$발생 초기$v$,$v$적용 약제(델타메트린, 아세타미프리드, 에토펜프록스, 풀록사메타아미드)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (47,$v$식엽성 해충$v$,$v$딱정벌레목$v$,$v$무당벌레과$v$,$v$큰이십팔점박이무당벌레$v$,$v$Henosepilachna bingintioctomaculata
헤노세필라치나 비긴티옥토마쿨라타$v$,$v$구기자나무$v$,$v$유충, 성충$v$,$v$3$v$,$v$성충$v$,null,$v$한국(중부 이북), 일본, 중국, 타이완, 러시아,$v$,$v$구기자나무$v$,$v$잎 뒷면 잎살만 가해 그물모양식흔.
회백색 -> 갈색,  성충의 섭식량 큼$v$,$v$그물모양 식흔$v$,$v$성충 : 암컷 7.2mm, 수컷 6mm 적갈색에 회색 털
         딱지날개에 검은색 28점
알 : 1.5mm 타원형 황백색
유충 : 10mm, 담갈색, 각 마디에 가시털,
         앞가슴 검은색 말굽무늬$v$,null,null,$v$1화기 성충 : 6월 하순~7월
2화기 성충 : 7월 하순~8월 상순
3화기 성충 : 9월 상중순에 우화$v$,$v$기계적방제(성충, 알덩이 채취 소각)$v$,null,$v$4월 (유충기)$v$,$v$카바릴 수화제등 적용 약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (48,$v$식엽성 해충$v$,$v$딱정벌레목$v$,$v$바구미과$v$,$v$느티나무벼룩바구미$v$,$v$Orchestes sanguinipes(활발한)
오르체스테스 산구이니페스$v$,$v$느티나무, 비술나무$v$,$v$유충, 성충$v$,$v$1$v$,$v$성충$v$,$v$토양,지피물, 수피틈$v$,$v$한국, 일본$v$,$v$느티나무, 비술나무$v$,$v$1980년대 처음 발생, 1990년 전국 확산
성충(구멍), 유충(터널) 모두 식엽성, 
피해잎 갈변 미관 저해$v$,null,$v$성충 : 2~3mm, 갈색~흑갈색등 다양, 
         뒷 넓적마디 발달 벼룩처럼 잘 뜀
알 : 0.6mm 장타원형, 투명 유백색
유충 : 4mm, 머리는 암갈색, 유백색$v$,null,null,$v$월동 성충 : 개엽 초기 잎 가해
산란 : 잎 뒷면 주맥에 구멍 산란. 
유충 : 2회 탈피, 조직속 번데기.
신성충 : 5월 출현 가을에 월동처로 이동$v$,$v$끈끈이 트렙(성충)$v$,$v$기생성 : 기생벌류, 포식성 : 노린제류, 
병원성 미생물 : 백강균$v$,$v$월동성충 활동기
신성충 발생시기$v$,$v$이미다클로로프리드 분산성 액제 나무주사
적용 약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (49,$v$식엽성 해충$v$,$v$딱정벌레목$v$,$v$잎벌레과$v$,$v$두점알벼룩잎벌레$v$,$v$Argopistes biplagiatus
아르고피스테스비플라지아투스$v$,$v$참가시, 쥐똥, 이팝 등$v$,$v$유충, 성충$v$,$v$1~2$v$,$v$성충$v$,$v$지피물 밑$v$,$v$한국 , 중국, 일본, 러시아, 타이완$v$,$v$물푸레나무, 딱총나무, 이팝나무, 개회나무, 금목서, 참가시나무, 쥐똥나무, 들정향나무$v$,$v$성충 : 불규칙하게 잎살만 가해
유충 : 잎살 속에서 가해
가해 잎은 암갈색으로 변색 미관 저해$v$,null,$v$성충 : 3~4mm, 머리와 앞가슴 광택 검은색,
        딱지날개 : 광택 검은색과 붉은점 1개씩
알 : 1mm, 담황색 -> 부화 직전 암갈색 
유충 : 4~6mm, 납작 원통형, 몸 흰색, 머리 갈색$v$,null,null,$v$월동 성충 : 5월 출현 새잎불규칙 가해.
산란 : 5월 하순 잎 뒷면
부화 유충 : 잎뒷면 표면 식해 -> 잎살 속 가해
용화 :7월 중순 땅속 1~3cm 깊이
우화 : 신성충 7~9월 잎살만 가해 후 월동처 이동$v$,$v$5월 하순 산란 잎과 유충 피해잎(갈색) 채취 소각$v$,null,$v$피해 초기$v$,$v$적용 약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (50,$v$식엽성 해충$v$,$v$딱정벌레목$v$,$v$잎벌레과$v$,$v$버들잎벌레$v$,$v$Chrysomela vigintipunctata
크리소멜라 비긴티프닉타타$v$,$v$버드나무류$v$,$v$유충, 성충$v$,$v$1$v$,$v$성충$v$,$v$토양, 지피물$v$,$v$한국, 일본, 중국, 타이완, 러시아, 몽골, 인도, 중앙아시아, 유럽$v$,$v$황철나무, 사시나무, 오리나무, 버드나무$v$,$v$성충과 유충이 식엽, 묘목, 어린가지 피해심$v$,$v$묘목, 어린나무$v$,$v$성충 : 6.8~7mm, 몸이 길고 납작. 검은 점무늬형, 남색형 
암수 구분 : 수컷-배끝 검은색, 암컷-황갈색
유충 : 11mm, 황록색에 검은점 줄무늬
알 : 1.5mm, 담황색 반투명$v$,null,null,$v$월동 성충은 4월(15°C) 새잎 가해, 잎 뒷면 산란
4월 하순 부화 유충  잎 뒷면 집단 가해 후 분산
5월 상순 잎 뒷면 꺼꾸로 메달려 번데기(7일)
5~6월 신성충 출현,  8월 월동처로 이동$v$,$v$유충 집단 가해잎 채취 소각, 성충 나무 흔들어 잡기(나무 밑 비닐)$v$,$v$공란$v$,$v$4월 (유충, 성층)$v$,$v$적용 약제(성충 유충 동시 방제)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (51,$v$식엽성 해충$v$,$v$딱정벌레목$v$,$v$잎벌레과$v$,$v$오리나무잎벌레$v$,$v$Agelastica coerulea
아겔라스티카 코에르울레아$v$,$v$오리, 박달, 개암나무$v$,$v$유충, 성충$v$,$v$1$v$,$v$성충$v$,$v$토양,지피물$v$,$v$한국 , 중국, 일본, 러시아, 북아메리카$v$,$v$오리나무류, 박달나무류, 개암나무류$v$,$v$성충 유충 동시 가해, 부정아 발생
수관 아래서 부터 식해 잎살만, 갈변
수년간 피해 고사$v$,$v$잎맥만 남김$v$,$v$성충 : 7mm, 진한 남색,
알 : 1mm, 타원형 노란색 
노숙유충 : 10mm, 광택 검은색, 잔털 드문 드문
번데기 : 5mm, 황색$v$,null,null,$v$월동 성충 : 4월 하순 출현 새잎 잎맥만 남김.
산란 : 5월 중순~6월 하순 잎 뒷면 무더기로
부화 유충 : 잎뒷면 머리 나란히, 성장후 분산 가해
용화 : 6하~7하 땅속 흙집 번데기
우화 : 신성충 7월 중순 가해  8월에 월동처 이동$v$,$v$5~7월 집단 유충 채취 소각,
7월부터 지표면 성충 포살$v$,$v$포식성 : 무당벌레, 포식성 노린제류, 거미류, 조류$v$,$v$유충 발생 초기$v$,$v$트리플루뮤론 수화제, 디플루벤쥬론 수화제, 페니트로티온, 펜발레레이트 수화제, 델타메트린 유제 등$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (52,$v$식엽성 해충$v$,$v$딱정벌레목$v$,$v$잎벌레과$v$,$v$참긴더듬이잎벌레$v$,$v$Pyrrhalta humeralis
피르할타 후메랄리스$v$,$v$활엽수$v$,$v$유충, 성충$v$,$v$1$v$,$v$알$v$,$v$겨울눈, 가지$v$,$v$한국 , 중국, 일본, 러시아$v$,$v$아왜나무, 가막살나무, 분꽃나무, 백당나무, 딱총나무$v$,$v$유충은 잎맥만 남김, 
성충 피해는 7월~8월 상순
피해 잎 적갈색으로 변색 미관 저해$v$,$v$잎맥만 남김$v$,$v$성충 : 6~7mm, 담갈색, 
         검은점-머리 1, 앞가슴 등에 3개
유충 : 10mm, 머리 암갈색, 다리 적갈색, 
         몸 황갈색, 각 마디에 검은 반점
알 : 0.4mm, 둥글고 황백색$v$,null,null,$v$부화 : 4월 중순경 부화하여 새잎을 가해
용화 : 5월 중하순에 낙엽 또는 흙속에서 용화
우화 : 6월 상순에 우화하여 유충과 동시에 가해
산란 : 9월 중순에 가지, 잎자루, 겨울눈 조직$v$,$v$겨울눈 월동란 문질러서, 피해 초기 피해 잎 채취 소각$v$,null,$v$4월(피해 초기)$v$,$v$적용 약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (53,$v$식엽성 해충$v$,$v$딱정벌레목$v$,$v$잎벌레과$v$,$v$호두나무잎벌레$v$,$v$Gastrolina depressa
가스트롤리나 데푸레사$v$,$v$호두나무, 가레나무$v$,$v$유충, 성충$v$,$v$1$v$,$v$성충$v$,$v$수피틈, 낙엽 밑$v$,$v$한국 , 중국, 일본$v$,$v$호두나무, 가래나무$v$,$v$부화 유충 난각 섭식후 집단으로 잎을 가해
2령 유충 분산 가해. 그물모양 잎살만 남음$v$,$v$그물모양 식흔$v$,$v$성충 : 7~8mm, 흑남색, 더듬이 다리 흑색, 
         앞가슴 등판과 앞날개 등황색
         교미전 배가 부풀어 오름(과식), 
1령유충 : 담회색, 2령충 암회색, 노숙유충 10mm
알 : 1.6mm, 타원형 노란색
번데기 : 약 5mm, 잎맥에 메달려있음.$v$,null,null,$v$5월 중순 신성충 출현, 가해 - 휴면 - 잎 뒷면 산란
3령 분산 가해$v$,$v$유충, 번데기 포살 소각
피해잎 채취 소각$v$,$v$포식성 : 남생이무당벌레, 다리무늬침노린제, 거미류, 조류$v$,$v$유충기$v$,$v$적용 약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (54,$v$식엽성 해충$v$,$v$딱정벌레목$v$,$v$풍뎅이과$v$,$v$구리풍뎅이$v$,$v$Anomala cuprea
아노말라 쿠프레아$v$,null,null,$v$1$v$,$v$유충$v$,$v$땅속$v$,null,null,$v$벚나무, 밤나무, 참나무
유충 : 뿌리, 성충 : 잎 식해$v$,null,$v$전신이 구릿빛 타원형
유충 (35mm)로 대형종$v$,null,null,$v$1회/년, 우화 최성기 8월
묘목의 뿌리 식해$v$,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (55,$v$식엽성 해충$v$,$v$딱정벌레목$v$,$v$풍뎅이과$v$,$v$오리나무풍뎅이$v$,$v$Anomala rufocuprea Motschulsky, 1860$v$,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (56,$v$식엽성 해충$v$,$v$딱정벌레목$v$,$v$풍뎅이과$v$,$v$우단풍뎅이류$v$,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (57,$v$식엽성 해충$v$,$v$딱정벌레목$v$,$v$풍뎅이과$v$,$v$주둥무늬차색풍뎅이$v$,$v$Adoretus tenuimaculatus
아도레투스 테누이마쿨라투스$v$,$v$활엽수$v$,$v$성충$v$,$v$1$v$,$v$성충$v$,null,$v$한국, 일본, 중국, 타이완, 인도, 인도네시아$v$,$v$감나무, 귤나무류, 느티나무, 대추나무, 밤나무, 버드나무, 벚나무, 배롱나무, 사과나무, 산돌비나무, 장미, 오리나무, 참나무류, 포도, 호두나무$v$,$v$성충이 잎맥만 남기고 식해
풀밭주위(잔디) 피해 심, 유충 뿌리 가해$v$,$v$지하 뿌리$v$,$v$성충 : 10mm, 짙은 갈색 앞날개 점모양 백색털 
알 : 1.7mm, 유백색
유충 : 굼뱅이 모양, 1령충 : 4mm, 3령충 : 14mm$v$,null,null,$v$1회/년, 성충 월동,
야행성, 5월 하순 흙속 산란
유충 : 6월 상순 부화 부식질 또는 뿌리 가해(34일)
번데기 : 7월 상순,  8월 중순 우화$v$,$v$산란 전 유아등, 유살등 포획$v$,$v$포식성 : 풀잠자리류, 무당벌레류, 검정명주딱정벌레, 파리매$v$,$v$성충 발생초(8월)$v$,$v$등록 약제
유충부화기 : 페니트로티온 토양관주 또는 에스프로포스 입제 토양처리$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (58,$v$식엽성 해충$v$,$v$메뚜기목$v$,$v$여치과$v$,$v$갈색여치$v$,$v$Paratlanticus ussuriensis
파라틸란티쿠스 우스수리엔시스$v$,null,null,null,null,null,null,null,$v$암갈색 또는 흑갈색
앞날개 : 황갈색, 흑색무늬
뒷날개 : 퇴화하여 짧음.
다리 : 가늘고 길며 흑색, 종아리마디 황색$v$,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (59,$v$식엽성 해충$v$,$v$벌목$v$,$v$납작잎벌과$v$,$v$잣나무별납작잎벌$v$,$v$Acantholyda parki
아칸톨리다 파르키$v$,$v$잣나무$v$,$v$유충$v$,$v$1$v$,$v$유충$v$,$v$토양 5~25cm$v$,$v$한국, 일본, 중국$v$,$v$잣나무$v$,$v$1953년 경기도 광릉에서 최초 발견.
섭식량 : 유충 9,500mm(주로 4~5령기)
임목의 생장 감소, 3~4년 계속되면 고사
주로 20년생 이상 된 밀생 임분에 발생
상습 피해비역 : 두더지 밀도 증가(천적)$v$,null,$v$성충 : 14mm, 머리와 가슴 검은색 바당에 노란 무늬, 배와 다리는 황갈색, 배에는 흑갈색 무늬
알 : 3mm정도, 담황흑색,  초승달과 반달의 중간 형태
유충 :  25mm내외, 담황색
번데기 : 17mm 내외이며 위용 형태$v$,null,null,$v$월동 유충 :  5월 하순~7월 중순에 번데기가 된다.
우화 : 6월 중순~8월 상순, 우화 최성기 7월
산란 : 새잎 침엽의 윗쪽에 1~2개씩 산란
유충 : 잎 기부에 실을 토하여 잎을 묶어 집을 짓고 그 속에서 잎을 절단하여 끌어당기면서 섭식
수상의 유충 : 7월 중순~8월 하순에 땅위로 떨어져 흙 속으로 들어가 흙집을 짓고 월동$v$,$v$흙속 유충 : 굴취하여 소각
임내 지표 피복(폴리에틸렌 필름 0.5mm)- 흙속 우화 성충 탈출 방지$v$,$v$알 : 알좀벌류, 유충 : 벼룩좀벌류 
Bt균, 핵다각체병바이러스 살포$v$,$v$유충시기(7~8월$v$,$v$클로르풀루아주론 유제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (60,$v$식엽성 해충$v$,$v$벌목$v$,$v$등에잎벌과$v$,$v$극동등에잎벌$v$,$v$Arge similis
아르게 시밀리스$v$,$v$진달래, 철쭉, 장미$v$,$v$유충$v$,$v$3~4$v$,$v$고치속 유충$v$,$v$토양$v$,$v$한국, 일본, 중국, 타이완$v$,$v$진달래, 철쭉, 장미$v$,$v$유충 : 집단으로 잎맥만 남기고 식해, 
         성숙 분산, 식해량도 급격히 증가
         대발생하면 잎 전체를 식해하여 고사$v$,$v$주맥만 남김$v$,$v$암컷 성충 :  9mm, 감청색 복부는 약간 엷다.
더듬이 사이에는 뚜렷한 Y자 모양
날개는 반투명하고 시맥과 연문은 흑갈색
유충 : 25mm, 머리 검은색 -> 황갈색, 
        몸은 담녹색 (반점) -> 노란색,$v$,null,null,$v$용화 : 봄
성충 : 4월 하순~5월 상순,7월 상순,9월 상순 우화
암컷 성충 :  잎 가장자리 조직 속산란
산란된 곳은 팽대해지고 갈변.(약간 돌출 갈색)
3세대 유충은 10월 상순에 흙 속에서 고치
암컷 성충은 단위생식$v$,$v$피해잎 소각$v$,null,$v$유충 발생 초기(분산 전)$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (61,$v$식엽성 해충$v$,$v$벌목$v$,$v$등에잎벌과$v$,$v$장미등에잎벌$v$,$v$Arge pagana
아르게 파가나$v$,$v$장미, 찔레꽃, 해당화$v$,null,$v$3$v$,$v$유충$v$,$v$토양$v$,$v$한국, 일본, 중국, 몽골, 유럽$v$,$v$장미, 찔레, 해당화$v$,$v$유충 : 집단으로 잎맥만 남기고 식해, 
         신초생장 저해, 조경수 가치 하락$v$,$v$주맥만 남김$v$,$v$성충 : 8mm, 머리 가슴 유광 검은색, 배는 노란색
유충 : 20mm, 머리 검은색, 배는 황록색에 검은점$v$,null,null,$v$5월 1세대 성충 출현, 어린가지 조직속 산란
유충은 가을까지 가해$v$,$v$집단 유충 잎 채취 소각,$v$,null,$v$유충 발생 초기
(분산 전)$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (62,$v$식엽성 해충$v$,$v$벌목$v$,$v$솔잎벌과$v$,$v$솔잎벌$v$,$v$Nesodiprion japonicus
네소디푸리온 자포니쿠스$v$,$v$소나무, 곰솔 잣나무$v$,$v$유충$v$,$v$2~3$v$,null,null,$v$한국, 일본, 중국, 북아메리카$v$,$v$소나무, 곰솔, 방크스소나무, 잣나무 등$v$,$v$유충의 머리가 항상 침엽의 끝방향
섭식량 : 잣나무 13개, 조경수, 모포장 피해
피해 심하면 수목 고사할 수도.$v$,null,$v$성충 : 7~8mm, 체색은 검은색, 가슴 등판 노란색
노숙유충 : 20mm, 광택 녹색, 양끝 담황색
알 : 2.4mm, 바나나 모양 은백색->등황색$v$,null,null,$v$성충 : 4월 하순 ~5월, 9~10월  출현
알 : 솔잎 하나당 1개의 알 70개
유충 : 5~8월(묵은잎), 9~11월(새잎) 출현
번데기 : 1세대 잎사이, 2세대 지면 지피물 고치$v$,$v$피해잎 소각, 흔들어 유충 떨어뜨리기$v$,$v$조류 : 밀화부리, 찌르레기. 좀벌류, 기생파리류, 맵시벌류, 기생파리류, 거미류$v$,$v$유충 발생 초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (63,$v$식엽성 해충$v$,$v$벌목$v$,$v$잎벌과$v$,$v$개나리잎벌$v$,$v$Apareophora forsythiae
아파레오포라 포르시티아에$v$,$v$개나리, 산개나리$v$,$v$유충$v$,$v$1$v$,$v$노숙유충$v$,$v$토양$v$,$v$한국, 일본$v$,$v$개나리 산개나리$v$,$v$유충 무리지어 식해 심하면 줄기만 남김
식재 면적 증가로 피해 중가 추세
잎이 없어져 경관 해침$v$,$v$잎전체$v$,$v$성충  :10mm, 검은색 , 다리 황색(암컷 배 담황색)
노숙유충 : 16mm, 검은색 표면 황갈색 짧은 털$v$,null,null,$v$성충 : 4월 출현, 
산란 : 미성숙 잎의 조직속 1~2줄
유충 : 약 1개월 간 집단 군집 가해
월동 : 땅으로 이동하여 흙집을 짓고 월동$v$,$v$집단가해 피해잎 채취 소각$v$,$v$포식 조류 : 밀화부리, 찌르레기 등$v$,$v$유충 발생 초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (64,$v$식엽성 해충$v$,$v$벌목$v$,$v$잎벌과$v$,$v$남포잎벌$v$,$v$Caliroa carinata
칼리로라 카리나타$v$,$v$신갈나무, 떡갈나무$v$,$v$유충$v$,$v$1$v$,$v$노숙유충$v$,$v$토양$v$,$v$한국, 일본$v$,$v$신갈나무, 떡갈나무$v$,$v$남포지역에서 채집 신종 분류
1996 상주, 2007년 김포등 전국 피해
유충이 잎살만 가해 피해잎 갈변
굴참나무 미가해,$v$,$v$잎살만$v$,$v$암컷 성충 : 4.5mm, 검은색, 
유충 : 20mm, 투명, 녹색 및 갈색 등줄$v$,null,$v$굴참 X$v$,$v$용화 : 월동 유충이 5월 경 땅속
성충 : 6~7월 최성기는 6월, 
알 : 잎 뒷면 잎맥에 1줄로 산란
유충 : 6~ 7월 출현 가해, 7월 월동처로 이동(땅속)$v$,$v$산란 잎 채취 소각, 집단유충 포살$v$,null,$v$유충 발생 초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (65,$v$식엽성 해충$v$,$v$벌목$v$,$v$잎벌과$v$,$v$좀검정잎벌$v$,$v$Macrophya timida
마크로피야 티미다$v$,$v$개나리, 광나무, 쥐똥나무$v$,$v$유충$v$,$v$1$v$,$v$노숙유충(고치)$v$,$v$토양$v$,$v$한국, 일본$v$,$v$개나리, 광나무, 쥐똥나무$v$,$v$가해 흔이 불규칙 원형, 돌발적 대발생
개나리잎벌 대비 늦게 출현
미관 저해$v$,$v$구멍 모양 식흔$v$,$v$성충 : 9mm, 검은색
유충 : 22mm, 두꺼운 밀랍물질로 싸여있음
         머리 황갈색, 몸은 담록색$v$,null,null,$v$월동 : 노숙유충, 용화 : 4월 상~중순, 
우화, 산란 : 4얼 중~하순 
유충 : 5월 상순 부터 식해, 6월하순 월동처로 이동$v$,$v$집단 유충 잎 채취 소각,$v$,null,$v$유충 발생 초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (66,$v$식엽성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$사과혹진디물$v$,$v$Myzus malisuctus$v$,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (67,$v$식엽성해충$v$,$v$벌목$v$,$v$잎벌과$v$,$v$낙엽송잎벌$v$,$v$Pachynematus itoi
파치네마투스 이토이$v$,null,null,$v$3$v$,$v$전용$v$,$v$부식층$v$,null,null,$v$잎갈나무(속) 단식성
국지적 대발생-임분 전체가 잿빛
어린유충 군서 잎 식해-가지만 앙상
3령 유충 분산 가해하 짧은잎을 가해$v$,null,$v$암컷 성충 : 갈색~황갈색, 
날개 : 반투명의 연한갈색 가슴등 3개 흑점
수컷 성충 : 갈색~암갈색.
노숙유충 : 머리 흑갈색, 몸통 흑색~담녹색
번데기 : 유백색.$v$,null,null,$v$3회/년, 번데기, 부식층 월동
성충 : 1화기 5월, 2화기  6월, 3화기  8월. 
유충 : 1~4령 군서, 5령은 흩어져서 가해
특성 : 신초 가해않음, 단발 돌발성.$v$,$v$공란$v$,$v$기생성 : 맵시벌 2종과 북방청벌붙이, 기생봉 및 기생파리류 보호$v$,$v$발생 초기$v$,$v$크로르푸루아주론 유제(5%) 4,000배액을 1회 살포 한다.$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (68,$v$식엽성해충$v$,$v$벌목$v$,$v$잎벌과$v$,$v$누런솔잎벌$v$,$v$Neodiprion sertifera
네오디프리온 서르테페라$v$,null,null,$v$1$v$,$v$알$v$,null,null,null,$v$유충 군서 솔잎을 식해
소나무 유목과 임연부  발생
조경수 및 정원수 단목 심
묵은 잎을 가해함, 피해가 계속되면 고사$v$,null,$v$암컷 성충 : 황갈색. 더듬이 21~24절 소강모.
날개는 투명 암황색 투명
유충 : 담황녹색~검은색, 노숙유충 : 몸은 회자색$v$,null,null,$v$1회/년, 알로 월동
부화 : 4월 ~5월, 2년생 잎 식해
       탈피 암-4회 수-5회
하면 : 5월 유충으로 땅속 고치 5개월.
용화 : 9월
우화  : 10월~11월 
산란 : 솔잎 조직에 일정간격으로 산란$v$,$v$피해목을 흔들면 유충이 떨어지므로 이것을 포살$v$,$v$포식성 : 밀화부리, 찌르레기 등 보호 증식$v$,$v$우화최성기(10월)
유충발생초기(4월)$v$,$v$등록된 약제를 처리$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (69,$v$종실구과류 해충$v$,$v$나비목$v$,$v$명나방과$v$,$v$솔알락명나방$v$,$v$Dioryctria abietella
디오릭트리아 아비에텔라$v$,null,null,$v$1$v$,$v$노숙유충$v$,$v$번데기$v$,null,null,$v$잣송이 가해 중요해충
구과 외부 벌레똥 배출, 신초도 가해$v$,null,$v$성충 : 황갈색 ~적갈색
유충 : 머리 다갈색, 몸은 황갈색$v$,null,null,$v$1회/년, 노숙유충, 땅속 월동(알,유충 구과 월동)
우화 시기 땅속 유충형 : 5~6월, 알형 : 7~9월
2~3일 구과 표피 식해 후 내부 잠입
7월 이후 우화 산란 : 구과 월동(알,우충)$v$,null,null,$v$성충 발생기
(6월)$v$,$v$등록 약제 없음(적용 약제)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (70,$v$종실구과류 해충$v$,$v$나비목$v$,$v$명나방과$v$,$v$큰솔알락명나방$v$,$v$Dioryctria sylvestrella
디오릭트리아 실베스트렐라$v$,null,null,null,null,null,null,null,$v$유충이 소나무류의 새가지, 구과(毬果) 및 줄기를 가해한다.
• 특히 생장히 양호한 중령목 이하의 정아를 주로 가해한다.
• 신초를 고사하게 하여 피해를 받은 나무는 곧게 자라지 못한다.
• 조경수와 정원수 등에서 미관상 보기가 흉하다.
• 피해가 비교적 눈에 잘 띠는 벌레이나 소나무순나방과 곧잘 혼동되기도 한다.$v$,null,$v$성충의 앞날개를 편 길이는 9~12mm내외이며 다갈색이고 희미한 무늬가 있다.
• 유충의 체장은 25mm내외이고 영기별 탈피한 유충들은 탈피할 직후에는 엷은 녹색을 띠나 시간이 경과 할수록 엷은
다갈색으로 변한다.
• 노숙유충의 경우 체색의 변이가 많은 편이다. 번데기는 용화 직후 머리 부분이 짙은 녹색을 띠지만 시간이 지날수록
갈색으로 변한다.$v$,null,null,$v$연 1회 발생하며 가해 부위 내에서 유충으로 월동하여 5~6월에 번데기가 된다.
• 성충은 6~7월에 우화하여 새가지나 구과에 1개씩 산란하며 산란수는 20~30개이다.
• 알기간은 5~10일이며 부화유충은 표피를 뚫고 들어가 표피 밑을 식해 하다가 성장하면 중심부로 들어간다.
• 남부지방에서는 연 2회 발생하기도 한다.$v$,$v$약제방제
-부화유충기인 6월에 약제처리를 하면 효과적이나 등록된 약제가 없다.
• 친환경방제
-구과나 새가지에 산란한 알을 포식하는 무당벌레류, 풀잠자리류, 거미류, 포식성 천적을 보호한다.
-페로몬 트랩을 이용하여 수컷성충을 포획하여 성충 밀도를 감소시킨다.
-피해부위를 유충이나 번데기를 함께 채취하여 소각한다.$v$,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (71,$v$종실구과류 해충$v$,$v$나비목$v$,$v$잎말이나방과$v$,$v$대추애기잎말이나방$v$,$v$안실리스 사티바$v$,$v$대추나무, 헛개나무$v$,$v$유충$v$,$v$3$v$,$v$번데기$v$,null,null,null,null,$v$잎, 과실$v$,$v$날개끝 뽀족(접은상태)$v$,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (72,$v$종실구과류 해충$v$,$v$나비목$v$,$v$잎말이나방과$v$,$v$백송애기잎말이나방$v$,$v$Gravitarmata margarotana
그라비타르마타 마르가로타나$v$,null,null,$v$1$v$,$v$번데기$v$,$v$땅속$v$,null,null,$v$5~6월 피해 심, 유충이 구과나 신초 가해
대발생시 구과 70% 피해 고사 위축
주기와 연결부(과경) 가해$v$,null,$v$성충 : 갈색바탕에 진한 갈색 무늬
유충 : 머리 다갈색, 몸 적갈색$v$,null,null,$v$1회/년, 번데기, 땅속 월동
우화 최성기 : 5월상순, 산란 구과 술잎 인편 틈
유충 긱성 : 구과나 신초의 표피, 과육, 줄기
노숙유충 5~6월 땅속에서 고치 번데기$v$,$v$잣 수확시 피해구과  분리 소각$v$,null,$v$우화 최성기
(6월)$v$,$v$등록 약제 없음(적용 약제)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (73,$v$종실구과류 해충$v$,$v$나비목$v$,$v$포충나방과$v$,$v$복숭아명나방$v$,$v$Conogethes punctiferalis
코노게테스 푸닉티페랄리스$v$,$v$침엽수(잣)/활엽수(밤)$v$,$v$유충$v$,$v$2~3$v$,$v$유충$v$,$v$벌레주머니/수피틈$v$,null,null,$v$잣나무 구과, 밤나무 종실 피해 심
수확 밤 종실 천공은 복승아명나방 천공
조생종 밤 피해(3화기에 의한 만생종 피해)$v$,$v$배설물 구과 종실에 부착$v$,$v$성충 : 등갈색을 띈 황색, 전신 20여개 검은점
유충 : 흑갈색 머리, 등면은 어두운 붉은색
가시털 기판 : 앞가슴에서만 검은색$v$,null,null,$v$2~3회/년, 우충, 수피틈 월동, 5월 활동 개시
우화 : 1화기 6~7월, 2화기 8~9월
유충 신초에 실크하우스 똥벽$v$,$v$피해 종실 구과 소각 매립, 
성페르몬(5~6개/ha) 1.5m높이 설치  유인 포살,$v$,$v$Bt균, 핵다각체 바이러스 포살$v$,$v$성충우화시기$v$,$v$소나무 : 등록된 약제
밤나무 : 페니트로티온 유제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (74,$v$종실구과류 해충$v$,$v$딱정벌레목$v$,$v$거위벌레과$v$,$v$왕거위벌레$v$,$v$Paracycnotrachelus chinensis
파라식노트라첼루스 시넨시스$v$,null,null,null,null,null,null,null,$v$상수리나무, 갈참나무, 떡갈나무, 신갈나무$v$,null,$v$체색은 적갈색,날개는 적색에 가깝다.  
주둥이의 길이는 폭의 2배가 되지 않는다.$v$,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (75,$v$종실구과류 해충$v$,$v$딱정벌레목$v$,$v$바구미과$v$,$v$밤바구미$v$,$v$Curculio sikkimensis
쿠에르쿨리오 식키멘시스$v$,$v$밤, 참, 가시나무류$v$,$v$유충$v$,$v$1(0.5)$v$,$v$노숙유충$v$,$v$토양$v$,null,null,$v$참나무류 종실 가해 침입흔 없음
과육에 산란 부하 가해, 배설물 배출 않음
중.만생종 피해 심. 송이 가시밀도와 반비례$v$,$v$종실 부화 가해$v$,$v$성충 : 짙은 갈색, 전신에 화황색 비늘털 밀생
날개 : 불규칙 담갈색 무늬 회황색 가로 띠
노숙 유충 : 갈색 머리 유백색 가슴,배$v$,null,null,$v$1회/년, 노숙유충, 땅속(30cm) 흙집  월동
용화 : 7월 땅속 , 우화 : 8월 땅속. 최성기 9월
땅속 탈출 종실에 산란(과육과 종피 사이) 
부화 유충 : 과육 식해, 9~11월 월동처로 이동$v$,null,null,$v$산란기
성층 우화기
수확 종실$v$,$v$제타사이퍼메트린 분제, 뷰프로페진.페노뷰카브 분제, 수관살포
디노테퓨란 입상수화제 등 살포
포스핀 훈증제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (76,$v$종실구과류 해충$v$,$v$딱정벌레목$v$,$v$주둥이거위벌레과$v$,$v$도토리거위벌레$v$,$v$Cyllorhynchites ursulus
클로르힌치테스 우레술루스$v$,$v$참나무류$v$,$v$성충$v$,$v$1$v$,$v$노숙유충$v$,null,null,null,$v$참나무류 종실 가해 ,경관 저해 해충
7월 암컷 성충 도토리에 천공 
산란 후 가지 절단 낙하(암컷 독자적)
부화 유충은 도토리 과육 섭식$v$,$v$도토리 즙액/산란$v$,$v$성충 : 광택 검은색~암갈색, 나개에 회황색 털
가늘고 긴 주둥이(날개길이) 검은색, 
노숙 유충 ; 유백색$v$,null,null,$v$1회/년, 유충, 땅속 월동, 5월 용화, 
우화 : 6~9월, 최성기 8월, 우화후 1달 섭식활동
산란전 가지 일부 절단 산란후 완전 절단 낙하
부화 유충 20일 섭식후 탈출 월동처로 이동$v$,$v$낙하 도토리 소각, 유아등 유인 포살$v$,null,$v$성충우화시기$v$,$v$적용약제살포 2~3회$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (77,$v$천공성 해충$v$,$v$나비목$v$,$v$박쥐나방과$v$,$v$박쥐나방$v$,$v$Endoclyta excrescens
엔도클리타 엑스크레스켄스$v$,$v$활엽수/침엽수(편백)$v$,$v$유충$v$,$v$1$v$,$v$알/유충$v$,$v$지표면/갱도$v$,null,null,$v$다양한 수종을 가해
어린유충은 초존류 가해 -> 나무로 이동
수피와 목질부 가해, 가해부 목설 묶어둠
강풍에 의해 줄기나 가지 부러짐$v$,$v$어린유충 : 초본류$v$,$v$성충 : 몸과 앞날개 갈색 황백색 반문
        뒷날개 암갈색 뒷면은 회갈색. 
        입 퇴화. 가늘고 긴 몸$v$,null,null,$v$1회/1~2년, 편차(수종,지역), 알, 지표면 월동
2년일경우 갱도에서 유충으로 월동
저녁 활동 특성으로 박쥐나방이라 명명$v$,$v$임내 풀깍기, 철사로 창살, 수간 끈끈이 트랩 고사목 제거 소각$v$,$v$각종 조류 보호$v$,$v$어린 유충기
(5월)$v$,$v$등록 약제 살포, 토양 살란제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (78,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$긴나무좀아과$v$,$v$광릉긴나무좀$v$,$v$풀라티프스 코리오엔시스$v$,$v$참나무류, 서어나무$v$,$v$유충,성충$v$,$v$1$v$,$v$노숙유충$v$,$v$줄기$v$,null,null,$v$신갈나무, 서어나무 등
쇠약목, 30cm 이상 대경목 목질부 가해
2004년 성남에서 발생
참나무시들음병 병원체매개(Raffaelea spp)$v$,$v$목질부 천공$v$,$v$쇠약목, 대경급 나무$v$,$v$목설배출$v$,$v$참나무시들음병 매개$v$,$v$1회/년, 유충, 줄기에서 월동(일부 성충, 번데기)
5월 중순 성충 탈출, 최성기 6월 중순
부화유층 분지공 형성후 암브로시아 균식$v$,$v$피해목 또는 가지 제거 훈증, (1m, 메탐소듐, 1주일 이상)
끈끈이롤트랩, 페로몬 트랩, 유인목설치(에탄올),$v$,$v$딱따구리$v$,$v$우화 최성기$v$,$v$페니트로티온 유제 침입공에 주입(주사기)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (79,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$나무좀과$v$,$v$가문비나무좀$v$,$v$Polygraphus subopacus 
폴리그라푸스 서보파쿠스$v$,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (80,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$나무좀과$v$,$v$가문비왕나무좀$v$,$v$Xyleborus validus
자일레보루스 말라두스$v$,null,null,null,null,null,null,null,$v$기주 범위가 광범위하여 각종 침엽수, 활엽수를 가해한다.
• 목질부로 침입하여 갱도 내에 암브로시아균을 배양하기 때문에 수세가 현저하게 쇠약 되어 수목이 고사되는 경우도
있다.$v$,null,$v$암컷의 몸길이는 4mm 내외이고 장타원형이며
체색은 광택이 있는 검은색 내지 흑갈색이다.
• 입, 촉각, 다리는 적갈색이고 몸 표면에 황색의
털이 드문드문 나 있다.
• 수컷의 몸길이는 약 2.7mm이고 체색은
황갈색이다.$v$,null,null,$v$연 1~2회 발생하여, 성충으로 월동한다.
• 목질부에서 월동한 성충이 5~6월에 출현하여
목질부 속으로 뚫고 들어간다.
• 모갱은 수평이며 2~3개의 분기 모갱을 만들고 먹이인
암브로시아균을 배양한다.
• 산란은 모갱 안에서 하며, 부화한
유충은 짧은 유충갱을 만들고 그
속에서 암브로시아균을 먹고 성장하여 번데기가 된다.
• 우화한 성충은 모갱 내에서 월동한 후, 이듬해 탈출공을 만들지 않고 어미의 침입공으로 탈출한다.$v$,$v$약제방제
-배설물이 분출된 침입공에 살충제를 주입하면 효과적이나 등록된 약제가 없다.
• 친환경방제
-유충에 기생하는 기생봉류, 맵시벌류, 기생파리류 등을 보호한다.
-딱따구리류 및 해충을 잡아먹는 각종 조류를 보호한다.
-죽은 가지나 고사목은 겨울에 제거하여 번식처를 없애준다.
-쇠약한 나무에 주로 기생하는 해충이므로 건전한 나무로 관리한다.
-피해목 또는 고사목 내에서 월동중인 성충을 4월 이전에 제거하여 소각한다$v$,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (81,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$나무좀과$v$,$v$솔여섯가시나무좀$v$,$v$Ips acuminatus
잎스 아쿠미나투스$v$,null,null,null,null,null,null,null,$v$쇠약목이나 상해목의 수간부나 가지부분의 나무껍질 밑으로 천공한다.
• 벌채하여 방치한 간벌목, 한냉지의 산불 피해목이나 설해목에서 번식하여 서식수를 높여 다음 세대 성충이 살아있는
나무를 공격하여 천공해 들어간 구멍에서 수지가 흘러나오는 경우가 있다. 2010년 경북 영양에서 발생이 확인되었다.
※ 생활주변 소나무류에서는 피해 사례가 아직 없다.$v$,null,$v$성충의 몸길이는 3.1mm 내외로 원통형이며, 적갈색 내지 흑갈색이다.
• 몸 표면에 긴 털이 드문드문 나 있다.
• 더듬이의 중간은 5마디이고, 곤봉부는 가운데에 볼록한 2개의 물결모양 가로주름이 있다.
• 앞가슴등판은 작은 기와무늬 조각이 빽빽하게 있으며, 후반부에는 점각이 있다.
• 앞날개의 경사면은 비스듬하게 잘리면서 광택이 나고, 약간 일그러진 원형으로 중앙부분이 오목하며, 뒷 가장자리
근처에서 뒤집힌다.
• 경사면의 양 옆에는 3개의 치상돌기가 나 있다. 수컷의 3번째 이는 크고 끝에서 두 갈래진다.
• 식흔은 복잡한 세로 갱도 내지 방사상 갱도이다. 모갱의 길이는 8~10cm이다.$v$,null,null,$v$성충은 연 1~2회 발생하며, 1회째는 5월경이다.
• 수컷은 먹이가 되는 나무를 천공하여 마름모꼴의 교미실을 만들고, 이어서 식흔을 따라 들어 온 여러 마리의 암컷과 함께
일부다처성의 준사회 생활을 영위한다.
• 교미를 끝낸 암컷은 교미실에서 각각 안쪽 나무껍질보다 변재부로 깊게 모갱을 만들고, 양쪽 벽에 약 20~40개의 알을
낳는다.
• 모갱은 곧은 것, 구부러져 갈라진 것 등 여러 형태이며, 옆에 것과 합쳐진 것도 있다.
• 유충은 모갱에서 안쪽 나무껍질을 먹어 나가며 갱도를 형성하고, 끝에서 번데기 방을 만들어 번데기가 된다.
• 우화한 성충은 각각 나무껍질에 탈출공을 뚫어 탈출한다.$v$,$v$약제방제
- 성충이 출현하는 5월에 약제를 살포하거나, 침입공에 주사기로 살충제를 주입하면 효과가 있으나 등록된 약제가 없다.
• 친환경방제
-유충에 기생하는 기생봉류, 맵시벌류, 기생파리류 등을 보호한다.
-딱따구리류 및 해충을 잡아먹는 각종 조류를 보호한다.$v$,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (82,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$나무좀아과$v$,$v$소나무좀$v$,null,$v$소나무속$v$,$v$성충,유충$v$,$v$1$v$,$v$성충$v$,$v$지재부근처$v$,null,null,$v$수세가 쇠약한 벌목, 고사목에 기생
   (대발생시 건전목 가해 고사)
부화한 유충이 수피 밑을 식해한다.
후식 피해 : 신성충이 새가지를 뚫고 들어가 새가지가 구부러져 고사$v$,$v$소나무$v$,$v$성충 : 광택 암갈색~검은색, 회색의 털
촉각의 선단이 계란형,4절
등쪽에 점각, 중앙에는 매끈 광택 종선
앞날개 : 점각, 돌기와 억센 털
유충은 유백색으로 몸길이는 3mm정도
배쪽은 C자 모양으로 구부러져 있다.
야외에서 식흔의 모양으로 구분$v$,$v$수피박리$v$,null,$v$연 1회 발생하며 성충으로 월동한다.
• 봄과(유충) 여름(신성충) 두 번 가해한다.
• 지제부의 수피 틈에서 월동한 성충의 3월말∼4월쇠약목 수피에 구멍을 뚫고 침입한다.
• 암컷 성충이 먼저 천공하고 들어가면 수컷이 따라 들어가 교미를 한다.
• 교미를 끝낸 암컷은 밑에서 위로 10cm가량의 갱도를 뚫고 갱도 양측에 약 60개의 알 산란
• 부화한 유충은 갱도와 직각 방향으로 내수피를 파먹어 들어가면서 유충 갱도를 형성한다.
• 유충기간은 약20일이고 2회 탈피한다.
• 유충은 5월 하순경에 갱도 끝에 타원형의 번데기집을 만들고 목질 섬유로 둘러 싼 후 그 속에서 번데기가 되며
번데기기간은 16~20일이다.
• 신 성충은 6월 초부터 수피에 원형의 구멍을 뚫고 나와 가해 수종으로 이동하여 1년생 새가지 속을 위쪽으로 가해하다가
늦가을에 가해수종의 지제부 수피 틈에서 월동한다.$v$,$v$암컷 먼저 침입
3월 하순~4월 중순에 살포하거나, 침입공에 주사기로 살충제를 주입하면 효과적이나 등록된 약제는 없다.
-수출입 목재 훈증용으로 포스핀 훈증제가 등록되어 있다.
• 친환경방제
-소나무좀 유충에 기생하는 기생봉류, 맵시벌류, 기생파리류를 보호한다.
-딱따구리류 및 해충을 잡아먹는 각종 조류를 보호한다
-수세 쇠약목을 주로 가해하기 때문에 수세를 강화시키는 것이 가장 좋은 예방법이다.
-수세가 쇠약한 나무는 미리 제거하고 원목과 침적은 5월 이전에 수피를 벗겨 번식처를 없앤다.
-숲 가꾸기 지역 내 벌채목을 제거하여 6월에 신성충의 후식 피해를 막는다.
- 1~2월중에 벌채된 소나무 원목을 1m가량 잘라 2월 말에 임내에 세워 유인산란시킨 후 이것을 수집하여 소각한다.$v$,$v$후식피해 : 소간 상부, 정아지$v$,null,$v$포스핀$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (83,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$나무좀아과$v$,$v$앞털뭉뚝나무좀$v$,$v$스콜리투스 프론탈리스$v$,$v$느티나무$v$,$v$유충,성충$v$,$v$1$v$,$v$번데기$v$,$v$피해목 내부$v$,null,null,null,$v$인피부, 목질부 천공$v$,$v$피해목고사$v$,$v$침입공 수액 누출$v$,null,null,$v$피해목 제거 소각(8mm),$v$,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (84,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$나무좀아과$v$,$v$오리나무좀$v$,$v$Xylosandrus germanus
자일로산두르스 게르마누스$v$,$v$오리나무,활엽수/침엽수$v$,$v$성충$v$,$v$2~3$v$,$v$성충$v$,null,null,null,$v$가시나무류 오리나무 등 가해 잡식성
수세가 약한 쇠약목, 이식목, 생리적 피해목 등 가해$v$,$v$밤나무 대발생$v$,$v$암컷 :  짧은 원통형 광택 흑갈색 ~ 검은색
촉각과 다리는 황갈색, 몸표면에 드문드문 털
수컷 : 납작한 장타원형 황갈색$v$,$v$외부목설$v$,null,$v$2회/년, 성충 월동
4~5월에 줄기천공 침입, 벌레똥 배출 발견용이
산란 : 갱도 끝부분에 무더기, 암브로시아균식
6~7월 우화, 교미후 암컷 탈출$v$,$v$번식처인 피해목과 고사목을 제거 하거나 소각한다. 침입공에 페니트로티온 유제(50%) 또는,
펜토에이트 유제(47.5%) 500배액을 수간이 흠뻑 젖도록 살포하거나, 50배액으로 주사기를
이용하여 침입공에 주입한다$v$,null,$v$침입공$v$,$v$페니트로티온 유제(50%) 또는, 펜토에이트 유제(47.5%) 
500배액 살포하거나, 50배액으로  침입공에 주입$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (85,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$바구미과$v$,$v$노랑점바구미$v$,$v$Pissodes obscurus
피쏘데스 오브스쿠르스$v$,null,null,null,null,null,null,null,$v$소나무 쇠약목이나 벌채원목의 형성층과 목질부 표면을 가해하는 2차 천공성 해충이다.$v$,null,$v$성충의 몸길이가 6~8mm로서 윗날개의 전횡대의 제4간 실에 점상무늬가 있다.
• 노숙유충의 몸길이는 12mm 정도이고 유백색이다$v$,null,null,$v$5월 중순~6월 상순에 우화한다.
• 신성충은 새 가지에서 주둥이를 꽂고 수액을 흡즙하고,
9~10월에 원목이나 쇠약목에 모여 수피가 얇은
부분에 산란한다.
• 10월 상순까지 산란한 것은 약 1개월 후에 번데기
집을 만들고 그 속에서 월동하나 그 이후에 산란한
것은 수피 밑에서 유충으로 월동한다.
• 어느 충태로 월동하던지 성충우화시기에는 차이가
없는 것으로 알려져 있다.$v$,$v$약제방제
-성충 활동시기인 5월 하순~6월 상순에 살충제를 처리하면 효과저이나 등록된 약제가 없다.
• 친환경방제
-유충에 기생하는 기생봉류, 맵시벌류, 기생파리류 등을 보호한다.
-딱따구리류 및 해충을 잡아먹는 각종 조류를 보호한다.
-전년도 가을이나 겨울에 벌채한 원목을 유인목으로 사용하여 우화되기 전인 4월 하순까지 수거하여 소각한다.
-산란 최성기인 9~10월에 방충망을 씌워 산란을 예방한다.$v$,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (86,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$바구미과$v$,$v$소나무흰점바구미$v$,$v$Shirahoshizo rufescens
시라호스히조 루페스켄스$v$,null,null,null,null,null,null,null,$v$고사목, 벌도목, 벌근, 수세 쇠약목에 기생한다.
• 유충이 수피 밑을 가해하므로 기생을 당한 나무는 수세가 급속히 쇠약해져 잎이 누렇게 변하고 피해가 진전되면 잎이
갈변되어 나무가 죽는다.
• 여름에는 성충이 새가지를 식해하는데 대발생할 때는 피해가 크다.$v$,null,$v$성충의 몸길이는 4.5~8mm이고 체색은 암갈색내지 검은색이다.
• 체표면은 갈색의 인편으로 덮여 있고 머리와 가슴, 배에는 검은색의 인편이 있다.
• 몸 아래, 양 눈 사이, 가슴 등 쪽의 정 중앙선 앞뒤, 날개의 기부와 중앙 뒤쪽에 백색의 인편으로 된 무늬가 있다.
• 날개의 옆에는 담색의 인편을 가지고 있다.
• 알은 둥근형으로 직경이 0.4mm 가량 된다.
• 유충의 몸길이는 약 12mm, 몸 색은 머리는 적갈색, 몸통은 황백색이며 다리가 없고 배 쪽으로 굽어져 있다$v$,null,null,$v$연 1회 발생하며 성충으로 월동하나 때때로 번데기로 월동하는 개체도 있다.
• 수피 틈, 지피물 밑에서 월동한 성충은 4월중·하순경에 출현하여 줄기의 두꺼운 수피 밑에 산란한다.
• 변재부를 식해하며 성장한 유충은 7월 중순경에 수피 밑에 말굽모양의 번데기집을 만들고 번데기가 된다.
• 신성충은 7월 하순~11월 상순에 직경 3mm 정도의 원형의 탈출 공을 만들고 탈출하며 일찍 탈출한 성충은 산란을
하기도 하나 대부분의 개체는 다음해 봄에 산란을 시작한다.
• 성충 출현기간이 길기 때문에 쇠약목이나 고사목의 수피를 벗기면 성충, 유충, 번데기의 각 충태를 동시에 볼 수 있다.$v$,null,$v$71
Insect pests of urban trees and shrubs 소나무류 해충
• 친환경방제
- 유충에 기생하는 기생봉류, 맵시벌류, 기생파리류
등을 보호한다.
- 딱따구리류 및 해충을 잡아먹는 각종 조류를
보호한다
- 건전한 나무에는 기생하지 않으므로 나무의 수세를
강하게 해 주는 것이 가장 최선의 방제법이다.
- 수세 쇠약목이나 고사목을 장기간 방치해 두는 것은
번식처가 되므로 조기에 벌목, 수피를 벗겨 유충을
포살한다.$v$,null,$v$약제방제
-성충의 구제와 산란 예방 수단으로 4월 중순에 약제를 살포하는 것이 효과적이나 등록된 약제가 없다.
- 잎을 가해하는 식엽성 해충이나 수액을 흡즙하는 진딧물류, 응애류를 방제하기 위해 살포하는 약제에 의해 간접
예방이 된다$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (87,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$바구미과$v$,$v$왕바구미$v$,$v$Sipalinus gigas gigas
시팔리누스 기가스 기가스$v$,null,null,null,null,null,null,null,$v$바구미 중 가장 큰 종류로서 크기에 많은 변이가 있다.
• 수세 쇠약목, 벌채된 원목에 피해가 많으며 유충이 목질부를 파먹어 들어가 목재의 질을 저하시킨다.
• 외부로 톱밥 같은 것을 배출하므로 피해 식별이 쉽다.
• 소나무류에서 주로 나무줄기의 하단 부위에 피해가 많다.
• 소나무류에서 성충 우화 탈출구멍이 하늘소의 탈출구멍과 크기와 형태가 유사하다.
• 소나무류 뿐만 아니라 편백, 삼나무, 전나무, 가문비나무, 종비나무, 밤나무, 참나무류, 버드나무류 등에도 피해를 준다.$v$,null,$v$성충의 몸길이는 13mm 내외이다.
• 체색은 검은색으로 회갈색의 가루 같은 것으로 덮여 있다.$v$,null,null,$v$연 1회 발생하며 성충으로 월동한다.
• 성충은 4~5월경에 출현하여 쇠약목, 원목 또는 침적목에 산란한다.$v$,$v$약제방제
- 피해 초기인 4월에 나무줄기에 약제를 살포하거나, 침입공에 주사기로 약제를 직접 주입하면 효과적이나 등록된
약제가 없다.
• 친환경방제
-딱따구리와 같은 조류를 보호한다.
-성충이 불빛에 잘 유인되므로 유아등이나 유살등을 이용하여 포획한다.
-구멍에 철사 등을 이용하여 유충을 찔러 죽인다.$v$,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (88,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$유리나방과$v$,$v$밤나무장수유리나방$v$,$v$Scasiba rhynchioides$v$,null,null,null,null,null,null,$v$대왕참나무,누부라참나무, 밤나무$v$,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (89,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$유리나방과$v$,$v$복숭아유리나방$v$,$v$Synanthedon bicingulata
시난테돈 비신귤라타$v$,$v$장미과수목$v$,$v$유충$v$,$v$1$v$,$v$유충$v$,$v$가해부위$v$,null,$v$벚나무류$v$,null,$v$형성층 식해$v$,$v$성충 : 흑자색, 배 황색 띠 2줄, 배끝 털무더기
투명 날개, 시맥과 날개끝 검은색
노숙유충 : 머리 황갈색, 몸 담황색
번데기 : 황갈색$v$,null,null,$v$1회/년, 유충, 가해부위 월동 우화 시기 6,8월
우화시 몸의 절반을 수피박으로 노출 우화
성충 : 주행성 암컷 강한페로몬 발산,
오후시간 교미후 수피틈에 산란$v$,$v$철사 창살, 피해목 제거 소각,$v$,$v$페르몬 트랩 성충 유살$v$,$v$성충발생 초기$v$,$v$사이안트라릴리프 수화제, 비스트리풀루론.풀루벤디아마이드 액상수화제, 클로란트라릴리프롤 입산수화제, 풀루벤디아마이드 액상수화제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (90,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$하늘소과$v$,$v$버들하늘소$v$,$v$Aegosoma sinicum sinicum White$v$,null,null,$v$1/2~3년$v$,$v$유충$v$,$v$기주의 줄기$v$,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (91,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$하늘소과$v$,$v$벚나무사향하늘소$v$,$v$Aromia bungi
아로미아 분지$v$,$v$벚나무속(버드나무)$v$,$v$유충$v$,$v$1/2년$v$,$v$유충$v$,$v$기주의 줄기$v$,null,null,$v$쇠약목 노거수를 주로 가해, 피해 증가 추세
유충 배설물로 발견 용이
유충 갱도형성 과실 낙과
벚나무 조경수 가로수 피해 심$v$,$v$가루목설$v$,$v$성충 : 남색을 머금은 윤택 검은색
         앞가슴 선홍색 띠
유충 : 갈색 머리 유백색 몸색깔(미인)$v$,null,null,null,$v$즉시 잡아 죽임
피해목 고사목 제거, 철사포살,    수지 누출시 6월 이전에 끈끈이트설치, 기피제$v$,$v$각종 조류 보호
수세 강화$v$,$v$성충 우화기$v$,$v$등록 약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (92,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$하늘소과$v$,$v$북방수염하늘소$v$,$v$Monochamus saltuarius
모노차무스 살투아리우스$v$,$v$곰솔, 잣나무, 잎갈나무,전나무$v$,$v$유충,성충$v$,$v$1(2)$v$,$v$유충$v$,$v$피해목$v$,null,null,$v$잣나무림에서 소나무재선충 매개
수피 밑 유충이 형성층과 목질부를 식해 
쇠약목, 고사목에 산란, 건전목 산란 않음
수피와 목질부 사이 1㎝내외의 목설$v$,$v$형성층, 목질부 갉아먹음$v$,$v$성충 :  적갈색 날개 황갈색, 암갈색 작은 점
촉각 :  수-체장의 2~2.5배, 암-1~1.5배
         검은색과 회백색의 띠가 교차
다리의 체색이 몸체와는 달리 회백색의 색
노숙유충 : 유백색, 윗입술 등면 강모 듬성
(솔수염하늘소-짧은 강모가 밀생)$v$,$v$후식$v$,null,$v$1회/년, 유충, 피해목 월동, 성충은 야행성
용화 : 4월 수피와 가까운 목질부 번데기집
성충 :  4월 중순~5월 하순(최성기는 5월 초순)
후식 : 탈출 후 건전목 식해 재선충 전파
우화시간 : 11~13시 최고 빈도
산란 : 줄기나 굵은 가지(우화 20일 후)
가지의 굵기가 직경 1.5㎝ 이상 서식
알기간은 20°C에서 10~12일, 23°C에서 6~8일
부화유충은 내수피를 식해하면서 가는 톱밥을 배출하며 2령 후반부터는 목질부도 식해$v$,$v$피해목 열처리(30분/56도, 1분/60도)
피해지의 고사목, 피압목 등 북방수염하늘소의 서식처를 미리 제거
적정한 간벌을 실시로 서식화경 개선, 감염되었을 때 초동방제가 용이하게 함
고사목을 철저히 벌채하여 소각하거나 칩 또는 톱밥으로 파쇄
목재 및 피해원목을 kiln dryer(열 건조기)에서 목재 내부온도가 56.5℃까지 건조.$v$,$v$포식성 : 쌀도적개미붙이나, 딱따구리류 및 해충을 잡아먹는 각종 조류
기생성 : 기생봉류, 맵시벌류, 기생파리류를 보호한다.
유력한 천적인 개미침벌 성충을 7~8월 사이에 ha당 5,000마리를 방사$v$,$v$우화시기(5~6월)
목제 훈증
피해목 훈증$v$,$v$페니트로티온 유제(50%) 또는 티아클로프리드 액상수화제(10%)를 3~4회 수관 살포 성충 구제
침엽수재 수출입 목재, 원목 및 지조는 메칠브로마이드 훈증제(98.5%)를 ㎥당 32g을 처리하여 24~72시간 훈증한다.
피해 임지에서 피해목을 길이 1m로 잘라 메탐쇼듐 액제(25%) 또는 메탐포타시움 액제(54%)을 ㎥당 1ℓ를 처리하여 1주일 이상 훈증한다.$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (93,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$하늘소과$v$,$v$솔수염하늘소$v$,$v$Monochamus alternatus
모노차무스 알터나투스$v$,$v$소나무 잣나무, 잎갈나무$v$,$v$유충,성충$v$,$v$1$v$,$v$유충$v$,$v$피해목$v$,null,null,$v$소나무재선충을 매개하는 곤충
 수피 밑에서 형성층과 목질부를 식해
쇠약목, 고사목 발견, 건전목 산란 않음
수피와 목질부 사이 길이 1㎝내외의 목설$v$,$v$형성층 갉아먹음$v$,$v$성충 : 적갈색, 
날개 : 백색, 황갈색, 암갈색의 작은 무늬
촉각 :  수컷 몸길이 2~2.5배, 암컷은 1.5배
노숙유충 : 머리는 갈색이고 몸은 유백색$v$,$v$후식$v$,null,$v$1회/년, 유충, 목질부 월동, 추운 지방 1회/2년
용화 :  4월경 수피와 가까운 곳에 번데기 방.
성충 : 5월 하순~8월 초순(최성기 6월 중·하순)
  (제주도 저지대 1주일이상 빠를것으로 추정) 
탈출 : 수피에 약 6mm 가량 되는 원형의 구멍
후식 : 건전목 /수피 식해 재선충 전파.
(탈출은 맑은날 10~12시 사이최고 빈도)
성충은 야행성
산란 : 우화 후 20일후 줄기나 굵은 가지에
        기간 6~9월(최성기 7~8월)
알기간은 20°C에서 10~12일, 25°C에서 5~7일
부화유충 : 내수피를 식해 가는 톱밥 배출
             2령 후반부터는 목질부도 식해
유충은 4회 탈피한 후, 종령 유충
굵기가 직경 2㎝이상 되는 곳에 서식.
유충기간은 30~45일 정도이다.
우화 성충 약 1주일간 번데기방에 체류후 탈출$v$,$v$피해목 열처리(30분/56도, 1분/60도)
피해지의 고사목, 피압목 등 북방수염하늘소의 서식처를 미리 제거
적정한 간벌을 실시로 서식화경 개선, 감염되었을 때 초동방제가 용이하게 함
고사목을 철저히 벌채하여 소각하거나 칩 또는 톱밥으로 파쇄
목재 및 피해원목을 kiln dryer(열 건조기)에서 목재 내부온도가 56.5℃까지 건조.$v$,$v$포식성 : 쌀도적개미붙이나, 딱따구리류 및 해충을 잡아먹는 각종 조류
기생성 : 기생봉류, 맵시벌류, 기생파리류를 보호한다.
유력한 천적인 개미침벌 성충을 7~9월 사이에 ha당 5,000마리를 방사$v$,$v$우화시기(5~7월)
목제 훈증
피해목 훈증$v$,$v$페니트로티온 유제(50%) 또는 티아클로프리드 액상수화제(10%)를 3~4회 수관 살포 성충 구제
침엽수재 수출입 목재, 원목 및 지조는 메칠브로마이드 훈증제(98.5%)를 ㎥당 32g을 처리하여 24~72시간 훈증한다.
피해 임지에서 피해목을 길이 1m로 잘라 메탐쇼듐 액제(25%) 또는 메탐포타시움 액제(54%)을 ㎥당 1ℓ를 처리하여 1주일 이상 훈증한다.$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (94,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$하늘소과$v$,$v$알락하늘소$v$,$v$Anoplophora chinensis
아노풀롭호라 시넨시스$v$,$v$대부분의 활엽수,삼나무$v$,$v$유충,성충$v$,$v$1$v$,$v$노숙유충$v$,$v$줄기$v$,null,null,$v$단풍나무류 외 다양한 수종을 가해 
유충이 줄기 아래쪽에서 천공 목설 배출
노숙유충기 지제부 가해 풍해 유발
환상 식해로 가지 고사$v$,$v$단풍나무$v$,$v$성충 : 검은색 광택 딱지날개에 흰점 다수
         수컷 더듬이 체장의 2배, 
우리알락하늘소와 차이점 : 소순판 작은 돌기
유충 : 납작 원통형, 갈색머리 유백색 배 가슴$v$,$v$후식$v$,$v$상향이동/노숙 지재부$v$,$v$1회/년, 유충, 갱도 월동, 7월 우화 탈출
수관에서 후식 피해, 수피에 산란, 
부화 유충 목질부 천공. 노숙 유충 지재부 이동$v$,$v$피해목 또는 가지 제거 반출 소각
철사로 침임입공 찔러 죽임$v$,$v$고치벌류(알락하늘소살이고치벌), 좀벌류, 맵시벌류, 기생파리류 보호$v$,$v$성충우화시기$v$,$v$아세타미프리드.뷰프로페진 유제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (95,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$하늘소과$v$,$v$참나무하늘소
(미끈이하늘소)$v$,$v$Batocera lineolata$v$,null,null,null,null,null,null,$v$참나무하늘소
(미끈이하$v$,$v$건전목 가해$v$,null,$v$몸 길이 45~52mm. 흑갈색, 황색 짧은 털
. 앞가슴등판,2개의 흰점무늬, 더듬이 흑갈색
 날개  4개의 희색 무늬$v$,null,null,$v$종보호차원에서 국외로 반출이 금지된 종$v$,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (96,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$하늘소과$v$,$v$털두꺼비하늘소$v$,null,null,null,$v$1$v$,$v$성충$v$,$v$바위밑$v$,null,$v$털두꺼비$v$,$v$쇠약목에 산란. 피해목 목설 침입흔$v$,null,$v$성충 : 검은색. 등에 담적갈색의 미모
흑갈색의 미모로 된 반점이 산재
백색의 짧은 강모가
앞날개 기부 근처 돌기 흑갈색의 긴 털이 밀생.$v$,null,null,$v$1회/1년, 성충, 바위밑 
발생하고 일부는 2년 1세대
4월 탈출 성충 후식. 6월 상순 교미 후 수피 산란. 성숙한 유충은 8월 초순경 가해 부위에 타원형의 용실을 만들고 번데기$v$,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (97,$v$천공성 해충$v$,$v$딱정벌레목$v$,$v$하늘소과$v$,$v$향나무하늘소$v$,$v$Semanotus bifasciatus
세마노투스 비파스치아투스$v$,$v$향나무, 측백나무등 활엽수$v$,$v$유충,성충$v$,$v$1$v$,$v$성충$v$,$v$목질부(번데기집)$v$,null,null,$v$향나무 측백나무등 형성층 식해 급속 고사
쇠약목, 대발생시 건전목 침입
목설 배출 흔적 없어 피해 발견 어려움
적기 방제 곤란,$v$,$v$형성층 갉아먹음$v$,$v$성충 : 검은색 바탕에 황갈색 털 
날개 : 황갈색 바탕에 황갈색 넓은 띠무늬
유충 : 갈색 머리 유백색 몸$v$,$v$목설 배출 않음$v$,null,$v$1회/년, 성충, 목질부 번데기집 월동
탈출 : 3~4월, 
산란 : 교미후 수피 물어뜬고 
부화 : 3월 중순, 형성층 갱도 형성 식해
        (갱도에 목설 가득-배출 않음)
용화 : 9월 목질부 번데기방 목설로 패쇄 용화$v$,$v$벌채 반출 소각$v$,$v$포식성 : 딱다구리,$v$,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (98,$v$충영형성해충$v$,$v$노린재목$v$,$v$알락나무이과$v$,$v$큰팽나무이$v$,$v$셀티사스피스 자포니카$v$,$v$팽나무 단식성$v$,$v$약충$v$,$v$2$v$,$v$알$v$,$v$수피, 지피물$v$,null,null,null,$v$잎뒷면 꼬깔혹,깍지$v$,$v$조기낙엽$v$,null,$v$여름형(동심)/가을형$v$,null,null,null,$v$피해초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (99,$v$충영형성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$때죽납작진딧물$v$,$v$Ceratovacuna nekoashi 
써라토바쿠나 네코아시히$v$,$v$때죽나무/나도바랭이새$v$,$v$간모$v$,$v$수회$v$,$v$알$v$,$v$가지$v$,null,null,$v$때죽나무
어린 가지 끝에 황녹색인 방추형의 벌레혹
탈출후 갈변으로 미관 저해$v$,$v$바나나모양$v$,$v$탈출후 갈변$v$,null,$v$여름기주 나도바랭이새$v$,$v$6월 벌레혹이 형성기 1마리의 무시태생 암컷
1개월 후 혹속에 약 50마리의 유충
7월 하순 유시태생 암컷이 벌레혹 탈출->
나도바랭이새로 이주->가을 때죽나무로 돌아옴$v$,$v$성충 탈출전 벌레혹 제거$v$,$v$무당벌레(홍가슴)류, 풀잠자리류, 거미류,$v$,$v$4월 상순$v$,$v$적용약제 살포 또는 주사(8~10월 나도바랭이새 적용 약제살포)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (100,$v$충영형성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$모리츠잎혹진닷물$v$,$v$Tuberocephalus misakurae
투베로셉할루스 미사쿠라에$v$,null,null,null,null,null,null,null,$v$벚나무 잎 가장자리에 충영$v$,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (101,$v$충영형성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$사사키잎혹진딧물$v$,$v$Tuberocephalus sasakii 
투베로셉할루스 사사키$v$,$v$벚나무/쑥$v$,$v$약충, 성충$v$,$v$수회$v$,$v$알$v$,$v$가지$v$,null,null,$v$벚나무 새눈에 기생, 주맥에 주머니모양 혹
형성 초기 황백색->황록색~홍색 변색
5월 하순 이후 기주 이동으로 방제 불필요$v$,$v$잎앞면 주머니혹$v$,$v$무시태생 암컷 : 담황색
유시태생 암컷 : 머리, 가슴, 다리 검은색$v$,null,null,$v$수회/ 년, 알, 가지 월동
기생부위 오목, 앞면 주머니모양 혹
혹내 : 약충, 성충, 탈피각으로 가득
5월 하 유시태생 출현 기주이동(쑥)
10월 산란 유시충 출현(암, 수)$v$,$v$탈출전 충영 채취 소각 매몰$v$,$v$포식성 : 풀잠자리류, 무당벌레류, 거미류 보호$v$,$v$4월 상순
부화 약충기$v$,$v$등록 약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (102,$v$충영형성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$외줄면충 (느티나무외줄진딧물)$v$,$v$Paracolopha morrisoni
파라콜롭파 모르리소니$v$,$v$느티나무/대나무류$v$,$v$간모 약충$v$,$v$수회$v$,$v$알$v$,$v$수피 틈$v$,null,null,$v$느티나무 가해, 
간모 뒷면 흡즙 앞면 표주박 모양 혹 생성
유시충 탈출후 경화 갈변, 잎의 기형
미관 저해$v$,$v$표주박 모양$v$,$v$`$v$,null,$v$여름기주 대나무$v$,$v$수회/ 년, 알, 수피틈 월동
4월 부화(간모) 혹 형성 뒷면 패쇠 
후 혹 비대. 혹내 : 2세대 약충 -> 유시충 ->기주이동->10월 귀환-> 동사 파열-> 봄 알 부화$v$,$v$5월 하순 유시충 탈출 전 피해잎 채취 제거$v$,$v$여름기주 대나무 제거$v$,$v$유시충 탈출전(4월)$v$,$v$적용약제살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (103,$v$충영형성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$조록나무혹진딧물$v$,$v$디닙포납히스 아우툼나$v$,$v$조록나무$v$,$v$약충, 성충$v$,$v$4$v$,$v$성충(유시충)$v$,$v$조록나무$v$,null,null,null,$v$잎 벌레혹(앞 뒷면)$v$,$v$기주이동 없음$v$,null,null,null,$v$12월 이전 벌레혹 채취 소각$v$,null,$v$사월 중순$v$,$v$적용약제살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (104,$v$충영형성해충$v$,$v$노린재목$v$,$v$혹벌과$v$,$v$밤나무혹벌$v$,$v$Dryocosmus kuriphilus
드리오코스무스 쿠립힐루스$v$,$v$밤나무$v$,$v$유충$v$,$v$1$v$,$v$유충$v$,$v$겨울눈 조직속$v$,null,null,$v$유충이 밤나무 눈에 기생 붉은색 혹 형성
기생부 소엽 총생, 7월 탈출 후 마름,
생장 장애, 개화 결실 불량, 
내충성 품종도 피해 발생$v$,$v$벌레혹$v$,$v$성충 : 광택 흑갈색, 투명 날개, 
유충 : 유백색 다리 없음, 노숙유충 반투명$v$,$v$개화 결실 저해$v$,$v$단위생식$v$,$v$1회/년, 유충, 겨울눈에서 월동
3~5월 유충과 혹 급속 성장->가지생장 정지
7월 우화 탈출후 새눈에 산란, 단위생식$v$,$v$내충성 품종, 버레혹 채취 제거$v$,$v$중국긴꼬리좀벌 5000마리, 남색기꼬리좀벌, 노란꼬리즘벌, 큰다리남색좀벌, 배잘록꼬리좀벌, 상수리좀벌, 기생파리류$v$,$v$6월하순(성충발생)$v$,$v$티아클로프리드 액상수화제   2~3회/10일간격$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (105,$v$충영형성해충$v$,$v$벌목$v$,$v$혹벌아과$v$,$v$어리상수리혹벌$v$,$v$Trichagalma serratae Ashmead, 1904$v$,null,null,$v$1$v$,null,$v$알$v$,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (106,$v$충영형성해충$v$,$v$응애목$v$,$v$혹응애과$v$,$v$밤나무혹응애$v$,$v$아세리아 자포니카$v$,$v$밤나무$v$,null,$v$수회$v$,$v$암컷 성충$v$,$v$가지틈, 눈인편 밑, 
낙엽 충영$v$,null,null,null,null,null,null,null,null,$v$피해잎 채취 소각$v$,null,$v$밀도 증가시$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (107,$v$충영형성해충$v$,$v$응애목$v$,$v$혹응애과$v$,$v$붉나무혹응애$v$,$v$Aculops chinonei
아쿨롭스 치노네이$v$,$v$붉나무$v$,$v$성충,약충$v$,$v$수회$v$,$v$?$v$,$v$?$v$,null,null,$v$붉나무 피해, 성충과 약충이 잎 뒷면에 기생
- 잎 앞면에 충영형성. 피해가 심하면 고사.
국내 대부분 지역에서 발생, 
잎의 변형으로 경관 저해$v$,$v$앞면 사마귀혹$v$,$v$암컷 성충 : 0.15mm 방추형 오렌지색
배판은 삼각형, 배모는 뒤쪽으로 뻗음$v$,null,null,$v$수회/년$v$,$v$피해잎 채취 소각$v$,$v$공란$v$,$v$밀도 증가시$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (108,$v$충영형성해충$v$,$v$응애목$v$,$v$혹응애과$v$,$v$회양목혹응애$v$,$v$에리옵히에스 북시스$v$,$v$회양목$v$,$v$성충,약충$v$,$v$2$v$,$v$성충/알/약충$v$,null,null,null,null,$v$잎눈$v$,$v$꽃봉우리모양 혹$v$,null,null,null,$v$피해가지 제거 소각$v$,null,$v$밀도 증가시$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (109,$v$충영형성해충$v$,$v$파리목$v$,$v$혹파리과$v$,$v$대추나무잎혹파리$v$,$v$국생정에 미기록$v$,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (110,$v$충영형성해충$v$,$v$파리목$v$,$v$혹파리과$v$,$v$사철나무혹파리$v$,$v$Masakimyia pustulae
마사키미이아 푸스툴라에$v$,$v$사철나무$v$,$v$유충$v$,$v$1$v$,$v$유충(3령)$v$,$v$벌레혹(속)$v$,null,null,$v$사철나무, 줄사철나무, 화살나무 등
잎 뒷면에 울퉁불퉁 벌레혹을 형성
조기 낙엽, 1혹 1유충, 1잎 수십혹$v$,$v$뒷면 벌레혹$v$,$v$성충 : 체색 노란색, 
유충 : 유백색 또는 노란색.
더듬이 15절, 다리 인편, 발톱 두 갈래$v$,null,null,$v$1회/년, 유충(3령), 벌레혹 속 월동
우화 당일 새잎 뒷면 산란
유충이 벌레혹 형성, 10월 월동처로
한밤중 우화. 오전 잎에서 교미
짧은 수명(6~12시간)$v$,$v$피해잎 채취 소각$v$,$v$기생성 : 기생벌류, 기생파리류$v$,$v$3중, 5상$v$,$v$카보퓨란 입제(3%)를 피해목
주변에 1m2당 200g씩 매립하여 주고 5월
상순에 2차 매립하는 것이 효과적이다$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (111,$v$충영형성해충$v$,$v$파리목$v$,$v$혹파리과$v$,$v$솔잎혹파리$v$,$v$Thecodiplosis japonensis
테코디풀로시스 자포넨시스$v$,$v$소나무$v$,$v$유충$v$,$v$1$v$,$v$유충$v$,$v$지피물/토양/혹$v$,null,null,$v$소나무 곰솔, 1920년대 초반, 
솔잎 기부 벌레혹 형성 흡즙가해 생장저해
수관 상부 피해 심
신초 고사, 직경, 수고 생장 감소
피해도 경 ~19%, 중20~49%, 심 50%~,$v$,$v$솔잎기부 충영$v$,$v$성충 : 황색~황갈색, 
유충 : 황백색->황색(흰색), 가슴 Y 모양 흉골
번데기 : 암황섹$v$,null,null,$v$1회/년, 유충, 지피물, 땅속 월동. 용화 : 5~6월 
우화 : 5~7월, 최성기 6월, 비오후 증가
산란 : 우화직후 교미, 새잎에 산란
부화 : 솔잎 기부로 이동 가해, 혹 형성 
월동 : 11월(9~01) 혹 탈출 땅속 월동.$v$,$v$피해지 선단지 속아베기(무육), 봄철 지피물제거, 비닐멀칭(낙하유충, 우화성충),$v$,$v$기생성 : 솔잎혹파리먹좀벌, 솔잎혹파리살이 먹좀벌, 혹파리등뿔먹좀벌, 
           혹파리반뿔먹좀벌
포식성 : 거미류, 박새, 쇠박새, 곤줄박이
병원성 미생물 : 백강균 등$v$,$v$5하~6하$v$,$v$침투성 약제 가장 효율적
피해도 중 이상 : 등록 약제 나무주사(이미다클로푸리드 분산성액제 나무주사), 
유충 낙하(11~01월) 기간 등록된 입제(이미다클로프리드 입제) 지며 살포 - 대면적 적용은 지양$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (112,$v$충영형성해충$v$,$v$파리목$v$,$v$혹파리과$v$,$v$아까시잎혹파리$v$,$v$Obolodiplosis robiniae
오볼로디풀로시스 로비니아에$v$,$v$아까시나무 단식성$v$,$v$유충$v$,$v$2$v$,$v$번데기$v$,$v$토양$v$,null,null,$v$미국 원산 2002년 발병. 2006년 심
아까시나무 단식성 해충, 밀원 피해 심
흡즙 가해 부위 뒤로 말림고 갈변. 
흰가루병, 그을음병 일으킴$v$,$v$잎알이$v$,$v$성충 : 암컷이 조금 큼, 머리 검은색, 
        더듬이 수컷 : 2결절 14 채찍마디
                  암컷 : 3결절 8 채찍마디
        배 : 노란색 또는 붉은색
노숙유충 : 유백색-> 붉은 갈색화$v$,null,null,$v$2~3회/년, 번데기, 땅속 9월 이동
2화기 피해 심- 벌레혹에서 우화$v$,$v$0$v$,$v$기생성 : 아까시민날개납작좀벌, 
포식성 : 무당벌래류, 풀잠자리류$v$,$v$피해초기$v$,$v$적용 약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (113,$v$충영형성해충$v$,null,null,$v$오갈피나무이$v$,null,null,null,$v$2$v$,$v$성충$v$,$v$이끼$v$,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (114,$v$흡즙성해충$v$,$v$노린재목$v$,$v$가루깍지벌레과$v$,$v$소나무가루깍지벌레$v$,$v$Crisicoccus pini
크리시코쿠스 피니$v$,$v$소나무,고몰,잣나무$v$,$v$성충, 약충$v$,$v$2$v$,$v$약충$v$,$v$잎,가지 수피$v$,$v$한국, 중국, 일본, 미국$v$,$v$소나무, 곰솔, 잣나무,$v$,$v$소나무 침엽사이 약충, 성충 기생해 흡즙
새가지 생장 저해 잎 위축
2차적으로 그을음병을 유발, 피목가지마름병$v$,$v$잎사이$v$,$v$암컷 성충 : 3~4mm, 타원형 적갈색. 
       표면 밀랍가루, 몸끝 밀랍 동기 어러쌍
몸의 둘레  가는 센털, 등면 센털과 샘구멍.
다리와 더듬이는 갈색$v$,null,$v$피목가지마름병 유발$v$,$v$기온에 따라 3회 발생 할 수도있음
우화 : 1화기 5월 ~6월, 2화기 8월~9월
난낭 없음
단시간 내에 부화하여 침엽 사이에 모여 산다.$v$,$v$피해가지와 줄기를 제거하여 소각
문질러 제거$v$,$v$포식성 : 무당벌레류, 풀잠자리류, 거미류 보호$v$,$v$약충시기$v$,$v$아미트라즈.뷰프로페진 유제 등 10일 간격 2~3회 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (115,$v$흡즙성해충$v$,$v$노린재목$v$,$v$가루이과$v$,$v$귤가루이$v$,$v$Dialeurodes citri 
다이알레우로데스 시트리$v$,$v$귤,감,광,쥐똥$v$,$v$성충,유충$v$,$v$수회$v$,$v$약충$v$,$v$가지 줄기$v$,$v$한국, 일본, 중국, 인도, 북아메리카 등$v$,$v$귤나무, 감나무, 광나무, 박달목서, 배롱나무, 쥐똥아무, 치자나무 등$v$,$v$성충 유충 새잎  뒷면에서 집단 흡즙 가해
잎 뒷면 탈피각, 그을음병 유발, 건조시 다발
어린나무와 질소과다로 웃자란 나무에 발생$v$,$v$잎 뒷면, 새가지$v$,$v$성충 : 1.2mm, 흰비늘가루, 담황색, 흰색 큰날개
알 : 0.2mm,  장타원형, 담록색
유충 : 0.7mm, 납작 타원형, 반투명 단록색
번데기 : 1.2mm, 유충과 비숫한 모양. 욱안 식별$v$,$v$탈파각$v$,null,$v$유충(3령) 또는 번데기로 월동
성충 : 5월 중하순 출현,
산란 : 잎 뒷면에 세로로 산란.$v$,$v$가지치기로 통풍 채광 개선(제거가지 소각)
질소비료 과용 금지$v$,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (116,$v$흡즙성해충$v$,$v$노린재목$v$,$v$거품벌레과$v$,$v$솔거품벌레$v$,$v$Aphrophora flavipes
아호로프호라 플라비페스$v$,null,null,null,null,null,null,null,$v$5~6월경 새가지에 기생하여 흡즙하며 체표에 거품 모양의
물질을 분비한다.
• 거품을 분비하기 때문에「거품벌레」라고 부르고 약충은 이
거품 안에서 수액을 흡즙한다.
• 대발생하면 새가지 당 5~6마리가 기생한다.
• 흡즙에 의한 생장저해 등의 실제적인 피해는 적으나
거품덩어리 때문에 미관을 해친다$v$,null,$v$성충의 몸길이는 8~10mm로 약간 편평하며 몸은
전체적으로 암갈색이지만 등쪽은 갈색으로 불규칙한
암갈색의 무늬가 있다.
• 다 자란 약충의 몸길이는 4~5mm 정도이고, 머리와
가슴은 갈색내지는 암갈색이며 배쪽은 등황색이다.$v$,null,null,$v$~$v$,$v$약제방제
-등록된 약제가 없다.
-특별히 이 해충을 위해 약제를 살포할 필요는 없다.
• 친환경방제
-거품 속에서 생활하므로 천적의 포식 및 기생 가능성이 낮다.
-성충은 약충과 달리 민첩하게 날기 때문에 포살이 어렵다.
-따라서 새가지에서 거품이 발견되면 약충을 포살한다.
솔거품벌레$v$,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (117,$v$흡즙성해충$v$,$v$노린재목$v$,$v$깍지벌레과$v$,$v$갈색깍지벌레$v$,$v$Chyysomphalus bifasciculatus
치리솜프할루스 비파스시쿨라투스$v$,$v$귤나무,황철나무,월계수$v$,$v$성충, 약충$v$,$v$2~3$v$,$v$성충(암컷)$v$,null,$v$한국, 일본, 타이완, 미국$v$,$v$귤나무, 황철나무, 월계수, 월계수, 참식나무, 녹나무, 후박나무, 조록나무, 굴거리나무, 사철나무, 편백, 쥐똥나무, 동백나무, 감탕나무, 꽝꽝나무, 호랑가시나무, 무궁화, 팔손이, 호양목$v$,$v$성충과 약충이 잎에만 기생-황변, 조기낙엽$v$,$v$잎$v$,$v$암컷 성충 : 2mm, 등쪽이 융기한 원형, 암적갈색
깍지 속 성충 체장은 0.7mm정도이며 노란색$v$,null,null,$v$암컷 성충으로 월동
산란 : 5월 상순, 
약충 : 5월 중순~하순 출현.
수컷 성충 : 7월에 출현
2세대 부화 약충 : 7월 하순~8월상순 출현$v$,$v$피해잎 제거 반출$v$,$v$기생성 : 좀벌류, 
포식성 : 무당벌레류$v$,$v$약충 시기
(5월 중순~하순,
7월하순~8월 상순)$v$,$v$적용약제 살살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (118,$v$흡즙성해충$v$,$v$노린재목$v$,$v$깍지벌레과$v$,$v$벚나무깍지벌레$v$,$v$Pseudaulacaspis prunicola
슈도아울라카스피스 푸르니콜라$v$,$v$벚나무류등 핵과,버드나무$v$,$v$성충, 약충$v$,$v$2~3$v$,$v$성충(암컷)$v$,$v$가지,줄기$v$,null,null,$v$광나무, 벚나무류, 살구나무, 버드나무
줄기나 가지 집단으로 흡즙 가해
고약병을 유발, 줄기에 솜을 붙여 놓듯함$v$,$v$가지,줄기$v$,$v$암컷 성충 : 백색~회백색
수컷 : 백색, 
몸은 황색~황갈색, 역삼각형 단면. 밑판 삼각형$v$,null,$v$더듬이 둥글고 뾰족$v$,$v$2~3회/년, 성충 월동
 4월 중순부터 산란(~8월, 3세대)$v$,$v$여름기주 제거(대나무)$v$,$v$포식성 : 무당벌레류, 풀잠자리류, 
기생성 : 좀벌류, 혹파리류$v$,$v$발생전/발생초기$v$,$v$이미다클로프리드 분산성액제
뷰프로페진.티아클로프리드 액상수화제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (119,$v$흡즙성해충$v$,$v$노린재목$v$,$v$깍지벌레과$v$,$v$뽕나무깍지벌레$v$,$v$Pseudaulacaspis pentagona
슈도아울라카스피스 펜타고나$v$,$v$구기자,굴거리,초피$v$,$v$성충, 약충$v$,$v$2~3$v$,$v$성충(암컷)$v$,$v$가지,줄기$v$,null,null,null,$v$가지,줄기$v$,$v$갈라짐$v$,null,$v$갈라짐$v$,null,$v$가지치기$v$,$v$무당벌레류, 풀잠자리류, 좀벌류, 혹파리류$v$,null,$v$아세타미프리드 수화제, 아세타미프리드.뷰프로페진 수화제, 티아메톡삼 입상수화제,$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (120,$v$흡즙성해충$v$,$v$노린재목$v$,$v$깍지벌레과$v$,$v$사철깍지벌레$v$,$v$Unaspis euonymi
우나스피스 에우오니미$v$,$v$사철,꽝꽝,화살,회양$v$,$v$성충, 약충$v$,$v$2$v$,$v$성충(수정 암컷)$v$,null,null,null,$v$사철나무, 회양목, 꽝꽝나무, 참빗살나무
가지, 줄기, 잎에 기생하여 흡즙 가해 
그을음병과 고약병 유발  
성장이 저해 수세 약화$v$,$v$잎,가지,줄기$v$,$v$암컷성충 : 깍지 암회색 몸은 등황색 
양옆에 짧은 샘가시와 샘구멍$v$,null,null,$v$2회/년, 성충 월동
약충은 5월 중순~6월 중순, 
7월 하순~8월 하순에 출현$v$,$v$피해가지를 제거하여 소각하거나 매몰$v$,$v$기생성 : 사철깍지네마디좀벌등$v$,$v$약충 발생 초기$v$,$v$메티다티온 유제(40%) 또는 이미다크로프리드 액제(4%)를 
1,000배액으로 희석하여 10일 간격으로 2회 살포한다.$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (121,$v$흡즙성해충$v$,$v$노린재목$v$,$v$깍지벌레과$v$,$v$소나무굴깍지벌레$v$,$v$Lepidosaphes pini
레피도사프헤스 피니$v$,$v$소나무류$v$,$v$성충, 약충$v$,$v$2$v$,$v$성충(암컷)$v$,null,null,null,$v$잎에 기생하여 수액을 흡즙
피해 잎 황화현상, 그을음병 유발 수세약화
구엽에서 많이 발견$v$,$v$잎$v$,$v$암컷 성충 : 가늘고 길며 회색을 띤 암갈색
입틀 발달되어 있고 구침은 매우 길다.
더듬이는 원추형이며 2개의 긴 센털이 있다.
수컷 성충의 깍지는 암컷과 비슷하나 소형$v$,null,null,$v$2회/년, 성충으로 월동
약충 : 4월~5월,8~9월 
성충 : 7월 , 10월$v$,$v$피해가 심한 잎의 가지를 제거하여 소각한다$v$,$v$포식성 : 무당벌레, 풀잠자리류, 거미류 보호$v$,$v$약충 발생 초기$v$,$v$등록된 약제를 처리한다
약제 처리 필수아님$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (122,$v$흡즙성해충$v$,$v$노린재목$v$,$v$깍지벌레과$v$,$v$식나무깍지벌레$v$,$v$Pseudaulacaspis cockerelli
슈도아울라카스피스 코커렐리$v$,$v$감나무,고욤나무,협죽도$v$,$v$성충, 약충$v$,$v$2$v$,$v$성충,약충(암컷)$v$,null,$v$한국, 일본, 중국, 타이완, 러시아, 미국, 아프리카$v$,$v$감나무, 고용나무 목련, 식나무, 협죽도 등 90종$v$,$v$성충과 약충이 잎 가지 줄기 과실에서 가해-
수세약화, 독성타액분비로 가해 반대쪽 황화 조기낙엽 및 가지 고사, 그을음병 유발
기생 부위 백색분.$v$,$v$잎,가지,줄기$v$,$v$암컷 성충 :  2~3mm, 깍지끝 황갈색 점
     체장은 2mm, 노란색, 날개, 다리, 눈이 없음
수컷 성충 : 1mm, 작고 투명날개, 체색은 적자색
약충 : 1령은 다리가 있어 이동 가능$v$,null,null,$v$2회/년,  암컷 약충 또는 성충 가지에서 월동.
산란 : 4월 중순~5월 상순,
1세대 약충 5월 상순~중순에 출현
암컷 성충 : 6월 상순~3령 후 출현 산란
수컷 성충 : 은 5령을 거침$v$,$v$변색 피해잎과 가지 제거$v$,$v$기생성 : 좀벌$v$,$v$약충 발생시기
(5월 상순)$v$,$v$아세타미프리드 수화제, 아세타미프리드.뷰프로페진 액상수화제, 디노테퓨란 수화제, 클로티아니딘 입상수화제, 뷰프로페진.메톡시페노자이드 수화제 등 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (123,$v$흡즙성해충$v$,$v$노린재목$v$,$v$깍지벌레과$v$,$v$장미흰깍지벌레$v$,$v$Aulacaspis rosae
아울라카스피스 로사에$v$,$v$해당화,찌레,장딸기,장미$v$,$v$성충, 약충$v$,$v$2$v$,$v$성충(수정 암컷)$v$,$v$가지,줄기$v$,$v$한국, 일본, 중국, 타이완, 미국, 케나다, 오스트레일리아$v$,$v$장미, 해당화, 찔레, 장딸기$v$,$v$성충과 약충이 줄기, 가지, 잎에 기생-
고밀고 시 밀가루 도포형상, 수세약화, 고사$v$,$v$잎,가지,줄기$v$,$v$유사종 : 각진장미흰깍지벌레(최근)
암컷성충 : 2~3mm, 등면 약간 볼록한 달걀모양
         불투명 흰색, 깍지의 한쪽 노란색 탈피각
         체장은 1mm, 노란색->적갈색
수컷 성충 : 흰색 깍지, 길쭉 납작한 모양
          한쪽 탈피각$v$,null,null,$v$연 2회 발생, 수정 암컷 성충이 가지와 줄기 월동
(때로는 약충으로 월동)
산란 : 4월 . 
부화 약충 : 5월 상순부터 출현$v$,$v$피해 가지, 줄기 제거 반출$v$,$v$기생성 : 장미흰깍지좀벌$v$,$v$약충 발생시기
(5월 상순)$v$,$v$티아메톡삼 입상수화제, 스피로테트라멧 액상수화제등 적용약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (124,$v$흡즙성해충$v$,$v$노린재목$v$,$v$깍지벌레과$v$,$v$후박나무깍지벌레$v$,$v$레피도사프헤스 핀나에포르미스$v$,$v$후박나무, 참식나무, 붓순나무$v$,$v$성충, 약충$v$,$v$1$v$,$v$성충(암컷)$v$,null,null,null,null,$v$잎,가지,줄기$v$,null,null,null,null,null,$v$후박좀깍지좀벌$v$,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (125,$v$흡즙성해충$v$,$v$노린재목$v$,$v$꽃매미과$v$,$v$꽃매미(주홍날개꽃매미)$v$,$v$Lycorma delicatula
리코르마 델리카튤라$v$,$v$활엽수$v$,$v$성충,약충$v$,$v$1$v$,$v$알$v$,$v$줄기, 가지$v$,$v$중국남부,
2006년 국내 유입$v$,$v$붉나무, 옻나무, 두릅나무, 산오리나무, 자작나무, 갈참나무, 가래니무, 호두나무, 중국굴피나무, 다릅나무, 일본목련, 목련, 참죽나무, 뽕나무, 장미, 찔레꽃, 해당화, 산딸기, 마가목, 쉬땅나무, 쉬나무, 황벽나무, 물황철나무, 고광나무, 소태나무, 가죽나무, 벽오동, 쪽동백나무, 때죽나무, 담쟁이덩굴, 포도, 배나무, 복사나무, 사과나무, 매실나무, 양다래, 머루 등$v$,$v$광식성, 2006년, 중국, 외래해충(토착화)
성충과 약충 흡즙- 수세약화 , 생장 저해
그을음병 유발, 왁스, 감로 미관 저해
아열대성 해충(겨울, 봄 고온시 대발생 우려)$v$,$v$가지, 잎$v$,$v$성충 : 암-20(43)mm, 배끝마디 산란관, 
         수-15(35)mm, 
       앞날개 혁질 분홍색 옅은 갈색
약충 : 3.9~11.5mm, 3령까지 검은색에 흰점
        4령이후 붉은색에 흰점, 날개딱지 관찰
알 : 2.5.8mm, 타원형 갈색, 평행 배열$v$,$v$그으름병$v$,null,$v$1회/년, 알, 수피 틈 월동
부화 : 4울 하순 
우화 : 7월 상순~10월 하순
검은색 약충 : 4월 하순~7월 하순
붉은색 약충 : 6월 하순~8월 중순
성충 : 7월 상순~10월, 가죽 80%, 느릅 3%
산란 : 9월 하순 줄기와 가지에$v$,$v$4월 전 줄기 알덩어리 끌로 채취 문질러서 죽임
 약충기에 끈끈이 트랩설치
기주수목(가죽나무 등) 제거$v$,null,$v$어린약충기
발생초기$v$,$v$약충시기 이마다클로프리드 분산성 액제 수간주사
발생초기 이미다클로프리드 수화제, 아세타미프리드 소화제, 티아메톡삼 입상수화제, 디노테퓨란 수화제, 클로티아니딘 액상수화제, 에토펜프록스 유제, 페니트로티온 유제 등 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (126,$v$흡즙성해충$v$,$v$노린재목$v$,$v$나무이과$v$,$v$돈나무이$v$,$v$Cacopsylla tobirae
카콥실라 토비라에$v$,$v$돈나무$v$,$v$약충$v$,$v$2~3$v$,$v$성충(약충)$v$,null,$v$한국, 일본$v$,$v$돈나무$v$,$v$약충이 새잎의 앞변에서 집단으로 흡즙, 
흰색 밀랍물질 분비, 피해잎 기형화, 
새순생육 저하 부생성 그을음병
피해 시기 : 4~9월(6월 극심)$v$,$v$집단 새잎 앞면$v$,$v$성충 : 2.5~3mm, 녹황색->담록색
        날개-투명, 황갈색 시맥
        더듬이- 마지막2마디만 흑갈색
약충 : 2.5mm, 광택 담록색$v$,$v$잎 변형$v$,$v$그으름병$v$,$v$지역에따라 약충으로 월동,
성충 : 4월~9월까지 출현하여 산란
산란 : 4월~9월까지$v$,$v$피해 초기피해 잎 제거$v$,null,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (127,$v$흡즙성해충$v$,$v$노린재목$v$,$v$나무이과$v$,$v$뽕나무이$v$,$v$Anomoneura mori
아노모네우라 모리$v$,$v$뽕나무$v$,$v$약충$v$,$v$1$v$,$v$성충$v$,null,$v$한국, 일본, 중국$v$,$v$뽕나무류$v$,$v$약충이 잎, 줄기, 열매에 집단 흡즙, 밀랍물질 분비-입의 기형화, 그을으병 유발, 상품성 하락$v$,$v$잎, 줄기, 열매$v$,$v$성충 : 3~5mm, 월동성충-암갈색, 신성충-담록색
        앞날개 월동성충-불투명, 신성충- 투명, 
약충 : 3mm, 황록색, 배끝에 실모양 밀랍물질$v$,$v$여름 기주이동$v$,null,$v$1회/년, 성충 월동.  
월동성충 : 4월상순 출현-새잎 또는 잎뒷면에 산란
약충 : 5월 상순~6월 중순 출현, 잡초로 기주이동$v$,$v$피해 초기피해 잎 제거$v$,$v$거미류, 풀잠자리류,$v$,$v$발생초기$v$,$v$뷰프로페진.디노테퓨란 수화제, 스피노사드 액상수화제, 디노테퓨란 수화제, 설폭사풀로르 액상수화제 잎 뒷면에 충분히 묻도록 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (128,$v$흡즙성해충$v$,$v$노린재목$v$,$v$나무이과$v$,$v$자귀나무이$v$,$v$Acizzia jamatonica
아치찌아 자마토니카$v$,$v$자귀나무$v$,$v$성충,약충$v$,$v$?$v$,$v$?$v$,null,null,$v$자귀나무$v$,$v$성충과 약충 집단으로잎  흡즙- 위축 변색
배설물로인한 끈적거림, 그을음병 유발$v$,$v$잎 흡즙$v$,$v$성충 : 2.5~4mm, 날개는 투명,   
         채색-봄 여름-담황색, 가을-다록색
약충 : 2mm, 실모양 밀랍 분비$v$,null,null,$v$5~10월 자귀나무 가해 간식성$v$,null,null,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (129,$v$흡즙성해충$v$,$v$노린재목$v$,$v$나무이과$v$,$v$회화나무이$v$,$v$Cyamophila willieti
치아몸힐라 윌리에티$v$,$v$회화나무$v$,$v$성충,약충$v$,$v$1$v$,$v$성충$v$,null,null,$v$회화나무$v$,$v$성충과 약충이 잎에서 흡즙-잎이 말리고 기형
분비물로 부생성 그으름병 유발$v$,$v$잎 흡즙$v$,$v$월동 성충 : 5mm, 흑갈색, 신성충 : 4mm, 담녹색
                앞날개 투명,
알 : 0.3mm, 둥근 촛불모양, 끝에 갈고리 돌기
약충 : 0.2~1.9mm, 광택있는 담록색$v$,$v$밀남 없음$v$,null,$v$산란 : 4~5월 월동 성충이 잎눈에 산란
부화 약충 : 잎이 완전히 전개되기 전에 출현 흡즙
신성충 : 5월 중순~10울 하순 발생(최성기 5월 하)$v$,null,null,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (130,$v$흡즙성해충$v$,$v$노린재목$v$,$v$노린재과$v$,$v$갈색날개노린재$v$,$v$Plautia stali
풀라우티아 스탈리$v$,$v$활엽수$v$,$v$성충,약충$v$,$v$2$v$,$v$성충$v$,$v$낙엽,풀뿌리 근처$v$,$v$한국, 일본, 중국$v$,$v$감나무, 밤나무, 편백, 벚나무, 뽕나무, 사과나무, 귤나무, 차나무, 포도, 동백나무$v$,$v$성충 과실, 약충 잎뒷면 흡즘 가해
과일 낙과 또는 6~8mm 원형 흰색 스펀지화$v$,$v$성충 : 과실$v$,$v$성충 : 10~12.5mm, 체색-광택 녹색 검은 점무늬
        앞날개 대부분은 갈색. 
더듬이 담갈색, 3~5마디 말단부 흑갈색$v$,null,null,$v$2회/년, 성충, 풀뿌리 월동
월동 성충 : 3월 하순 4월 중순. 산란 : 5월 중순. 
성충 출현 : 7~8월, 8~10월
월동처로 이동 : 10월$v$,$v$산란잎 제거, 
집합 페로몬 성충 유인 포살$v$,$v$기생성 : 뚱보기생파리$v$,$v$발생초기$v$,$v$디노테퓨란.에토펜프록스 수화제, 에토펜프록스 켑슐현탁제 등 적용약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (131,$v$흡즙성해충$v$,$v$노린재목$v$,$v$노린재과$v$,$v$큰광대노린재$v$,$v$Poecilocoris splendidulus
포에실로코리스 스플렌디둘루스$v$,null,null,$v$1$v$,$v$약충$v$,$v$낙엽,수피$v$,null,null,null,null,$v$5월 성충 우화
성충 : 등면 광택 금록색 바탕 무지개빛 줄무늬
광대 노린재와 구분 : 넓은 줄무늬 
山자 모양 선단부 줄무늬$v$,null,null,$v$1회/년, 악충, 낙업 수피틈 월동$v$,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (132,$v$흡즙성해충$v$,$v$노린재목$v$,$v$매미과$v$,$v$말매미$v$,$v$Cryptotympana atrata
크립토팀파나 아트라타$v$,$v$미류, 벚, 사과, 버짐, 느티$v$,$v$성충$v$,$v$1/6년$v$,$v$알, 약충$v$,$v$가지/땅속$v$,$v$한국, 일본, 중국$v$,$v$미루나무, 벚나무, 사과나무, 버즘나무, 느티나무$v$,$v$암컷 성충 산란으로 2년생 가지 고사,
성충 흡즙 상처에서 수액 누출-그을음병 유발
상처로 병원균 침입-부란병 발생(사과나무)$v$,$v$가지 흡즙$v$,$v$성충 : 40~48(60~68)mm, 대형종, 광택 검은색
        흑갈색 시맥의 투명날개- 기부는 검은색, 
        암수 구분- 암-배딱지 작고 배끝이 뽀족
알 : 2mm, 가늘며 양끝 뽀족, 유백색
부화약충 : 2mm, 유백색, 6령충 : 35mm, 담갈색$v$,null,$v$2차감염, 그으름병$v$,$v$성충 : 6월 하순~9월 하순 출현
산란 : 2년생 가지의 조직속- 가지 고사
월동 : 첫해 알, 유충(땅속-뿌리 수액 흡즙)
우화 : 오후 8시~세벽 6시 사이 지상으로 나옴
         대부분은 9~10시 사이$v$,$v$성충 포살, 
산란한 가지 소각$v$,$v$유아등 유인 포살$v$,$v$성충 발생기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (133,$v$흡즙성해충$v$,$v$노린재목$v$,$v$매미충과$v$,$v$갈색날개매미충$v$,$v$Pochazia shantungensis
포차지아 산툰겐시스
Pochazia = 멸구속$v$,$v$활엽수/침엽수(주목)$v$,$v$성충,약충$v$,$v$1$v$,$v$알$v$,$v$가지(1년생)$v$,$v$중국(산둥성,저장성)
한국(2010년)$v$,$v$산수유, 감나무, 밤나무, 때죽나무, 단풍나무 등 53과 114종$v$,$v$광식성, 2010년, 중국, 외래해충(토착화)
성충과 약충 잎 어린가지, 과실 흡즙,
그을음병 유발, 왁스, 감로 미관 저해
산란 가지 고사 관상가치 저해$v$,$v$잎, 어린가지, 과실$v$,$v$성충 : 8.2~8.7mm, 암갈색(나뭇가지 보호색)
         복부 선단부 수-뾰족, 암-둥근모양.
         옆쪽 압착 쐐기모양
산란 : 1년생 가지속 2열 산란흔 밀랍으로 덮음
알 : 1.24mm, 우윳빛 장타원형
약충 : 1.6~4.5mm, 항문 부채살 모양 노란색 밀랍$v$,null,null,$v$1회/년, 알, 가지 속(1년생)
약충 : 5월 중순~6월상순, 
성충 : 8월 중순(7~11월)    
산란 : 8월 중순 가지에 2줄 산란후 밀납 덮게
2령 분산, 비행 분산, 차량 분산$v$,$v$황색 끈끈이트랩
월동하는 산란 피해지 채취 소각 매몰$v$,$v$유용 천적 미확인
포식성 : 거미류$v$,$v$부화 약충기$v$,$v$아세타미프리드 수화제, 에토펜프록스(세베로) 유제, 디노테퓨란 수화제, 설폭사플로르 액상수화제, 아세타미프리드.디플루벤쥬론 수화제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (134,$v$흡즙성해충$v$,$v$노린재목$v$,$v$매미충과$v$,$v$외점애매미충$v$,$v$Singapora shinshana
신가포라 신샤나$v$,$v$벚나무속$v$,$v$성충,약충$v$,$v$?$v$,$v$?$v$,null,$v$한국, 중국$v$,$v$복사나무, 매실나무, 자두나무, 벚나무$v$,$v$성충과 약충이 동시 잎 뒷면에서 흡즙-황백색
배성물은 벗고 탈피각 다수.-방패벌레와 구분
피해잎 조기낙엽, 성충은 활동성 우수$v$,$v$잎뒷면 흡즙$v$,$v$성충 : 3.2mm, 연한 녹색, 주둥이 끝 검은색, 
         날개 반투명, 담황갈색 끝은 담황색
약충 : 연두색 바탕에 주황색 무늬$v$,$v$방패벌레류$v$,$v$빠른이동$v$,$v$5뭘 중순~9월 하순 성충 약충 동시에 출현$v$,null,$v$거미류$v$,$v$발생초기$v$,$v$디노테퓨란 입상수화제(4a) 잎 뒷면이 충부히 젖도록살포$v$,$v$아세타미프리드.뷰프로페진 유제(4a+16)$v$);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (135,$v$흡즙성해충$v$,$v$노린재목$v$,$v$매미충과$v$,$v$철쭉띠띤애매미충$v$,$v$Naratettix rubrovittatus
나라테트틱스 루브로빝타투스$v$,$v$철쭉류$v$,$v$성충,약충$v$,$v$?$v$,$v$?$v$,null,$v$한국, 일본$v$,$v$산철쭉, 영산홍$v$,$v$성충과 약충 잎뒷면 흡즘 가해 -표면 탈색
피해잎 뒷면 배설물 없음-방패벌레와 구분
6~10월 피해$v$,$v$잎뒷면 흡즙$v$,$v$성충 : 3mm, 머리 가슴 황백색,
         머리 가슴 배에 주황색 무늬,
약충 : 2.6mm, 반투명 흰색, 등명에 황백색 무늬$v$,$v$진달래방패벌레$v$,null,$v$5뭘 중순~9월 하순 성충 약충 동시에 출현$v$,null,$v$거미류$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (136,$v$흡즙성해충$v$,$v$노린재목$v$,$v$매미충아과$v$,$v$모무늬매미충$v$,$v$Hishimonus sellatus (Uhler, 1896)$v$,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (137,$v$흡즙성해충$v$,$v$노린재목$v$,$v$밀깍지벌레과$v$,$v$거북밀깍지벌레$v$,$v$Ceroplastes japonicus
쎄로플라스테스 자포니쿠스$v$,$v$동백나무, 치자, 차나무 등$v$,$v$성충, 약충$v$,$v$1$v$,$v$성충(수정 암컷)$v$,null,$v$한국, 일본, 중국, 러시아, 영국, 이탈리아$v$,$v$동배나무, 감나무, 치자나무, 차나무 등 34 종$v$,$v$밀랍-약제 침투 곤란, 노약 오남용-천적감소
사철나무,은행나무도시 가로수 조경수 가해
성충과 약충이 가지,잎 흡즙 수세가 약화
그을음병 유발미관 저해$v$,null,$v$암컷 성충 : 3~4mm, 반구형, 핑크색, 백색 밀납, 
               (거북모양)
부화약충 : 편평하며 원형 자갈색, 
              밀랍 분비 별모양의 깍지 형성$v$,null,$v$그으름병$v$,$v$1회/년, 성충 월동
6월 상순에 산란을 시작, 부화약충 7월 출현. 
부화약충 : 잎이나 녹색 가지 정착 흡즙
가해, 가을에 잎에서 작은 가지로 이동$v$,$v$피해 받은 가지나 잎을 제거하거나,
면장갑을 낀손으로 문지르거나 떼어 준다.$v$,$v$포식성 : 무당벌레류, 풀잠자리류, 거미류, 조류 등 보호$v$,$v$약충 발생기
(7월)$v$,$v$메티다티온 유제(40%), 이미다클로프리드 액상수화제(8%),
디메토에이트 유제(46%) 1,000배액 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (138,$v$흡즙성해충$v$,$v$노린재목$v$,$v$밀깍지벌레과$v$,$v$공깍지벌레$v$,$v$Eulecanium kunoense
에울레카니움 쿠노엔스$v$,$v$매실나무,살구나무,밤,감,사과,가시$v$,$v$성충, 약충$v$,$v$1$v$,$v$약충(종령)$v$,$v$가지$v$,$v$한국, 중국, 일본, 미국, 러시아$v$,$v$매실나무, 살구나무, 자두나무, 벚나무류, 사철나무, 밤나무, 감나무, 사과나무, 배나무, 가시나무 등$v$,$v$부화 약충 잎 뒷면에서 흡즙 월동전 
가지로 이동 흡즙. 수세 약화 & 고사
종종 대발생$v$,$v$잎,가지$v$,$v$암컷 성충 : 0.5mm, 교미후 급성장(4~5mm), 
               황갈색의 둥근모양, 작은 점무늬, 주름
수컷 성충 : 1.5mm, 날개
부화 약충 : 납작 타원형 달걀 모양, 적갈색$v$,null,null,$v$1회/년, 약충(종령) 월동. 4월 하순부터 성숙, 
수컷 성충 : 4월 용화, 5월 유시 성충. 
암컷 성충 : 5월 중순 산란 
부화약충 : 5월 하순, 낙엽 전 가지로 이동(월동처)$v$,$v$피해가지 제거 소각. 직접 잡아 죽임$v$,$v$포식성 : 애홍점박이무당벌레, 풀잠자리류 보호$v$,$v$1령 약충기
(5월)$v$,$v$적용 약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (139,$v$흡즙성해충$v$,$v$노린재목$v$,$v$밀깍지벌레과$v$,$v$루비깍지벌레$v$,$v$Ceroplastes rubens
쎄로풀라스테스 루벤스$v$,$v$가시, 동백, 후박$v$,$v$성충, 약충$v$,$v$1$v$,$v$성충(수정 암컷)$v$,null,$v$동양의 열대지방 원산
한국, 일본 중국, 타이완, 인도, 필리핀, 이란, 미국, 옷,트레일리아, 뉴질랜드, 유럽, 러시아 등$v$,$v$가시나무, 동백나무, 후박나무, 감나무, 예덕나무, 쥐똥나무$v$,$v$성충과 약충이 줄기 가지 잎에서 흡즙
                -수세약화, 그을음병 유발, 
 남부지방(전남, 경남, 제주) 피해 심$v$,$v$잎,가지,줄기$v$,$v$암컷 성충 : 4~5mm, 어두운 붉은색(루비)
               등면은 매우 볼록하게 융기, 
               가장자리 물결모양 백색 띠(밀랍선)
약충 : 연한 붉은색, 등면 납작하거나 약간 함입
               가장자리 물결모양 백색 띠(밀랍선)$v$,null,null,$v$1회/년, 수정한 암컷 성충 월동. 
산란 : 6월상순 충체아래
약충 출현 : 6월 하순~7월 상순
성충 ; 9월 상순, 수컷은 교미 후 죽음$v$,$v$저밀도 시 손으로 가지의 암컷 성충을 잡아 죽임$v$,$v$기생성 : 루비깍지좀벌, 
포식성 : 애홍점박이무당벌레, 꼬마무당벌레 등$v$,$v$약충 발생기
(6월 하순)$v$,$v$적용 약제 살포
(메티다티온 유제(40%), 이미다클로프리드 액상수화제(8%), 
디메토에이트 유제(46%) 1,000배액을 살포한다)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (140,$v$흡즙성해충$v$,$v$노린재목$v$,$v$밀깍지벌레과$v$,$v$뿔밀깍지벌레$v$,$v$Ceroplastes ceriferus
쎄로풀라스테스 쎄리페루스$v$,$v$동백나무, 치자, 차나무 등$v$,$v$성충, 약충$v$,$v$1$v$,$v$성충(수정 암컷)$v$,null,$v$중국원산, 일본 경유 국내유입(1930),$v$,$v$감나무, 치자나무, 차나무, 동백나무, 단픙나무 등
명아주, 망초등 초본류$v$,$v$남부지방 조경수목, 과수에 피해,
성충과 약층이 가지와 잎에서 흡즙-수세약화
그을음병 유발.  미관훼손, 고사$v$,$v$잎,가지$v$,$v$암컷 성충 : 3.5~7mm, 원형, 두꺼운 백색 밀납 
              등면의 밀랍분비물 볼록~뿔모양 돌출
             어두운 불은색 광택, 밑돌기 매우 발달
 부화 약충 : 납작한 타원형, 2령이후 뿔 형성시작$v$,null,$v$그으름병$v$,$v$1회/년, 수정한 암컷 성충 월동. 단위생식
산란 : 5월 하~6월 중순
약충 : 6월 중·하순에 출현 
성충 : 8월 하순 출현$v$,$v$저밀도 시 손으로 가지의 암컷 성충을 잡아 죽임$v$,$v$기생성 : 붉은깡총좀벌, 밀깍지깡총좀벌
포식성 : 애홍점박이무당벌레 등$v$,$v$약충 발생시기
(6월)$v$,$v$티아메톡삼 입상수화제, 뷰프로페진.티아메톡삼 액상수화제, 페니트로티온 유제
 10일 간격으로 2~3회 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (141,$v$흡즙성해충$v$,$v$노린재목$v$,$v$밀깍지벌레과$v$,$v$줄솜깍지벌레$v$,$v$Takahashia japonica
타카하시아 자포니카$v$,$v$오리나무등 광식성$v$,$v$성충, 약충$v$,$v$1$v$,$v$약충(3령)$v$,$v$가지$v$,$v$한국, 일본, 중국, 러시아$v$,$v$오리나무, 뽕나무, 벚나무류, 담풍나무류, 앵두나무, 싸리나무, 담쟁이덩굴, 철쭉, 목련, 느릅나무, 산수유, 감나무, 팽나무, 버드나무류, 자귀나무, 귤나무$v$,$v$성충과 약충이 가지 잎 흡즙 가해-가지 고사
성충의 긴 고리모양 난낭 형성
아래쪽 가지와 잎에서 흔히 발생$v$,$v$잎,가지$v$,$v$암컷 성충 : 3~7mm, 등면 볼록 황백색, 
                암갈색 반점 등적색 선, 몸 표면 밀랍
               산란후 암갈색
백색 고리모양 난낭
부화 약충 : 타원형 황적색$v$,null,null,$v$1회/년, 3령 약충 기주수목의 가지 월동
성충 : 4~5월 출현,, 5월 산란 긴 난낭 형성
부화약충 :  6월 중순, 뒷면엽맥 가해-> 가을 가지 이동$v$,$v$피해잎 가지 등 제거 반출
고리모양 난낭 부착 부위 채취 소각$v$,$v$기생성 : 긴솜깍지붙이깡충좀벌 등 좀벌류 
포식성 : 무당벌레류$v$,$v$1령약충 발생시기
(6월 중순)$v$,$v$등록 약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (142,$v$흡즙성해충$v$,$v$노린재목$v$,$v$밀깍지벌레과$v$,$v$쥐똥밀깍지벌레$v$,$v$Ericerus pela
에리세루스 펠라$v$,$v$쮜똥나무,광나무,물루레,이팝,$v$,$v$성충, 약충$v$,$v$1$v$,$v$성충(수정 암컷)$v$,null,$v$한국, 일본, 중국, 러시아, 남아메리카$v$,$v$쥐똥나무, 광나무, 물프레나무, 이팝나무, 수수꽃다리$v$,$v$성충 약충 잎과 가지 집단으로 흡즙
수컷 약충 이동성이 양호
조기 낙엽 수세 약화 고사$v$,$v$잎,가지$v$,$v$암컷 성충 : 10mm, 등면 볼록 반구형 광택 갈색
               산란기 거친 구형 적갈색
수컷 성충 : 2.2mm, 날개, 더듬이, 홑눈
약충 : 0.5~0.95mm, 작어서 육안관찰 어려움$v$,null,null,$v$1회/년, 수정 암컷 성충 월동
성장개시  3월중순~ 쾌속 성장
산란 : 4월 하순~, 부화약충 : 6월 출현. 
성충 : 8월 하순,  암컷 잎맥, 수컷 잎 뒷면 집단$v$,$v$겨울에 수컷약충 밀납가지 절단 제거$v$,$v$포식성 : 애홍점박이무당벌레
기생성 : 쮜똥밀깍지좀벌 보호$v$,$v$1령 약충기
(6~7월)$v$,$v$적용 약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (143,$v$흡즙성해충$v$,$v$노린재목$v$,$v$방패벌레과$v$,$v$물푸레방패벌레$v$,$v$Leptoypha wuorentausi
렙토이파 위우렌타dn시$v$,$v$물푸레, 들매$v$,$v$성충,약충$v$,$v$4 ?$v$,$v$?$v$,null,$v$한국, 러시아$v$,$v$물푸레나무, 들메나무$v$,$v$8~9월에 피해 심
성충,유충잎 뒷면주맥에 집단 가해 -황백색화
응애류에 의한 피해와 달리 배성믈 탈피각 
경관훼손 피해 수세 쇠약$v$,$v$잎뒷면 흡즙$v$,$v$성충 : 2.6mm, 머리 겹눈 검은색, 
장타원형 몸체는 흑갈색, 앞가슴 등판 3개 융기산$v$,null,null,null,$v$피해잎 채취 소각$v$,$v$거미류$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (144,$v$흡즙성해충$v$,$v$노린재목$v$,$v$방패벌레과$v$,$v$배나무방패벌레$v$,$v$Stephanisis nashi
스테파니티스 나쉬$v$,$v$배, 사과, 살구, 자두, 장미, 명자$v$,$v$성충,약충$v$,$v$3~4$v$,$v$성충$v$,$v$낙엽,수피$v$,$v$한국, 일본$v$,$v$벚나무류, 배나무, 사과나무, 자두나무, 살구나무, 면자나무, 장미 등$v$,$v$성충과 약충이 잎 뒷면 가해 ->표면 백화
뒷면 벌레똥 탈피각->응애류 피해와 구별. 
가해 면적 : 약충-2㎠, 성충-1㎠/D(1M)
피해 시기 : 6~7월, 피해심하면 주기낙엽$v$,$v$잎뒷면 흡즙$v$,$v$성충 : 3mm, 갈색, 배는 검은색, 날개 크며 반원형
중앙에 검은색무늬, 날개- 반투명, 그물 시맥
겹치면 등면에 X자 모양 검은무늬, 
약충 : 유백색, 무색 털모양 돌기$v$,$v$조기 낙엽$v$,null,$v$월동 성충 : 5월 상순 가해, 
산란 : 주맥~1지맥 조직 속 산란 표면 분비물 도포
부화 약충 :즙,  산란장소에서 흡-> 분산
성충 1세대 : 6월 중순~7월 상순에 산란
                  여름 이후 충태 혼재 가해, 
       2세대 ; 7월 중순~8월 상순
       3세대 : 8월 하순~9월 상순
       4세대 : 10월 상순경 불규칙$v$,$v$피해 초기 피해잎 채취 소각$v$,$v$거미류$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (145,$v$흡즙성해충$v$,$v$노린재목$v$,$v$방패벌레과$v$,$v$버즘나무방패벌레$v$,$v$Corithucha ciliata
코리투차 칠리아타$v$,$v$버즘, 물푸레, 닥나무$v$,$v$성충,약충$v$,$v$3$v$,$v$성충$v$,$v$수피$v$,$v$미국원산, 1995년 유입$v$,$v$버즘나무, 물푸레나무, 닥나무$v$,$v$미국원산 1995년 국내 발생 외래해충
주로 양버즘나무 피해
성충 약충 잎 뒷면 동시 흡즙. 황백색화
탈피각 똥 잔존으로 응애류 피해와 구분
경관저해 피해$v$,$v$잎뒷면 흡즙$v$,$v$성충 : 3~3.2mm, 흑색 몸체, 그물망 유백색날개
알 : 0.25mm, 표주박 모양, 암갈색
약충 : 0.45~2.25mm, 복부 양쪽 3개의 가시돌기
        납작한 모양, 전반적 검은색$v$,$v$그물망 날개$v$,null,$v$3회/년, 성충, 수피틈에서 월동
월동성충 : 4월 하순 출현 흡즙 가해 
산란 : 잎 뒷면 옆맥 분지점에 무더기 산란
약충 ; 5,6,7~10월 출현, 가해시 세대 중첩. 
성충이 9월 하순 월동처로 이동$v$,$v$피해잎 채취 소각$v$,$v$포식성 : 거미류$v$,$v$발생초기$v$,$v$에토펜프록스 (유제, 유탁제), 클로티아니딘 입상수용제 잎 뒷면에 충분히 묻도록 수회 살포,   
이미다클로프리드 분산성액제, 클로티아디닌 액제 나무 주사$v$,$v$아세타미프리드 수화제(4a) 2,000배액
에토펜프록스(3a) 1,000배액$v$);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (146,$v$흡즙성해충$v$,$v$노린재목$v$,$v$방패벌레과$v$,$v$진달래방패벌레$v$,$v$Stephanitis pyrioides
스테파니티스 피리오이데스$v$,$v$밤, 사과, 철쭈류$v$,$v$성충,약충$v$,$v$4$v$,$v$성충$v$,$v$낙엽,지피물$v$,$v$한국, 일본(미국), 중국$v$,$v$밤나무, 사과나무, 진달래, 산철쭉, 철쭉, 영산홍$v$,$v$성충과 약충이 잎 뒷면 가해 -> 황백색화
벌레똥 탈피각이 띠띤애매미충 피해와 구별
수세 약화 미관 저해, 고온건조 시 피해 심$v$,$v$잎뒷면 흡즙$v$,$v$성충 : 3.5~4.0mm, 흑갈색, 등쪽 회백색 방패모양
         접은 날개 위 X자 모양 무늬
약충 : 흑갈색, 털모양 돌기$v$,$v$고온 건조$v$,null,$v$4~5회/년, 성충, 낙엽 지피물 월동
약충 : 4월 하순 흡즙(4~10월 성충 약충 동시가해) 
산란 : 잎  뒷면 조직에 1개씩$v$,$v$피해 초기 피해잎 채취 소각, 매몰$v$,$v$포식성 : 거미류 등 보호$v$,$v$1세대 발생초기$v$,$v$디노테퓨란 입상수화제, 티아메톡삼 입상수화제 등 잎뒷면에 흠뻑$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (147,$v$흡즙성해충$v$,$v$노린재목$v$,$v$방패벌레과$v$,$v$후박나무방패벌레$v$,$v$Stephanitis fasciicarina
스테파니티스 파스치카리나$v$,$v$후박나무$v$,$v$성충,약충$v$,$v$?$v$,$v$?$v$,null,null,$v$후박나무$v$,$v$6~9월에 성충과 약충이 혼재 가해 황백색 화
응애류에 의한 피해와 달리 배성믈 탈피각 
고온 건조 시 피행 심$v$,$v$잎뒷면 흡즙$v$,$v$성충 : 3.0mm, 몸,날개 반투명 유백색,
약충 : 0.45~1.8mm, 유백색, 배 절반하부 흑갈색$v$,$v$고온 건조$v$,null,null,$v$피해잎 채취 소각$v$,$v$풀잠자리류, 거미류$v$,$v$발생초기$v$,$v$적용약제를 뒤면에 충분히 묻도록 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (148,$v$흡즙성해충$v$,$v$노린재목$v$,$v$선녀벌레과$v$,$v$미국선녀벌레$v$,$v$Metcalfa pruinosa
메트칼파 프르이노사$v$,$v$활엽수,침엽수(리기다)$v$,$v$성충,약충$v$,$v$1$v$,$v$알$v$,$v$가지, 수피$v$,$v$북아메리카 원산
2009년 국매 유입$v$,$v$아카시나무, 감나무, 참나무, 배나무, 명자나무등과 리기다소나무 농작물 초본류 등 145종$v$,$v$광식성(145종),
토착화 성공, 2009년 외래해충
봄 가뭄시 피해 증가, 성충 약충 동시가해
발육 저하, 그을음병 유발로 미관저해$v$,$v$가지, 잎$v$,$v$성충 : 5.5~8.5mm, 앞날개 회색~갈색, 
         앞가슴에3~6개 검은점,뒤쪽에 흰점 산재
약충 : 5~6mm, 흰색에서 밝은 녹색 배끝에 밀랍
        노숙약충은 전신 왁스(눈, 발목마디 제외)
알 : 0.8mm, 원통형 하얀색$v$,$v$그으름병$v$,null,$v$1회/년, 알, 수피 틈
부화 : 4월 하순
성충 : 7~10월 출현, 산란 : 9~10월 가지밑, 수피틈
발육 최저 임계온도 13°C, 
비행 분산, 차량 부착 분산 특성$v$,$v$피해가지 채취 소각 & 매몰$v$,$v$연구 실적 부족
포식성 : 거미류(호랑거미줄)
비눗물 : 약충 낙하(낙하 후 처리 요구됨)$v$,$v$약충기(5~6월), 
성충기(7월)$v$,$v$아세타미프리드 수화제, 티아메톡삼 액상수화제, 디노테퓨란.에토펜프록스 수화제, 에토펜프록스.테부페노자이드 유제를 잎과 줄기에 충부히 젖도록 살포
농경지 동시 방제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (149,$v$흡즙성해충$v$,$v$노린재목$v$,$v$선녀벌레과$v$,$v$선녀벌레$v$,$v$Geisha distinctssima
게이샤 디스티닉티씨마$v$,$v$활엽수$v$,$v$성충,약충$v$,$v$1$v$,$v$알$v$,$v$가지$v$,$v$한국, 일본, 중국$v$,$v$귤나무, 꽝꽝나무, 누리장나무, 단풍나무, 돈나무, 동백나무, 매실나무, 밤나무, 벚나무, 배나무, 복사나무, 뽕나무, 사철나무, 살구나무, 석류, 수국, 식나무, 아왜나무, 조록나무, 종가시나무, 찔레꽃, 차나무, 털가시나무, 홍가시나무, 화살나무 등$v$,$v$성충과 약충 잎 가지 흡즙- 생육에 지장
                          감귤나무 낙과 워인
약충이 밀랍 분비-미관 저해, 그을음병 유발, 
밀식, 통풍 불량한곳에서 발생$v$,$v$가지, 잎$v$,$v$성충 : 5(10)mm, 담황색 또는 초록색, 
         앞날개 담록색, 가장자리 붉은색 띠무늬
알 : 1mm, 방추형, 유백색
약충 : 8mm, 담록색, 흰색 밀랍으로 덮혀있음.$v$,$v$그으름병$v$,$v$통풍불량$v$,$v$부화 : 5월 상순, 새가지나 잎을 흡즙 가해
성충 : 7월 겅 출현, 가지에서 흡즙
산란 : 9월 경 죽은 가지의 표피 또는 목질부$v$,null,$v$무당벌레$v$,$v$발생초기$v$,$v$에토펜프록스 유제, 설폭사플로르 앳상수화제, 아세타미프리드 수화제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (150,$v$흡즙성해충$v$,$v$노린재목$v$,$v$솜벌레과$v$,$v$소나무솜벌레$v$,$v$Pineus (Pineus) orientalis
피네우스 오리엔탈리스$v$,$v$소나무,잣나무$v$,$v$성충,약충$v$,$v$수회$v$,$v$약충$v$,$v$가지 줄기$v$,$v$한국, 일본$v$,$v$소나무, 해송, 가문비나무, 섬잣나무, 스트로브잣나무$v$,$v$성충 악충 가지와 줄기 수피틈에서 흡즙 가해
-흰밀랍(피해 부위 희게보임), 새눈 생장 저해, 수세쇠약, 고사, 조경수의 반송 피해 다, 발, 
수관 울폐로 통풍 불량한 내부 에서 발생$v$,$v$가지,줄기 흡즙$v$,$v$성충 : 1.3mm, 암갈색 또는 흑갈색, 밀랍가루
        머리 가슴등판-통통하게 도드라져보임, 
        가슴 배 측면 밀판 발달
약충 : 겹눈 3개, 더듬이 컵모양, 흰색 말랍가루$v$,$v$조경용 반송$v$,null,$v$약충으로 줄기의 수피 밑에 월동,
성충 : 5월상순 무시성충 출현, 줄기 수피밑 산란
약충 : 5~6월 다발, 가을까지 여름형 성충 출현$v$,$v$가지치기로 통풍개선$v$,null,$v$약충기(5~6월)$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (151,$v$흡즙성해충$v$,$v$노린재목$v$,$v$왕진딧물아과$v$,$v$밤나무왕진딧물$v$,$v$Lachnus tropicalis (van der Goot, 1916)$v$,null,null,$v$3$v$,null,$v$알$v$,null,null,null,null,null,null,null,null,null,null,null,null,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (152,$v$흡즙성해충$v$,$v$노린재목$v$,$v$주머니깍지벌레과$v$,$v$주머니깍지벌레$v$,$v$Eriococcus  lagerstroemiae
에리오코쿠스 라게르스트로에미아에$v$,$v$배롱나무, 팽나무$v$,$v$성충,약충$v$,$v$2$v$,$v$알(약충)$v$,$v$암컷 깍지속$v$,$v$한국, 일본, 중국, 인도, 영국$v$,$v$배롱나무, 석류나무, 팽나무, 예덕나무, 회양묵$v$,$v$감나무주머니깍지벌레와는 주머니색깔 크기 기주식물 발생횟수 등 치이
성충과 약충이 잎과 줄기 가지에서 흡즙 가해- 
가지생장 저해, 서세쇠약, 고사, 그을음병 유발
배롱나무-잎에서도 가해$v$,$v$잎,가지,줄기$v$,$v$성충 : 암-1.9mm, 자주색(흰색 타원밀랍 주머니)
         수-0.9mm, 적자색(반투명 흰색 날개)
알 : 0.29mm, 적자색
약충 : 길쭉, 등에 털, 적자색에 하얀색 밀납 도포$v$,null,null,$v$일부는 약충으로 월동하기도함
성충 : 1세대 4월 하순~5월 상순 우화
         2세대 8월 하순~10월 하순 우화
산란 : 흰색 주머니속
부화 : 1세대-6월 상순, 2세대-8월 하순$v$,$v$알덩이 제거$v$,null,$v$부화 약충기
겨울철$v$,$v$클로티아니딘 액상수화제, 뷰프로페진.티아메톡삼 액상수화제
월동란 방제 : 기계유 유제, 석유유황합제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (153,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$가슴진딧물$v$,$v$Nipponaphis coreana
니폰나피스 코레아나$v$,$v$난대수종$v$,$v$성충,약충$v$,$v$?$v$,$v$무시충?$v$,null,$v$제주도 등$v$,$v$가시나무, 구실잣밤나무, 녹나무, 식나무, 참식나무, 등$v$,$v$성충 새가지 집단 가해-활력저하, 그을음병$v$,$v$어린가지$v$,$v$무시충 : 납작형, 진한 적갈색, 머리, 가슴, 배 융합
            육질 돌기 그믈모양, 
약충 : 0.8mm, 보통 진딧물 모양, 뿔관-고리모앙$v$,null,$v$그으름병$v$,$v$무시충 월동
2월 중순 산란 부화 
약충 출현, 11월 하순까지 가해$v$,$v$저밀도 일때는 피해 가지 채취 소각$v$,$v$무당벌레류, 풀잠자리류, 꽃등에류$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (154,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$곰솔왕진딧물$v$,$v$Cinara piniformosana
씨나라 피니포르모사나$v$,$v$소나무,곰솔$v$,$v$성충,약충$v$,$v$수회$v$,$v$알$v$,null,$v$한국, 일본, 유럽$v$,$v$소나무, 곰솔$v$,$v$봄 성충과 약충 새가지 군서 흡즙
활력도 저하. 그을음병 유발, 
여름에는 1~2년생 가지에서도 발견됨$v$,$v$가지 흡즙$v$,$v$유.무시충 : 체장-약 3mm, 체색-흑갈색. 
                머리, 눈, 앞가슴, 다리-검은색$v$,null,null,$v$봄-신초, 여름-1~2년생 가지에 생활(최성기 6월)
무시충으로 번식, 유시충도 출현 부산$v$,$v$저밀고 시 피해가지 잎, 가지 제거,$v$,$v$거미류$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (155,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$느티나무알락진딧물$v$,$v$Tinocallis zelkowae
티노칼리스 젤코와에 (zelkova느티나무)$v$,$v$느티나무(생활권)$v$,$v$성충,약충$v$,$v$수회$v$,$v$알$v$,$v$겨울눈$v$,$v$한국, 일본, 타이완$v$,$v$느티나무$v$,$v$생활권 내 느티나무 가해, 미관 저해
성충과 약충 동시 잎 뒷면 가해, 피해 잎 갈변 
조기낙엽, 수세약화 , 그을음병 유발$v$,$v$잎 뒷면 집단$v$,$v$유시충 : 1.6mm, 담황색, 더듬이 끝 검은색, 
           투명 날개
무시충 : 1.4mm, 담황색, 
알 : 0.2mm, 노란색 -> 유광 검은색 변색$v$,null,$v$그으름병$v$,$v$수회/년, 알, 겨울눈 부위 월동
4월 : 부화, 잎 뒷면에서 가해
봄~가을 : 유시 무시 약충 동시 가해(흡즙)
5~6월 : 피해 최성기, 이후 소강$v$,$v$공란$v$,$v$포식성 : 무당벌레류, 풀잠자리류, 꽃등에류$v$,$v$발생초기$v$,$v$이미다클르프리드 미탁제, 플루피라디퓨론 액제 등 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (156,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$대륙털진딧물$v$,$v$Chaitophorus saliniger
차이토푸호르스 살리니거$v$,$v$버드나무류$v$,$v$성충,약충$v$,$v$수회$v$,$v$알$v$,$v$수피틈$v$,$v$한국, 일본, 중국, 타이완$v$,$v$버드나무류$v$,$v$성충 악충 잎 뒷면 주맥에서 동시 가해
그을음병 유발, 미관 저해$v$,$v$잎 뒷면 집단$v$,$v$무시충 : 1.4mm, 흑갈색, 검은털로 덮혀있음
유시충 : 0.8mm, 노란색,검은색 무늬.
알 : 1.5mm, 암갈색$v$,$v$기주이동 없음$v$,$v$그으름병$v$,$v$4월 : 부화, 무시충으로 번식, 기주이동 X 
최성기 : 봄~여름
10월 중순 : 산란성 암컷 교미 후 산란$v$,null,$v$무당벌레류, 풀잠자리류, 꽃등에류$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (157,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$모감주진사진딧물$v$,$v$Periphyllus koelreuteriae 
페리필루스 코엘레우테리아에$v$,$v$모감주나무$v$,$v$성충,약충$v$,$v$수회$v$,$v$알$v$,$v$잎눈기부?$v$,null,$v$모감주나무$v$,$v$성충 악충 잎 뒷면 새가지에서 동시 가해
피해 잎 변형(오갈), 변색, 조기낙엽, 그을음병 유발$v$,$v$잎 뒷면 집단$v$,$v$유시충 : 2.3mm, 머리 가슴-흑갈색, 
           배-녹황색 바탕에 검은 줄모늬
무시충 : 2.0mm, 유시충과 유사, 날게 X$v$,null,$v$그으름병$v$,$v$봄 : 유시충, 무시충, 약충 모두 관찰
여름 : 거의 발견되지않음$v$,$v$저밀도 일때는 피해 가지 채취 소각$v$,$v$무당벌레류, 풀잠자리류, 꽃등에류$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (158,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$목화진딧물(무궁화)$v$,$v$Aphis gossypii
에이피스 고스시피$v$,$v$활엽수(대부분)/오이,고추$v$,$v$성충,약충$v$,$v$7~8$v$,$v$알, 약충(간모)$v$,$v$겨울눈 부근$v$,$v$전 세계
열대, 아열대 온대 등$v$,$v$감나무, 고추나무, 귤나무, 개나리, 개오동나무, 노박덜굴, 누리장나무, 다래, 다정큼나무, 도나무, 모란, 무궁화, 무화과나무, 명자나무, 매실나무, 벽오동, 복사나무, 비파나무, 배나무, 뽕나무, 사철나무, 산팽나무, 설구나무, 석류나무, 송악, 유자나무, 윤노리나무, 왕벚나무, 자귀나무, 자두나무, 작살나무, 장미, 찔레꽃, 참오동나무, 치자나무, 해당화$v$,$v$이른봄 무궁화의 피해가 큼
(기주이동-오이 고추) 
성충과 약충 새가지 잎 뒷면에서 흡즙 가해
잎의 위축, 그을음병 유발, 바이러스 매개
여름 밀도 : 따뜻한지방은 감소
               서늘한 지방은 증가$v$,$v$잎 뒷면, 새가지$v$,$v$무시충 : 1~2mm, 체색 : 밝은 녹색, 
(흰색, 노란색, 녹색등 다양-계절과 기주에 따라)
유시충 : 1.1~1.7mm, 머리 가슴 검은색, 녹색,
            머리 가슴 검은색 배는 녹색, 황록색
유시로 되는 약충은 흰가루 분비$v$,$v$그으름병$v$,$v$바이러스 매개$v$,$v$7~8회/, 겨울눈 부근, 가지에서 알로 월동
남부지방 : 성충월동도 관찰, 완전 생활환
4월 : 겨울기주(무궁화,개오동),부화 간모가 됨 
         무시 태생 단위생식 2~3세대 경과
5월 유시태생 암컷 출현 중간 기주로 이동
6월 2차 중간기주(오이 가지)로 이주
10월 유시 암컷과 수컷이 기주(무궁화) 이동
        양성 교미후 월동란 산란.$v$,$v$월동알 채취 소각 문질러 죽임$v$,$v$무당벌레, 풀잠자리, 꽃등에류, 진디벌류
여름 주기주인 무궁화, 개오동주변 가지 오이 재배 피할것$v$,$v$발생초기$v$,$v$플로니카미드 (입상수용제, 입상수화제), 아세티미프리드.피메트로진 입상수화제, 피메트로진 수화제, 비펜트린 수화제, 이미다클로프리드 수화제 등 적용약제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (159,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$물푸레면충$v$,$v$Prociphilus (Prociphilus) oriens
푸로시필루스 오리엔스$v$,$v$물푸레, 들매(전나무)$v$,$v$성충,약충$v$,$v$수회$v$,$v$알$v$,$v$수피틈$v$,null,$v$전나무(여름기주)
물푸레나무, 들베나무(겨울 기주)$v$,$v$성충 악충 잎과 새가지에서 동시 가해
피해 잎 변형(오갈), 하얀눈이 쌓여있는듯$v$,$v$잎, 새가지$v$,$v$유시충 : 3.5~5.5mm, 머리-검은색, 제2가슴-흑갈색, 배-등면에 검은 띠무늬와 측면 점무늬
간모 : 5.3mm, 황갈색, 등쪽-검은 띠무늬, 흰 밀랍$v$,$v$집단 흰색$v$,null,$v$부화 : 4월, 약충이 줄기 가지 흡즙,
유시충 : 6월 출현, 기주이동(전나무 뿌리)-개미공생
가을 유시충 : 가을에 출현, 기주이동(물푸레나무)
                  태생 약충- 성훙-월동형 산란$v$,$v$저밀도 일때는 피해 가지 채취 소각$v$,$v$매년 피해 발생지에서는 여름 또는 겨울 기주 이식$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (160,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$배롱나무알락진딧물$v$,$v$Sarucallis kahawaluokalani
사루칼리스 카하왈루오칼라니$v$,$v$배롱나무$v$,$v$성충,약충$v$,$v$수회$v$,$v$알$v$,$v$겨울눈 부근,수피$v$,$v$한국, 일본, 중국, 북아메리카$v$,$v$배롱나무$v$,$v$성충과 약충이 잎 뒷면 새가지 군서 흡즙 가해
생장 저하, 조기낙업, 개화 방해, 그을음병 유발$v$,$v$잎, 가지$v$,$v$유시충 : 1.9mm, 담황색, 머리 가슴 검은무늬, 
            투명 날개, 가장자리 검은무늬
약충 : 1.5mm, 담황색$v$,$v$개화 방해$v$,$v$그으름병$v$,$v$부화 : 봄철-새가지, 새잎, 꽃봉오리 가해
여름에 밀도 증가, 
10월 : 무시형 암컷 동아 기부, 수피 틈에 산란$v$,$v$피해가지 잎 제거,$v$,$v$무당벌레류, 풀잠자리류, 꽃등에류$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (161,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$복숭아가루진딧물$v$,$v$Hyalopterus pruni
히알로프테루스 푸루니$v$,$v$핵과류, 배나무/억새,갈대$v$,$v$성충,약충$v$,$v$수회$v$,$v$알(벚나무속)$v$,null,$v$전 세계$v$,$v$살구나무, 매실나무, 복사나무, 자두나무, 배나무,$v$,$v$성충과 약충이 잎 뒷면에 무리지어 흡즙
잎맥을 따라 서식, 피해잎 세로로 말림, 피해 부위 밀랍물질, 끈적 거림, 그을음병 유발$v$,$v$잎$v$,$v$간모 : 방추형 - 2.5mm, 체색-황록색, 밀랍가루
유시충 : 1.5mm, 녹황색, 흰색 밀랍 가루
약충 : 양끝 자주색, 중간-연녹색, 자주색, 담록색$v$,null,null,$v$봄철 :  부화, 잎 뒤면에 모여서 서식
6월 : 여름기주(억새, 갈대)로 이동 잎 가지 가해
10~11월 : 유시충 기주이동$v$,$v$피해가지 잎 제거$v$,$v$무당벌레, 풀잠자리, 꽃등에류, 
여름기주(억새, 갈대) 제거,$v$,$v$발생초기$v$,$v$아세티미프리드.피리풀르퀴나존 임상수화제, 에토펜프록스 유제, 아세타미프리드 수화제, 에펜프록스.설폭사를로르 유현탁제, 스피로테트라멧 액상수화제, 피리풀르퀴나졸 액상수화제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (162,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$복숭아혹진딧물$v$,$v$Myzus persicae
미쭈스 페르시카에$v$,$v$장미과수목/무,배추$v$,$v$성충,약충$v$,$v$수회$v$,$v$알$v$,$v$겨울눈 부근$v$,$v$한국, 일본, 중국, 미국$v$,$v$복숭아, 매실나무, 벚나무류, (광식성)$v$,$v$성충과 약충이 잎 뒷면에 군서 흡즙 가해
잎이 세로 방향으로 말리며 갈변
대발생시 생장이 저해, 수세 약화, 
그을음병 유발, 바러스 매개$v$,$v$잎뒷면 집단$v$,$v$무시충 : 1.5mm, 체색 담황록색, 담녹색, 적갈색
유시충 : 2~2.5mm 머리 가슴 검은색,  
           배는 담황색 등면에 연한 검은색의 무늬$v$,$v$그으름병$v$,$v$바이러스 매개$v$,$v$수회/년, 알, 새눈 부위 월동
3월 하순~4월 상순 : 부화(간모), 단위생식
5월 하순 : 유시충 출현 기주이동(무, 배추)
              여름기주에서 단위생식
10월 중순 : 겨울기주로 이동, 양성 암컷 출현.
1월 상순 : 교미 후 나뭇가지 산란$v$,$v$피해가지 잎 제거,$v$,$v$무당벌레류, 풀잠지리류, 꽃등에류, 혹파리류$v$,$v$발생초기$v$,$v$플로니카미드 입상수용제, 아세타미프리드.피메트로진 입상수화제, 피미트로진 수화제, 사이안트라릴리프롤 유상수화제 ,아세타미프리드 수화제 등 살포
(약제 저항성 발생 - 동일 계통 약제 연용 금지)
이미다크로프리드 액제(4%), 메티다티온 유제(40%) 등 1,000배액
10일 간격으로 2~3회 정도 살포한다.$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (163,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$붉은테두리진딧물$v$,$v$Rhopalosiphum rufiabdominale
로호팔로십훔 루피랍도미날$v$,$v$장미과수목/벼과식물$v$,$v$성충,약충$v$,$v$수회$v$,$v$알$v$,$v$겨울눈,가지$v$,$v$한국, 일본, 중국, 타이완, 인도, 오스트레일리아, 뉴질랜드, 유럽 등$v$,$v$벚나무류, 옥매, 팥배나무, 매실나무, 모과나무, 사과나무, 배나무, 복사나무 등$v$,$v$성충과 약충이 주로 새잎 새가지 가해
잎의 기형, 새가지 생육불량, 짧은 피해 기간$v$,$v$매실나무$v$,$v$무시충 : 1.2~2.2mm, 암녹색, 암적색, 적황색
            배 부분 붉은색 반점, 두꺼운 밀랍가루 
            뿔관-검은색
유시충 : 2.2mm,$v$,null,null,$v$벚나무속 수목의 겨울눈과 가지애서 알로 월동
3월 중하순 : 부화(최성기 4월 상순, 
3세대경과후 : 유시태생 암컷 출현-기주이동(벼과)
                    약충 출현-뿌리로 이동 기생
9월 중순 : 유시충 출현-기주이동(벚나무속 수목)$v$,$v$저밀도 일때는 피해 가지 채취 소각$v$,$v$무당벌레, 풀잠자리, 꽃등에류,$v$,$v$발생초기$v$,$v$아세타미프리드 수화제, 피리플루퀴나존 액상수화제, 티아메톡삼 수화제, 피메트로진 수화제, 플로니카미드 입상수화제 등 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (164,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$소나무왕진딧물$v$,$v$Cinara pinidensiflorae
치나라 피니덴시풀로라에$v$,$v$소나무,곰솔$v$,$v$성충,약충$v$,$v$3$v$,$v$알$v$,null,$v$한국, 일본, 중국, 타이완$v$,$v$소나무, 곰솔$v$,$v$5~6월경 성충과 약충이 가지에 모여 흡즙
새가지 생장 저해, 수세 약화, 가지 고사,
그을음병 유발.$v$,$v$가지 흡즙$v$,$v$유시 암컷 성충 : 4mm, 검은색 ~ 흑갈색 센털
            입틀은 매우 길어 배의 중앙에 닿는다.
            배는 적갈색이며 검은 무늬가 있다.
무시태생 암컷성충 : 4mm, 갈색~흑갈색,
            배마디 등면 검은색 무늬 2줄 배열$v$,null,null,$v$부화 : 5월, 2년생 가지, 6월경에 밀도가 가장 높음
무시태생 암컷 성충으로 번식을 계속하지만 
유시태생 암컷 성충도 출현하여 주위의 소나무류에 분산 이주 가을 무시 암컷 유시수컷이 발생$v$,$v$주기적 가지치기(가지가 빽빽하면 발생)
저밀도 시 성충약충 포살$v$,$v$포식성 : 무당벌레, 풀잠자리 거미류 보호$v$,$v$6월 초·중순경$v$,$v$뷰프로페진.설폭사플루 액상수화제 등 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (165,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$전나무잎말이진딧물$v$,$v$Mindarus japonicus
민다루스 자포니쿠스$v$,$v$전나무,종비나무,분비나무$v$,$v$성충,약충$v$,$v$3$v$,$v$알(10개월)$v$,$v$수피틈, 잎의 기부$v$,null,$v$전나무, 일본전나무, 분비나무, 종비나무$v$,$v$조경수, 묘포장에서 발생
성충 악충 새잎 기부에서 잎과 가지 동시 가해
새가지 생장 저하, 새잎 변형, 수세 쇠약
짧은 가해기간-4~5월, 흰솜-경관 저해,$v$,$v$잎 뒷면, 새가지$v$,$v$유시충 : 2.0~2.6mm, 배-담록색, 등-검정 줄무늬
          밀랍물질 도포, 
간모 : 1.5mm, 담록색, 날개X, 밀랍물질 도포
알 : 원통형, 황갈색, 밀랍물질 도포$v$,$v$피해기간 짧음$v$,null,$v$가지 표면 또는 잎의 기부에서도 월동
부화 : 4월 상순, 감모가됨, 
성충, 출산 : 4월 중순 새끼, 2세대 : 5월 상순,
산란 : 5월 하 무시암컷 출현 월동형 산란(10개월)$v$,$v$저밀도 일때는 피해 가지 채취 소각$v$,$v$무당벌레, 풀잠자리, 꽃등에류,$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (166,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$조팝진딧물$v$,$v$Aphis spiiaecola
아피스 스피라에콜라(Spirea : 조팝나무속)$v$,$v$조팝나무 등/명자,귤$v$,$v$성충,약충$v$,$v$수회$v$,$v$알(암컷 성충)$v$,$v$겨울눈 부근$v$,$v$한국, 일본, 중국, 유럽, 북아프리카$v$,$v$조팝나무류, 모과나무, 명자나무, 벚나무류, 산사나무, 유자나무 등$v$,$v$성충, 약충-새가지, 잎에 짐단으로 흡즙, 
잎말림, 조기낙엽, 과수 바이러스매개, 그을음병 유발$v$,$v$잎 뒷면, 새가지$v$,$v$무시충 : 1.5~2.5mm, 머리, 가슴, 배는 녹황색, 뿔관은 검은색
유시충 : 1.2~1.8mm, 머리 가슴-검은~암갈색,$v$,$v$그으름병$v$,null,$v$1회 발생, 조팝나무등에서 알로 월동
4월 : 부화-새가지 잎 가해
5월 : 유시태생 암컷 성충 출현-기주이동
        (명자나무, 귤나무)
10월 : 겨울기주(조팝나무)로  기주이동.
          교미산란(겨울눈, 지제부)$v$,$v$피해가지 잎 제거,$v$,$v$무당벌레, 풀잠자리, 혹파리, 꽃등에류, 진디벌류 등 천적보호
(여름기주:명자나무, 귤나무)$v$,$v$발생초기$v$,$v$플로니카미드 입상수용제, 아세티미프리드.루페뉴론 입상수화제, 디풀루벤쥬론.설폭사풀로르 입상수화제 (약제저항성있음- 동일약제 연용 금지)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (167,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$쥐똥나무진딧물$v$,$v$Aphis crinosa
에이피스 크리노사 (Aphis: 진딧물)$v$,$v$쥐똥, 백당나무$v$,$v$성충,약충$v$,$v$?$v$,$v$?$v$,null,$v$한국, 일본$v$,$v$쥐똥나무, 섬쥐똥나무, 인동덩굴, 백당나무$v$,$v$성충과 약충이 가지와 잎 뒤면 집단 흡즙
밀랍가루, 잎보다 새가지 피해 큼. 
밒의 변형, 새가지 생장 저하, 그을음병 우발$v$,$v$잎 뒷면, 새가지$v$,$v$무시충 : 2.7mm, 적갈색, 전신 긴털
            더듬이 제3마디-2차 감각기
유시충 : 2.4mm, 흑갈색, 시맥양단에 검은색$v$,$v$그으름병$v$,null,$v$빌생 시기 : 4월 하순, 장마철 감소 가을 밀도 증가
최성기 : 5~6월$v$,$v$저밀고 시 피해가지 잎, 가지 제거,$v$,$v$무당벌레, 풀잠자리 거미류$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (168,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$진사진딧물$v$,$v$Periphyllus californiensis
페리필루스 칼리포니엔시스$v$,$v$단풍나무류$v$,$v$성충,약충$v$,$v$수회$v$,$v$알$v$,$v$잎눈기부$v$,$v$한국, 일본, 중국, 타이완, 북아메리카, 유럽$v$,$v$단풍나무류$v$,$v$성충 악충 잎 뒷면 새가지에서 동시 가해
피해 잎 변형(오갈), 변색$v$,$v$잎 뒷면 집단$v$,$v$유시충 : 3.3mm, 광택 흑갈색, 
            배등판-검정 피부판-흰줄의 띠
무시충 : 2.6mm, 흑갈색, 배등판-유시충과 비슷
약충 : 2.5~3.5mm, 흑갈색, 여름형은 담황색$v$,null,$v$그으름병$v$,$v$부화 : 잎눈이 피기 전(3월 하순)에 잎눈 집단가해
         잎이피면 새잎 뒷면과 새가지 가해
여름형 약충 : 5월 하순 출현, 잎뒷면 고정 가해
산란 : 10~11월, 무시 산란형 성충 잎눈 기부 산란$v$,$v$저밀도 일때는 피해 가지 채취 소각$v$,$v$무당벌레류, 풀잠자리류, 꽃등에류$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (169,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$팽나무알락진딧물$v$,$v$Shivaphis celti
시바프히스 셀티스$v$,$v$팽,풍게, 푸조나무$v$,$v$성충,약충$v$,$v$수회$v$,$v$알$v$,$v$가지$v$,$v$한국, 일본, 중국, 타이완$v$,$v$팽나무, 풍게나무, 푸조나무 등$v$,$v$성충과 약충 잎 뒷면  집단 흡즙 가해 - 황변, 갈변, 조기낙엽. 밀랍 물질, 그을음병 유발$v$,$v$잎 뒷면 집단$v$,$v$무시충 :1.7~2.0mm, 암갈색. 솜털 모양 밀납물질
          머리-노란색, 더듬이-담황색, 
유시충 : 2.6mm, 황색, 날개 투명, 독특한 무늬
          배마디 등면-검은 점무늬$v$,$v$솜 깍지$v$,null,$v$수회/년, 알, 가지 월동. 단식성, 완전생활환
4월 부화. 봄 ~ 가을까지 발생 
고온건조한 여름에 최고 밀도
10월 하순~11월 상순-유시수컷 출현-가지에 산란$v$,$v$피해 잎 제거$v$,$v$포식성 : 무당벌레류, 풀잠자리류, 꽃등에류$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (170,$v$흡즙성해충$v$,$v$노린재목$v$,$v$진딧물과$v$,$v$호리왕진딧물$v$,$v$Eulachnus thunbergi
에울라크누스 툰베리지$v$,$v$소나무,곰솔, 리기다$v$,$v$성충,약충$v$,$v$수회$v$,$v$알$v$,null,$v$한국, 일본$v$,$v$소나무, 곰솔, 리기다소나무$v$,$v$성충과 약충 새가지 군서 흡즙
활력도 저하. 그을음병 유발,$v$,$v$잎$v$,$v$유시충 : 2.15mm, 가늘고 긴 체형, 양면이 평행
           체색은 녹색, 등면에 피부딱지.
            머리-검은색, 새로주름,센털
무시충 : 1.85mm, 가늘고 긴 체형, 양면이 평행
           체색은 청녹색, 등면에 피부딱지.$v$,null,null,$v$4월경 유.무시충 출현
5~10월까찌 가해.
산란 : 가을 양성세대 출현->난생암컷 성충->산란(잎에 점점이 산란)$v$,$v$저밀고 시 피해가지 잎, 가지 제거,$v$,$v$거미류$v$,$v$발생초기$v$,$v$적용약제$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (171,$v$흡즙성해충$v$,$v$노린재목$v$,$v$짚신깍지벌레과$v$,$v$이세리아깍지벌레$v$,$v$Icerya purchasi
이세리아 푸르차시$v$,$v$활엽수, 침엽수$v$,$v$성충,약충$v$,$v$2~3$v$,$v$약충,성충$v$,null,$v$오스트레일리아, 한국, 일본, 중국, 타이완, 유럽, 미국, 아프리카 등$v$,$v$귤나무, 사과나무, 배나무, 감나무, 주목, 은행나무, 싸리, 아까시나무, 목련, 무화과나무, 장미, 감탕나무, 단풍나무류, 진달래, 돈나무, 후피향나무, 동백나무, 치자나무 등$v$,$v$성충 약충 가지와 잎 집단 흡즙 가해-
수세 쇠약, 그을음병 유발, 다발시 줄기도 가해$v$,$v$가지 잎$v$,$v$암컷성충 : 5mm, 타원형, 적갈색
             등면에 등황색 또는 흰색 왁스 도포
             모의 가장자리-유리섬유 모양 분비물
알주머니 : 12~13mm, 흰색 왁스물질로 도포
알 : 타원형 등황색 알주머니속에 들어있음. 
노숙유충 : 3.0mm, 타원형 암홍색, 
               등쪽에 노란색 왁스물질
수컷 성충 : 날개있는 수컷은 드물게 출현$v$,null,$v$그으름병$v$,$v$봄~5월 중하순 : 월동 성충 알주머니 만들고 산란
 1세대
   약충 : 5월 하순~6월 중순 8월 하순 까지 흡즘
   성충 : 8월 중하순~10월 중순까지 산란
 2세대
   약충 95월 상순~
   암컷성충 : 날개가 없음, 자웅동체- 암컷만 생산
   수컷 유시 성충 : 번데기 거처서 날개 획득,
   교미한 암컷은 암컷과 수컷 생성$v$,$v$기생된 새가지나 피해가지를 제거$v$,$v$베달리아무당벌레 증식 방사$v$,$v$부화 약충기

겨울철$v$,$v$디노테퓨란 약제, 피리플루퀴나존 액상수화제 등 적용 약제 10~15일 간격 2회 이상 살포
기계유제 살포
이미다클로프리드 수화제(10%), 1,000배액을 
10일 간격으로 2회 정도 살포한다.$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (172,$v$흡즙성해충$v$,$v$노린재목$v$,$v$허리노린재과$v$,$v$소나무허리노린재$v$,$v$Leptoglossus occidentalis$v$,null,null,$v$1~2$v$,$v$수피밑$v$,$v$성충$v$,null,null,$v$종자용해$v$,null,$v$몸길이 : 15-20 mm 
특징: 날개 혁질부의 말단부에 V-자를 거꾸로 한 흰색의 문양이 각 각 하나씩 있으며 뒷다리의 넓적다 리마디에 강하고 짧은 가시들이 있으며 종아리마디는 나뭇잎모양으로 넓적하게 발달하여 그 말단에는 몇 개의 작은 가시가 분포한다$v$,null,null,null,$v$포살, 산란잎 소각$v$,$v$포식성 천적$v$,null,$v$무인항공기용 약제 (디노테퓨란)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (173,$v$흡즙성해충$v$,$v$노린재목$v$,null,$v$솔껍질깍지벌레$v$,$v$Matsucoccus thunbergianae
마트수코쿠스 튠버지아나에
coccus-> 구균, 분열과의 심피의 하나$v$,$v$소나무, 곰솔$v$,$v$약충$v$,$v$1$v$,$v$약충$v$,$v$가지$v$,$v$한국, 일본$v$,$v$잣나무$v$,$v$소나무 저항성, 곰솔 감수성, 1963년,고흥
가해수종의 가지에 기생하여 흡즙 가해
수세약화 나무가 고사, 세포파괴 타액분비
침입 4~5년후 피해 심. 7~22년생 곰솔 피해
수관 하부 잎부터 갈색 
하기 휴면: 6~9월, 후약충 피해 : 11~3월$v$,$v$곰솔 가지$v$,$v$암컷 성충 :  2~5mm, 장타원형, 황갈색
수컷 성충 : 1.5~2mm, 가슴-검은색, 배-등황색
              한쌍의 날개 작은 파리와 비슷 
              긴 흰 꼬리-균형유지.
알 : 0.25mm, 타원형 담황색, 
     솜덩어리 모양 알주머니 속
부화약충 : 0.35mm, 타원형, 황갈색, 
정착약충 : 암-0.35~0.6, 수-0.35~0.4mm, 
               타원형, 다갈색에 왁스물질, 인피부 흡
후약충 : 0.5~3mm, 둥근형, 다갈색 표피 경화, 
             다리 더듬이 퇴화
전성충(수) : 1.5~2mm, 장타원, 황갈색, 다리 발달
번데기 : 1.5mm, 장타원 흰색 고치속$v$,$v$갈변 고사$v$,$v$겨울 피해$v$,$v$1회/년,  약충태로 하면, 후약충이 겨울에 가해
암수의 생활경과가 다른 특이한 생태를 갖는다.
우화 : 4월~5월 성충 출현, 교미후 수피틈 산란
        (흰 솜덩어리 모양의 알주머니)
부화 : 5월 ~6월, 부화 약충 수피 틈에 정착
        인피부에 실과 같은 입을 꽂고 흡즙
하기휴면 : 6~9월
후약충 : 11월 이후, 피해를 가장많이 주는 충태
후약충 이후 암수의 생활 경과가 상이
수컷 전성충 출현(3~4월),->고치속 번데기
     암컷 성충과 형태가 비슷하나 크기가 작음
     (용화 최성기 3월 하)
암컷 성충 : 날개가 없고, 후약충->성충(불완전)$v$,$v$피해지 선단지 속아베기(무육), 심한지역 모두베기, 제벌실시로 잔존목 건강확보,$v$,$v$무당벌레류, 침노린재류, 말벌류, 거미류, 페로몬 트랩$v$,$v$3월 고성능분무기
피해 초기임지
(11~12월)$v$,$v$대면적발생지 : 뷰프로페진 액상수화제 항공살포
나무주사가 불가능한 나무 : 적용 약제 지상 살포(뷰프로페진 액상수화제(40%) 100배액) 10일 간격으로 2~3회 살포
피해 초기임지 : 침투성약제 나무주사 :  12월에 등록된 농약 원액을 주입$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (174,$v$흡즙성해충$v$,$v$응애목$v$,$v$잎응애과$v$,$v$벚나무응애$v$,$v$암피테트라츄스 비엔넨시스$v$,$v$벚나무류등 핵과,참나무류$v$,$v$성충, 약충$v$,$v$5~6$v$,$v$성충(수정 암컷)$v$,null,null,null,null,$v$잎$v$,null,null,null,null,null,$v$포식성 응애류$v$,$v$월동기/발생초기$v$,$v$기계유 / 에마멕틴벤조에이트 유제, 아바멕틴 미탁제 나무주사. 클로르페나피르 액상수화제 살포$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (175,$v$흡즙성해충$v$,$v$응애목$v$,$v$잎응애과$v$,$v$소나무응애$v$,$v$Oligonychus clavatus
올리고니츄스 크라비투스$v$,null,null,null,null,null,null,null,$v$도시의 가로수나 정원수에 식재된 소나무에 피해가 심하다.
• 봄과 초여름에 가뭄이 심하면 피해가 특히 심하다.
• 봄과 초여름에 지난해 구엽이 먼지가 묻은 것 같은 회백색으로 변한다.
• 자세히 관찰하면 소나무 잎 사이에 거미줄로 엮고 그 속에서 가해한다.
※야외에서 육안으로 전나무잎응애와 구분하기는 매우 어렵다.$v$,null,$v$성충의 몸길이는 0.4~0.5mm이고, 앞부분은 등황색이고, 뒷부분은
적갈색이다.
• 알은 0.1mm내외로 주황색을 띠며, 부화시기가 가까우면 등적색이다.
• 부화약충은 0.1mm내외의 크기로 성충과 약충은 육안으로 구분이
불가능하다.$v$,null,null,$v$연 5~10회 발생하고 알로 월동한다.
• 알은 3월 하순∼4월 중순경에 부화하고, 10월 하순경까지 불규칙하게 발생한다.$v$,$v$피해가 심한 잎을 제거하여 소각한다.
봄과 여름에 가뭄이 지속될 경우 물주기를 자주하면 피해를 미리 예방$v$,$v$포식성 : 꽃노린재, 검정명주딱정벌레, 흑선두리먼지벌레, 
           납작선두리먼지벌레 등을 보호$v$,$v$발생초기
 4월부터$v$,$v$등록 약제(아세퀴노실, 아바멕틴벤조에이트)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (176,$v$흡즙성해충$v$,$v$응애목$v$,$v$잎응애과$v$,$v$전나무잎응애$v$,$v$Oligonychus ununguis
올리고니츄스 운운구이스$v$,$v$침엽수류,참나무류$v$,$v$성충, 약충$v$,$v$5~6$v$,$v$알$v$,$v$기주$v$,null,null,$v$소나무, 참나무류 가해
도시의 가로수나 정원수에 피해가 심
가뭄이 심하면 피해가 특히 심하다.
상습적 약제를 살포하는 임지에 피해발샐
가문비나무와 분비나무에도 피해를 주는 중요한 해충으로 묘목에 특히 피해가 심하다.
성충과 약충은 다른 잎 응애류와 달라서 대부분이 잎의 표면에 기생한다.$v$,$v$잎$v$,$v$암컷 성충: 난형 등색~적갈색이고 등쪽 자모
수컷 : 형태가 암컷과 비슷
백지 위에 떨면 먼지 형태의 물체$v$,null,null,$v$5~6회/년, 알로 월동
부화 :  5월경, 제1세대 약충은 5월~6월 상순
성충은 탈피 후 3일째부터 산란을 시작$v$,$v$피해가 심한 잎의 가지를 제거하여 소각한다$v$,$v$포식성 : 꽃노린재, 검정명주딱정벌레, 흑선두리먼지벌레, 납작선두리먼지벌레 등을 보호한다$v$,$v$발생초기$v$,$v$등록 약제(아세퀴노실, 아바멕틴벤조에이트)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (177,$v$흡즙성해충$v$,$v$응애목$v$,$v$잎응애과$v$,$v$점박이응애$v$,$v$Tetrenychus urticae
테트라니츄스 우르티카에$v$,$v$벚나무,산수유등$v$,$v$성충, 약충$v$,$v$9~10$v$,$v$성충(수정 암컷)$v$,null,null,null,$v$잎 뒷면에서 흡즙 가 -> 정밀관찰 퇴색 흔
농약 사용 나무에서 종종 대량발생$v$,$v$잎$v$,$v$암컷 성충 : 적색
여름형 담황록색에 검은반점 2개, 겨울형 없음
암컷 성충 : 담황색$v$,null,null,$v$9~10회/년, 암컷성충  수피틈 월동
4~5월 잡초->이후 나무로 이동 가해
최성기 8~9월, 11월까지 가해후 수피로 이동$v$,$v$피해가 심한잎 제거
가뭄시 관수하면 예방 효과있음$v$,$v$포식성 : 꽃노린재, 검정명주딱정벌레, 흑선두리먼지벌레, 납작선두벌레 보호$v$,$v$나무로 이동시기
(6월)$v$,$v$등록 약제(아세퀴노실, 아바멕틴벤조에이트)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (178,$v$흡즙성해충$v$,$v$응애목$v$,$v$잎응애과$v$,$v$차응애$v$,$v$테트라니츄스 칸자와이$v$,$v$차나무,뽕나무,탱자$v$,$v$성충, 약충$v$,$v$수회$v$,$v$성충(암컷)$v$,null,null,null,null,$v$잎$v$,null,null,null,null,null,$v$이리응애류$v$,null,$v$등록 약제(아세퀴노실, 아바멕틴벤조에이트)$v$,null);
insert into public.tree_insects (id,category,order_name,family,name,sci_name,host,damage_stage,generations,overwinter_stage,overwinter_site,distribution,host_plants,damage_trait,damage_sign,morphology,morphology2,morphology3,ecology,physical_control,biological_control,spray_timing,chemical_control,chemical_control2) values (179,$v$흡즙성해충$v$,$v$총채벌레목$v$,$v$총채벌레과$v$,$v$볼록총채벌레$v$,$v$Scirtothrips dorsalis
스크리토트립스 도르살리스$v$,$v$은행, 아왜, 차, 송악, 감귤$v$,$v$성충,약충$v$,$v$7이상$v$,$v$성충$v$,$v$낙엽,수피, 겨울눈$v$,$v$아시아 동남부, 아프리카, 오세아니아$v$,$v$은행나무, 인동덩굴, 아왜나무, 송악, 차나무, 포도, 감귤나무$v$,$v$과수의 꽃과 열매 가해, 
수목의 잎 뒤면에서 흡즙-> 황회색으로 탈색
잎 뒷면 께끗함<-> 응애 방패벌레와의 차이$v$,$v$잎뒷면 흡즙$v$,$v$성충 : 암-0.8~1.2mm,  노란색, 가늘고 좁은 날개
약충 : 성충보다 연한 노란색$v$,$v$더듬이 총채$v$,null,$v$1세대 : 4월 하순~5월 상순, ……7세대 : 9월 하순~
월동성충 : 3월 하순부터 출현, 
산란 : 4월 새잎 뒷면 조직 안에,
부화 약충 : 5월 상순부터 관찰$v$,null,$v$풀잠자리류, 포식성 응애류$v$,$v$발생초기$v$,$v$아바멕틴벤조에이트 유제, 아세타미프리드 수화제, 뷰프로페진.설폭사푸로르 액상수화제, 스피노사드 액상수화제, 스피네토람 입상수화제 살포$v$,null);
