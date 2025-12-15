
CREATE TABLE public.subscription_plan (
  id varchar(255) NOT NULL,
  created_at timestamp(6) NULL,
  deleted_at timestamp(6) NULL,
  updated_at timestamp(6) NULL,
  "version" int4 NOT NULL,
  duration_days int4 NULL,
  "name" varchar(255) NULL,
  price numeric(38, 2) NULL,
  tier varchar(255) NULL,
  CONSTRAINT subscription_plan_pkey PRIMARY KEY (id),
  CONSTRAINT subscription_plan_tier_check CHECK (((tier)::text = ANY ((ARRAY['BASIC'::character varying, 'STANDARD'::character varying, 'PREMIUM'::character varying])::text[])))
);

INSERT INTO public.subscription_plan
(id, created_at, deleted_at, updated_at, "version", duration_days, "name", price, tier)
VALUES('aaaa1111-1111-1111-1111-111111111111', '2025-12-15 10:13:25.471', NULL, '2025-12-15 10:13:25.471', 0, 30, 'Basic Plan', 19.99, 'BASIC');
INSERT INTO public.subscription_plan
(id, created_at, deleted_at, updated_at, "version", duration_days, "name", price, tier)
VALUES('bbbb2222-2222-2222-2222-222222222222', '2025-12-15 10:13:25.471', NULL, '2025-12-15 10:13:25.471', 0, 30, 'Standard Plan', 49.99, 'STANDARD');
INSERT INTO public.subscription_plan
(id, created_at, deleted_at, updated_at, "version", duration_days, "name", price, tier)
VALUES('cccc3333-3333-3333-3333-333333333333', '2025-12-15 10:13:25.471', NULL, '2025-12-15 10:13:25.471', 0, 30, 'Premium Plan', 99.99, 'PREMIUM');


CREATE TABLE public.subscription_feature (
 id varchar(255) NOT NULL,
 created_at timestamp(6) NULL,
 deleted_at timestamp(6) NULL,
 updated_at timestamp(6) NULL,
 "version" int4 NOT NULL,
 code varchar(255) NULL,
 description text NULL,
 "name" varchar(255) NULL,
 CONSTRAINT subscription_feature_pkey PRIMARY KEY (id),
 CONSTRAINT uk1csbppx5fjnig5seydnh6ips1 UNIQUE (code)
);


INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('22222222-2222-2222-2222-222222222222', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'FEATURED_PROPERTY', 'Allows properties to be featured on homepage', 'Featured Property');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('44444444-4444-4444-4444-444444444444', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'PRIORITY_SEARCH', 'Higher ranking in search results', 'Priority Search');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('55555555-5555-5555-5555-555555555555', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'ANALYTICS', 'Access to property analytics', 'Analytics Access');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('77777777-7777-7777-7777-777777777777', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'CUSTOM_PROFILE', 'Custom agent profile branding', 'Custom Profile');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('88888888-8888-8888-8888-888888888888', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'VIDEO_UPLOAD', 'Upload property videos', 'Video Upload');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('99999999-9999-9999-9999-999999999999', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'VIRTUAL_TOUR', 'Add virtual tour to properties', 'Virtual Tour');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'SOCIAL_SHARING', 'Share listings on social media', 'Social Sharing');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'LEAD_MANAGEMENT', 'Manage and track leads', 'Lead Management');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('cccccccc-cccc-cccc-cccc-cccccccccccc', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'EMAIL_MARKETING', 'Email campaigns for listings', 'Email Marketing');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('dddddddd-dddd-dddd-dddd-dddddddddddd', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'WHATSAPP_INTEGRATION', 'Contact leads via WhatsApp', 'WhatsApp Integration');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'API_ACCESS', 'Access platform APIs', 'API Access');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('ffffffff-ffff-ffff-ffff-ffffffffffff', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'PRIORITY_SUPPORT', 'Faster customer support', 'Priority Support');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('11111111-1111-1111-1111-111111111111', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'PROPERTY_LISTING', 'Allows agents to list properties', 'Property Listing');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('33333333-3333-3333-3333-333333333333', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'ADS', 'Allows placing advertisements', 'Advertisement');
INSERT INTO public.subscription_feature
(id, created_at, deleted_at, updated_at, "version", code, description, "name")
VALUES('66666666-6666-6666-6666-666666666666', '2025-12-15 10:13:48.511', NULL, '2025-12-15 10:13:48.511', 0, 'AGENT_BADGE', 'Verified agent badge', 'Agent Badge');


CREATE TABLE public.subscription_plan_feature (
  id varchar(255) NOT NULL,
  created_at timestamp(6) NULL,
  deleted_at timestamp(6) NULL,
  updated_at timestamp(6) NULL,
  "version" int4 NOT NULL,
  feature_limit int4 NULL,
  is_unlimited bool NOT NULL,
  feature_id varchar(255) NOT NULL,
  plan_id varchar(255) NOT NULL,
  CONSTRAINT subscription_plan_feature_pkey PRIMARY KEY (id),
  CONSTRAINT uk8xd54y4g9b9hqt9sks038k48o UNIQUE (plan_id, feature_id)
);


-- public.subscription_plan_feature foreign keys

ALTER TABLE public.subscription_plan_feature ADD CONSTRAINT fk2w825ipt09i31ftilh4dq415i FOREIGN KEY (feature_id) REFERENCES public.subscription_feature(id);
ALTER TABLE public.subscription_plan_feature ADD CONSTRAINT fk8soehm36vrpebtqv4p8umyu9v FOREIGN KEY (plan_id) REFERENCES public.subscription_plan(id);


INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('aaaaaaaa-aaaa-aaaa-aaaa-000000000003', '2025-12-15 10:18:13.106', NULL, '2025-12-15 10:18:13.106', 0, NULL, true, 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'aaaa1111-1111-1111-1111-111111111111');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('bbbbbbbb-bbbb-bbbb-bbbb-000000000001', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, 50, false, '11111111-1111-1111-1111-111111111111', 'bbbb2222-2222-2222-2222-222222222222');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('bbbbbbbb-bbbb-bbbb-bbbb-000000000002', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, 10, false, '22222222-2222-2222-2222-222222222222', 'bbbb2222-2222-2222-2222-222222222222');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('bbbbbbbb-bbbb-bbbb-bbbb-000000000003', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, 5, false, '33333333-3333-3333-3333-333333333333', 'bbbb2222-2222-2222-2222-222222222222');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('bbbbbbbb-bbbb-bbbb-bbbb-000000000004', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, '44444444-4444-4444-4444-444444444444', 'bbbb2222-2222-2222-2222-222222222222');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('bbbbbbbb-bbbb-bbbb-bbbb-000000000005', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, '55555555-5555-5555-5555-555555555555', 'bbbb2222-2222-2222-2222-222222222222');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('cccccccc-cccc-cccc-cccc-000000000001', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, '11111111-1111-1111-1111-111111111111', 'cccc3333-3333-3333-3333-333333333333');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('cccccccc-cccc-cccc-cccc-000000000002', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, '22222222-2222-2222-2222-222222222222', 'cccc3333-3333-3333-3333-333333333333');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('cccccccc-cccc-cccc-cccc-000000000003', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, '33333333-3333-3333-3333-333333333333', 'cccc3333-3333-3333-3333-333333333333');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('cccccccc-cccc-cccc-cccc-000000000004', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, '44444444-4444-4444-4444-444444444444', 'cccc3333-3333-3333-3333-333333333333');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('cccccccc-cccc-cccc-cccc-000000000005', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, '55555555-5555-5555-5555-555555555555', 'cccc3333-3333-3333-3333-333333333333');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('cccccccc-cccc-cccc-cccc-000000000006', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, '66666666-6666-6666-6666-666666666666', 'cccc3333-3333-3333-3333-333333333333');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('cccccccc-cccc-cccc-cccc-000000000007', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, '77777777-7777-7777-7777-777777777777', 'cccc3333-3333-3333-3333-333333333333');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('cccccccc-cccc-cccc-cccc-000000000008', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, '88888888-8888-8888-8888-888888888888', 'cccc3333-3333-3333-3333-333333333333');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('cccccccc-cccc-cccc-cccc-000000000009', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, '99999999-9999-9999-9999-999999999999', 'cccc3333-3333-3333-3333-333333333333');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('cccccccc-cccc-cccc-cccc-000000000010', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'cccc3333-3333-3333-3333-333333333333');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('aaaaaaaa-aaaa-aaaa-aaaa-000000000001', '2025-12-15 10:18:13.106', NULL, '2025-12-15 10:18:13.106', 0, 10, false, '11111111-1111-1111-1111-111111111111', 'aaaa1111-1111-1111-1111-111111111111');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('bbbbbbbb-bbbb-bbbb-bbbb-000000000006', '2025-12-15 10:18:26.259', NULL, '2025-12-15 10:18:26.259', 0, NULL, true, 'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa', 'bbbb2222-2222-2222-2222-222222222222');
INSERT INTO public.subscription_plan_feature
(id, created_at, deleted_at, updated_at, "version", feature_limit, is_unlimited, feature_id, plan_id)
VALUES('aaaaaaaa-aaaa-aaaa-aaaa-000000000002', '2025-12-15 10:18:13.106', NULL, '2025-12-15 10:18:13.106', 0, 2, false, '22222222-2222-2222-2222-222222222222', 'aaaa1111-1111-1111-1111-111111111111');