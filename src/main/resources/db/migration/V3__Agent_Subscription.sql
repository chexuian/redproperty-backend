CREATE TABLE public.agent_subscription (
   id varchar(255) NOT NULL,
   created_at timestamp(6) NULL,
   deleted_at timestamp(6) NULL,
   updated_at timestamp(6) NULL,
   "version" int4 NOT NULL,
   end_date timestamp(6) NULL,
   start_date timestamp(6) NULL,
   status varchar(255) NOT NULL,
   agent_id varchar(255) NOT NULL,
   plan_id varchar(255) NOT NULL,
   CONSTRAINT agent_subscription_pkey PRIMARY KEY (id),
   CONSTRAINT agent_subscription_status_check CHECK (((status)::text = ANY ((ARRAY['ACTIVE'::character varying, 'PENDING'::character varying, 'EXPIRED'::character varying, 'CANCELLED'::character varying, 'SUSPENDED'::character varying])::text[])))
);


-- public.agent_subscription foreign keys

ALTER TABLE public.agent_subscription ADD CONSTRAINT fkg1phri62u241jjrwv3i5dfqdg FOREIGN KEY (plan_id) REFERENCES public.subscription_plan(id);
ALTER TABLE public.agent_subscription ADD CONSTRAINT fkkv75akexm3oau8jsjshho8p3r FOREIGN KEY (agent_id) REFERENCES public.agent(user_id);


INSERT INTO public.agent_subscription
(id, created_at, deleted_at, updated_at, "version", end_date, start_date, status, agent_id, plan_id)
VALUES('b2193b8c-7a07-4c29-a590-5bda5e5ea496', '2025-12-16 10:04:14.350', NULL, '2025-12-16 10:04:14.350', 0, '2026-01-15 10:04:14.349', '2025-12-16 10:04:14.349', 'ACTIVE', 'a0ccec7e-3747-4c92-bfbf-39aae1e6d19e', 'cccc3333-3333-3333-3333-333333333333');
INSERT INTO public.agent_subscription
(id, created_at, deleted_at, updated_at, "version", end_date, start_date, status, agent_id, plan_id)
VALUES('b2293b8c-7a07-4c29-a590-5bda5e5ea497', '2025-12-16 10:04:14.350', NULL, '2025-12-16 10:04:14.350', 0, '2026-01-15 10:04:14.349', '2025-12-16 10:04:14.349', 'ACTIVE', '09ce0870-2301-41c2-93c6-9974d1ef672f', 'aaaa1111-1111-1111-1111-111111111111');
INSERT INTO public.agent_subscription
(id, created_at, deleted_at, updated_at, "version", end_date, start_date, status, agent_id, plan_id)
VALUES('b2393b8c-7a07-4c29-a590-5bda5e5ea498', '2025-12-16 10:04:14.350', NULL, '2025-12-16 10:04:14.350', 0, '2026-01-15 10:04:14.349', '2025-12-16 10:04:14.349', 'ACTIVE', 'd55c3970-df42-4aae-b637-4f64ea985136', 'bbbb2222-2222-2222-2222-222222222222');