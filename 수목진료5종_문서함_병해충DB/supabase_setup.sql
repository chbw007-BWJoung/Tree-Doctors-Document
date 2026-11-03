-- 수목진료 5종 PC↔휴대폰 동기화용 Supabase SQL
-- Supabase Dashboard > SQL Editor에서 전체 실행

create table if not exists public.tree_sync_store (
  user_id uuid not null references auth.users(id) on delete cascade,
  key_name text not null,
  value_json jsonb not null,
  updated_at timestamptz not null default now(),
  primary key (user_id, key_name)
);

alter table public.tree_sync_store enable row level security;

revoke all on table public.tree_sync_store from anon;
grant select, insert, update, delete on table public.tree_sync_store to authenticated;

drop policy if exists "tree sync select own" on public.tree_sync_store;
drop policy if exists "tree sync insert own" on public.tree_sync_store;
drop policy if exists "tree sync update own" on public.tree_sync_store;
drop policy if exists "tree sync delete own" on public.tree_sync_store;

create policy "tree sync select own"
on public.tree_sync_store for select
to authenticated
using ((select auth.uid()) = user_id);

create policy "tree sync insert own"
on public.tree_sync_store for insert
to authenticated
with check ((select auth.uid()) = user_id);

create policy "tree sync update own"
on public.tree_sync_store for update
to authenticated
using ((select auth.uid()) = user_id)
with check ((select auth.uid()) = user_id);

create policy "tree sync delete own"
on public.tree_sync_store for delete
to authenticated
using ((select auth.uid()) = user_id);

create index if not exists tree_sync_store_user_id_idx
on public.tree_sync_store(user_id);

-- =====================================================================
-- 문서함(저장된 문서) — 서식별로 여러 건 저장하고 다시 불러와 편집
-- 기존 테이블은 그대로 두고 아래 부분만 추가 실행해도 됩니다.
-- =====================================================================
create table if not exists public.tree_documents (
  id uuid primary key,
  user_id uuid not null default auth.uid() references auth.users(id) on delete cascade,
  doc_type text not null,            -- diagnosis / rx / jinryobu / survey / opinion
  title text not null default '',
  data jsonb,                        -- 서식 내용 (삭제된 문서는 null)
  deleted boolean not null default false,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

alter table public.tree_documents enable row level security;

revoke all on table public.tree_documents from anon;
grant select, insert, update, delete on table public.tree_documents to authenticated;

drop policy if exists "tree docs select own" on public.tree_documents;
drop policy if exists "tree docs insert own" on public.tree_documents;
drop policy if exists "tree docs update own" on public.tree_documents;
drop policy if exists "tree docs delete own" on public.tree_documents;

create policy "tree docs select own" on public.tree_documents for select
to authenticated using ((select auth.uid()) = user_id);

create policy "tree docs insert own" on public.tree_documents for insert
to authenticated with check ((select auth.uid()) = user_id);

create policy "tree docs update own" on public.tree_documents for update
to authenticated using ((select auth.uid()) = user_id) with check ((select auth.uid()) = user_id);

create policy "tree docs delete own" on public.tree_documents for delete
to authenticated using ((select auth.uid()) = user_id);

create index if not exists tree_documents_user_type_idx
on public.tree_documents(user_id, doc_type, updated_at desc);
