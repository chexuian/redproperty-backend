CREATE TABLE public.agency (
	id varchar(255) NOT NULL,
	created_at timestamp(6) NULL,
	deleted_at timestamp(6) NULL,
	updated_at timestamp(6) NULL,
	"version" int4 NOT NULL,
	address varchar(255) NULL,
	city varchar(255) NULL,
	contact_no varchar(255) NULL,
	country varchar(255) NULL,
	"name" varchar(255) NULL,
	state varchar(255) NULL,
	CONSTRAINT agency_pkey PRIMARY KEY (id)
);

INSERT INTO public.agency
(id, created_at, deleted_at, updated_at, "version", address, city, contact_no, country, "name", state)
VALUES('507e053b-656d-4d41-9359-59b731026b13', '2025-12-13 11:01:49.757', NULL, '2025-12-13 11:01:49.757', 0, '123 Jalan Bukit Bintang', 'Kuala Lumpur', '+60123456789', 'Malaysia', 'Sunrise Realty', 'Wilayah Persekutuan');

CREATE TABLE public.amenity (
	id varchar(255) NOT NULL,
	created_at timestamp(6) NULL,
	deleted_at timestamp(6) NULL,
	updated_at timestamp(6) NULL,
	"version" int4 NOT NULL,
	description varchar(255) NULL,
	"name" varchar(255) NULL,
	CONSTRAINT amenity_pkey PRIMARY KEY (id)
);

INSERT INTO public.amenity
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('2a7331b5-b173-4983-8b3e-2999bc06768d', '2025-12-13 15:57:50.322', NULL, '2025-12-13 15:57:50.322', 0, 'Cooling system for comfortable indoor temperature.', 'Air Conditioning');
INSERT INTO public.amenity
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('a9cb33e0-5f02-4c81-bace-82edbc43c7c5', '2025-12-13 15:57:54.470', NULL, '2025-12-13 15:57:54.470', 0, 'Outdoor or indoor pool for residents.', 'Swimming Pool');
INSERT INTO public.amenity
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('bc60ad19-4de9-4d32-9a1b-2a8e5682d5aa', '2025-12-13 15:58:25.909', NULL, '2025-12-13 15:58:25.909', 0, 'Private outdoor space attached to the unit.', 'Balcony');
INSERT INTO public.amenity
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('a4630389-1f3f-4b9a-9a5f-3c93d6d15fda', '2025-12-13 15:58:30.504', NULL, '2025-12-13 15:58:30.504', 0, 'Central heating system for warmth.', 'Heating');
INSERT INTO public.amenity
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('adb92ea5-d626-4535-9511-1544a87d2886', '2025-12-13 15:58:36.151', NULL, '2025-12-13 15:58:36.151', 0, 'Integrated smart home technology.', 'Smart Home');
INSERT INTO public.amenity
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('4b3f6650-3777-4587-b597-2d819a490216', '2025-12-13 15:58:40.222', NULL, '2025-12-13 15:58:40.222', 0, 'In-unit laundry facilities.', 'Washer/Dryer');
INSERT INTO public.amenity
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('1d3cf4a5-38fd-4f52-b04f-04a4915c180b', '2025-12-13 15:58:46.530', NULL, '2025-12-13 15:58:46.530', 0, 'Built-in dishwasher in the kitchen.', 'Dishwasher');
INSERT INTO public.amenity
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('e95f7c86-2457-4594-9dae-8d37931150ed', '2025-12-13 15:58:50.668', NULL, '2025-12-13 16:24:11.043', 3, 'Exclusive garden area for the unit.', 'Private Garden');
INSERT INTO public.amenity
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('5ae05fa7-94e2-40be-afa1-ee61c63f4c3e', '2025-12-13 13:49:07.826', NULL, '2025-12-13 13:49:07.826', 0, 'Free internet access.', 'Wi-fi');

CREATE TABLE public.facility (
	id varchar(255) NOT NULL,
	created_at timestamp(6) NULL,
	deleted_at timestamp(6) NULL,
	updated_at timestamp(6) NULL,
	"version" int4 NOT NULL,
	description varchar(255) NULL,
	"name" varchar(255) NULL,
	CONSTRAINT facility_pkey PRIMARY KEY (id)
);

INSERT INTO public.facility
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('a5d7c3bd-ecdf-48f5-bb0b-3c241318f841', '2025-12-13 15:59:08.745', NULL, '2025-12-13 15:59:08.745', 0, 'Designated parking space for vehicles.', 'Parking');
INSERT INTO public.facility
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('ac522270-79f8-47bb-9e66-43a92b31ebf6', '2025-12-13 15:59:14.004', NULL, '2025-12-13 15:59:14.004', 0, 'Security guards and CCTV monitoring.', '24-hour Security');
INSERT INTO public.facility
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('4cf3575b-484a-482c-a1b0-ddabf0fe839d', '2025-12-13 15:59:18.537', NULL, '2025-12-13 15:59:18.537', 0, 'Outdoor play area for children.', 'Playground');
INSERT INTO public.facility
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('e3570d31-fb98-456b-a171-988ada9535bc', '2025-12-13 15:59:23.435', NULL, '2025-12-13 15:59:23.435', 0, 'Elevator/lift for easy access to upper floors.', 'Elevator');
INSERT INTO public.facility
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('0f5c3b41-474b-402e-9eb8-c66a018f59f1', '2025-12-13 15:59:27.864', NULL, '2025-12-13 15:59:27.864', 0, 'Meeting space for business use.', 'Conference Room');
INSERT INTO public.facility
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('223fce88-b897-44a5-9853-d43ef3b9e103', '2025-12-13 15:59:31.738', NULL, '2025-12-13 15:59:31.738', 0, 'On-site food and beverage facility.', 'Cafeteria');
INSERT INTO public.facility
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('c46d4f60-1583-40e4-8016-1a0396f51b32', '2025-12-13 15:59:36.217', NULL, '2025-12-13 15:59:36.217', 0, 'Outdoor terrace with city views.', 'Rooftop Terrace');
INSERT INTO public.facility
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('b104cf96-7361-4d15-992d-1a92f0dde2ad', '2025-12-13 15:59:41.088', NULL, '2025-12-13 16:32:38.254', 3, 'Multipurpose hall for events and gatherings.', 'Community Hall');
INSERT INTO public.facility
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('5c9106ef-0f9f-4f32-8549-0c504fc3aa74', '2025-12-13 13:53:24.177', NULL, '2025-12-13 13:53:24.177', 0, 'Enjoy your workout.', 'Gym Room');

CREATE TABLE public.property_category (
	id varchar(255) NOT NULL,
	created_at timestamp(6) NULL,
	deleted_at timestamp(6) NULL,
	updated_at timestamp(6) NULL,
	"version" int4 NOT NULL,
	description varchar(255) NULL,
	"name" varchar(255) NULL,
	CONSTRAINT property_category_name_check CHECK (((name)::text = ANY ((ARRAY['RESIDENTIAL'::character varying, 'COMMERCIAL'::character varying])::text[]))),
	CONSTRAINT property_category_pkey PRIMARY KEY (id)
);

INSERT INTO public.property_category
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('fa80a06d-ed85-4c65-aa5b-20f4461f6feb', '2025-12-13 12:10:51.540', NULL, '2025-12-13 12:10:51.540', 0, 'Residential', 'RESIDENTIAL');
INSERT INTO public.property_category
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('2e4a7e24-aff8-455f-945b-30d23e2a98be', '2025-12-13 15:55:16.896', NULL, '2025-12-13 15:55:16.896', 0, 'Commercial', 'COMMERCIAL');

CREATE TABLE public.property_type (
	id varchar(255) NOT NULL,
	created_at timestamp(6) NULL,
	deleted_at timestamp(6) NULL,
	updated_at timestamp(6) NULL,
	"version" int4 NOT NULL,
	description varchar(255) NULL,
	"name" varchar(255) NULL,
	CONSTRAINT property_type_name_check CHECK (((name)::text = ANY ((ARRAY['APARTMENT'::character varying, 'CONDO'::character varying, 'VILLA'::character varying, 'TOWNHOUSE'::character varying, 'HOUSE'::character varying, 'OFFICE'::character varying, 'SHOP'::character varying, 'WAREHOUSE'::character varying, 'FACTORY'::character varying, 'RETAIL_SPACE'::character varying])::text[]))),
	CONSTRAINT property_type_pkey PRIMARY KEY (id)
);

INSERT INTO public.property_type
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('c1125131-5d70-41e2-82ef-f2195b37e040', '2025-12-13 12:13:08.892', NULL, '2025-12-13 12:13:08.892', 0, 'Villa', 'VILLA');
INSERT INTO public.property_type
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('b7436fa6-8de3-4bcf-b81a-7ce957c404b5', '2025-12-13 15:56:50.693', NULL, '2025-12-13 15:56:50.693', 0, 'Standalone residential building.', 'HOUSE');
INSERT INTO public.property_type
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('900907be-9851-4efd-8819-5a76425cc25a', '2025-12-13 15:56:56.140', NULL, '2025-12-13 15:56:56.140', 0, 'Residential unit in a multi-story building.', 'APARTMENT');
INSERT INTO public.property_type
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('a15e3e61-4d46-48ab-8e83-3fcab4985c82', '2025-12-13 15:57:00.285', NULL, '2025-12-13 15:57:00.285', 0, 'Large storage building for goods or materials.', 'WAREHOUSE');
INSERT INTO public.property_type
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('37c5c2cb-65a5-40bc-a278-0479d951c108', '2025-12-13 15:57:04.432', NULL, '2025-12-13 15:57:04.432', 0, 'Commercial space for retail business.', 'SHOP');
INSERT INTO public.property_type
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('33ed0a47-e620-4147-b979-85f60cdc730c', '2025-12-13 15:57:09.369', NULL, '2025-12-13 15:57:09.369', 0, 'Industrial building for manufacturing products.', 'FACTORY');
INSERT INTO public.property_type
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('becbd4b5-e610-492f-9497-1dfc5b7b2f73', '2025-12-13 15:57:13.668', NULL, '2025-12-13 15:57:13.668', 0, 'Commercial space for professional work or businesses.', 'OFFICE');
INSERT INTO public.property_type
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('61298eb1-d9e1-4f22-8ed1-87b7752ff0af', '2025-12-13 15:57:17.964', NULL, '2025-12-13 15:57:17.964', 0, 'Condominium unit with shared amenities.', 'CONDO');
INSERT INTO public.property_type
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('8fcd43a5-5293-4afd-98ce-0922d9ea6316', '2025-12-13 15:57:23.281', NULL, '2025-12-13 15:57:23.281', 0, 'Space dedicated to selling products or services.', 'RETAIL_SPACE');
INSERT INTO public.property_type
(id, created_at, deleted_at, updated_at, "version", description, "name")
VALUES('aea78baf-9d4c-47a8-9d27-22a6ae1eb961', '2025-12-13 15:57:27.370', NULL, '2025-12-13 15:57:27.370', 0, 'Multi-floor home attached to other houses.', 'TOWNHOUSE');

CREATE TABLE public.tag (
	id varchar(255) NOT NULL,
	created_at timestamp(6) NULL,
	deleted_at timestamp(6) NULL,
	updated_at timestamp(6) NULL,
	"version" int4 NOT NULL,
	"name" varchar(255) NULL,
	CONSTRAINT tag_pkey PRIMARY KEY (id)
);

INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('0b923851-88fd-4537-a769-70dd6e05b715', '2025-12-13 16:00:05.216', NULL, '2025-12-13 16:00:05.216', 0, 'Near Public Transport');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('12308e46-176e-46ec-8463-538e810af72c', '2025-12-13 16:00:09.175', NULL, '2025-12-13 16:00:09.175', 0, 'Newly Renovated');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('c0adc381-efe4-4fc1-a5b9-ce75a5a4b3e7', '2025-12-13 16:00:13.299', NULL, '2025-12-13 16:00:13.299', 0, 'Furnished');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('306f4e31-625c-49bc-a572-801f4a102efb', '2025-12-13 16:00:17.300', NULL, '2025-12-13 16:00:17.300', 0, 'Gym Access');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('99f4148a-4793-4872-b537-4ba64829e770', '2025-12-13 16:00:21.083', NULL, '2025-12-13 16:00:21.083', 0, 'Pool Access');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('b0a9acc8-e467-4a7d-aadd-87bf1c807f8a', '2025-12-13 16:00:24.979', NULL, '2025-12-13 16:00:24.979', 0, 'City Center');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('540594d2-a6b2-49a7-af5c-37db0f8f4a27', '2025-12-13 16:00:29.161', NULL, '2025-12-13 16:00:29.161', 0, 'Quiet Neighborhood');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('49b1ecbf-4463-4a2b-9844-b6331ba6a042', '2025-12-13 16:00:33.731', NULL, '2025-12-13 16:00:33.731', 0, 'Wheelchair Accessible');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('e8616fd8-330a-4373-87df-465682de7be7', '2025-12-13 16:00:37.654', NULL, '2025-12-13 16:00:37.654', 0, 'High Floor');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('d1bfded1-aace-44f9-ae3d-04b99523b5a8', '2025-12-13 16:00:43.439', NULL, '2025-12-13 16:00:43.439', 0, 'Parking Included');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('7952071c-c822-4d68-8c16-875362a1db67', '2025-12-13 16:00:47.967', NULL, '2025-12-13 16:00:47.967', 0, 'Garden View');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('21a0d39f-06a1-4b67-b8a0-f4a0e1790b0e', '2025-12-13 16:00:51.025', NULL, '2025-12-13 16:37:33.201', 2, 'Near School');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('97b33781-334e-4c74-aff5-ff74aeb07778', '2025-12-13 13:57:58.882', NULL, '2025-12-13 16:38:41.955', 1, 'Pet Friendly');
INSERT INTO public.tag
(id, created_at, deleted_at, updated_at, "version", "name")
VALUES('7f28fcb9-538e-4ee4-a62c-c620efd6efbe', '2025-12-13 16:00:00.772', NULL, '2025-12-13 16:00:00.772', 0, 'Sea View');

CREATE TABLE public.users (
	id varchar(255) NOT NULL,
	created_at timestamp(6) NULL,
	deleted_at timestamp(6) NULL,
	updated_at timestamp(6) NULL,
	"version" int4 NOT NULL,
	contact_no varchar(255) NULL,
	email varchar(255) NULL,
	"name" varchar(255) NULL,
	"password" varchar(255) NULL,
	profile_pic varchar(255) NULL,
	"role" varchar(255) NULL,
	CONSTRAINT users_pkey PRIMARY KEY (id),
	CONSTRAINT users_role_check CHECK (((role)::text = ANY ((ARRAY['USER'::character varying, 'AGENT'::character varying, 'ADMIN'::character varying])::text[])))
);

INSERT INTO public.users
(id, created_at, deleted_at, updated_at, "version", contact_no, email, "name", "password", profile_pic, "role")
VALUES('36982c48-26b4-413f-b682-3f643d8bb54a', '2025-12-13 11:01:17.042', NULL, '2025-12-13 11:01:17.042', 0, '+60123456789', 'john.doe@example.com', 'John Doe', 'P@ssw0rd123', 'https://example.com/images/john_doe.png', 'USER');
INSERT INTO public.users
(id, created_at, deleted_at, updated_at, "version", contact_no, email, "name", "password", profile_pic, "role")
VALUES('4e030658-b5c6-491c-9b84-75aaf5818d2b', '2025-12-13 11:01:27.432', NULL, '2025-12-13 11:01:27.432', 0, '+60199887766', 'emily.tan@example.com', 'Emily Tan', 'StrongPass789', 'https://example.com/images/emily_tan.png', 'ADMIN');
INSERT INTO public.users
(id, created_at, deleted_at, updated_at, "version", contact_no, email, "name", "password", profile_pic, "role")
VALUES('09ce0870-2301-41c2-93c6-9974d1ef672f', '2025-12-13 11:02:13.304', NULL, '2025-12-13 11:02:13.304', 0, '+60123456780', 'david.lee@example.com', 'David Lee', 'AgentPass123', 'https://example.com/images/david_lee.png', 'AGENT');
INSERT INTO public.users
(id, created_at, deleted_at, updated_at, "version", contact_no, email, "name", "password", profile_pic, "role")
VALUES('d55c3970-df42-4aae-b637-4f64ea985136', '2025-12-13 16:01:27.045', NULL, '2025-12-13 16:01:27.045', 0, '+60129876543', 'sarah.tan@example.com', 'Sarah Tan', 'AgentPass456', 'https://example.com/images/sarah_tan.png', 'AGENT');

CREATE TABLE public."admin" (
	user_id varchar(255) NOT NULL,
	created_at timestamp(6) NULL,
	deleted_at timestamp(6) NULL,
	updated_at timestamp(6) NULL,
	"version" int4 NOT NULL,
	department varchar(255) NULL,
	CONSTRAINT admin_pkey PRIMARY KEY (user_id)
);


-- public."admin" foreign keys

ALTER TABLE public."admin" ADD CONSTRAINT fkq7pdkck9je126wpd9ijw3uwml FOREIGN KEY (user_id) REFERENCES public.users(id);

INSERT INTO public."admin"
(user_id, created_at, deleted_at, updated_at, "version", department)
VALUES('4e030658-b5c6-491c-9b84-75aaf5818d2b', '2025-12-13 11:01:27.434', NULL, '2025-12-13 11:01:27.434', 0, 'Marketing');


CREATE TABLE public.agent (
	user_id varchar(255) NOT NULL,
	created_at timestamp(6) NULL,
	deleted_at timestamp(6) NULL,
	updated_at timestamp(6) NULL,
	"version" int4 NOT NULL,
	bio text NULL,
	license_number varchar(255) NULL,
	verified bool NULL,
	agency_id varchar(255) NULL,
	CONSTRAINT agent_pkey PRIMARY KEY (user_id)
);


-- public.agent foreign keys

ALTER TABLE public.agent ADD CONSTRAINT fk2karykbqlyw19a0e80gcf9ch9 FOREIGN KEY (agency_id) REFERENCES public.agency(id);
ALTER TABLE public.agent ADD CONSTRAINT fkjx2gxk7aqf4hf5k28kfehxpyb FOREIGN KEY (user_id) REFERENCES public.users(id);

INSERT INTO public.agent
(user_id, created_at, deleted_at, updated_at, "version", bio, license_number, verified, agency_id)
VALUES('09ce0870-2301-41c2-93c6-9974d1ef672f', '2025-12-13 11:02:13.306', NULL, '2025-12-13 11:02:13.306', 0, 'Experienced real estate agent specializing in residential properties.', 'LIC-123456', true, '507e053b-656d-4d41-9359-59b731026b13');
INSERT INTO public.agent
(user_id, created_at, deleted_at, updated_at, "version", bio, license_number, verified, agency_id)
VALUES('d55c3970-df42-4aae-b637-4f64ea985136', '2025-12-13 16:01:27.049', NULL, '2025-12-13 16:01:27.049', 0, 'Professional real estate agent focused on luxury condominiums and high-end properties.', 'LIC-654321', true, '507e053b-656d-4d41-9359-59b731026b13');



CREATE TABLE public.property (
	id varchar(255) NOT NULL,
	created_at timestamp(6) NULL,
	deleted_at timestamp(6) NULL,
	updated_at timestamp(6) NULL,
	"version" int4 NOT NULL,
	address varchar(255) NULL,
	area_sqft numeric(38, 2) NULL,
	bathrooms int4 NULL,
	bedrooms int4 NULL,
	built_year varchar(255) NULL,
	carparks int4 NULL,
	city varchar(255) NULL,
	country varchar(255) NULL,
	description text NULL,
	floor_level varchar(255) NULL,
	listing_type varchar(255) NULL,
	"name" varchar(255) NULL,
	price numeric(38, 2) NULL,
	state varchar(255) NULL,
	status varchar(255) NULL,
	agent_id varchar(255) NULL,
	category_id varchar(255) NULL,
	type_id varchar(255) NULL,
	CONSTRAINT property_listing_type_check CHECK (((listing_type)::text = ANY ((ARRAY['BUY'::character varying, 'RENT'::character varying])::text[]))),
	CONSTRAINT property_pkey PRIMARY KEY (id),
	CONSTRAINT property_status_check CHECK (((status)::text = ANY ((ARRAY['AVAILABLE'::character varying, 'PENDING'::character varying, 'SOLD'::character varying, 'RENTED'::character varying])::text[])))
);


-- public.property foreign keys

ALTER TABLE public.property ADD CONSTRAINT fk4hkj5062oav8qspgw0c7wcg FOREIGN KEY (category_id) REFERENCES public.property_category(id);
ALTER TABLE public.property ADD CONSTRAINT fkdkg4qjxp7b6dc5x6bn3hik60n FOREIGN KEY (type_id) REFERENCES public.property_type(id);
ALTER TABLE public.property ADD CONSTRAINT fknm93hguqe2v7qa1yn0y6g7oy FOREIGN KEY (agent_id) REFERENCES public.agent(user_id);


INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('199b4d52-7c0a-492e-b6ae-a632684cea97', '2025-12-14 15:29:00.541', NULL, '2025-12-14 15:29:00.541', 0, 'Persiaran Pantai Jerejak 2', 1850.00, 3, 4, '2015', 2, 'Georgetown', 'Malaysia', 'Exclusive high-floor unit with panoramic ocean views. Fully renovated with premium fixtures. Resort-style facilities.', 'Level 25', 'RENT', 'Luxury Sea-View Condominium @ Batu Ferringhi', 4500.00, 'Penang', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', '61298eb1-d9e1-4f22-8ed1-87b7752ff0af');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', '2025-12-14 15:33:35.079', NULL, '2025-12-14 15:33:35.079', 0, 'Jalan Stesen Sentral 5', 1250.00, 2, 2, '2018', 1, 'Kuala Lumpur', 'Malaysia', 'Exclusive high-floor condominium unit with panoramic city views. Direct link to KL Sentral transportation hub. Premium furnishings and resort-style facilities.', '35th Floor', 'RENT', 'Luxury Condo with City View @ KL Sentral', 4500.00, 'W.P. Kuala Lumpur', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', '900907be-9851-4efd-8819-5a76425cc25a');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('b4749694-dd89-406e-bcf2-88e46795354d', '2025-12-14 15:34:01.722', NULL, '2025-12-14 15:34:01.722', 0, 'Lorong 5, Taman Sri Rusa', 880.00, 1, 3, '1998', 1, 'Seremban', 'Malaysia', 'Well-maintained single-storey house in a quiet neighborhood, ideal for families or students. Walking distance to local shops and public transport.', 'Single Storey', 'RENT', 'Single Storey Terrace near University', 950.00, 'Negeri Sembilan', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', '2e4a7e24-aff8-455f-945b-30d23e2a98be', 'a15e3e61-4d46-48ab-8e83-3fcab4985c82');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', '2025-12-14 15:34:26.789', NULL, '2025-12-14 15:34:26.789', 0, 'Persiaran Bayan Indah', 1500.00, 2, 0, '2015', 0, 'Bayan Lepas', 'Malaysia', 'High visibility ground floor retail lot in a bustling commercial area. Suitable for F&B, mini-market, or office. Good catchment area.', 'Ground Floor', 'BUY', 'Retail Shop Lot Facing Main Road', 6000.00, 'Pulau Pinang', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', 'c1125131-5d70-41e2-82ef-f2195b37e040');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', '2025-12-14 15:34:44.301', NULL, '2025-12-14 15:34:44.301', 0, 'Jalan Emas 3', 450.00, 1, 1, '2020', 1, 'Petaling Jaya', 'Malaysia', 'Compact and efficient studio unit, perfect for singles or young professionals. Fully furnished and less than 5 minutes walk to the nearest MRT station.', '18th Floor', 'RENT', 'Cozy Studio Apartment near MRT', 1350.00, 'Selangor', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', '2e4a7e24-aff8-455f-945b-30d23e2a98be', '37c5c2cb-65a5-40bc-a278-0479d951c108');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('fb9e31e7-bf82-44e1-ad3b-68edaed920a4', '2025-12-13 14:34:55.078', NULL, '2025-12-13 16:09:45.466', 4, '45 Jalan Kiara 3', 1800.75, 3, 4, '2020', 3, 'Kuala Lumpur', 'Malaysia', 'A spacious and modern condo located in the upscale Mont Kiara neighborhood, ideal for families and professionals.', '15th Floor', 'BUY', 'Luxury Condo in Mont Kiara', 2500000.00, 'Wilayah Persekutuan', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', '2e4a7e24-aff8-455f-945b-30d23e2a98be', 'aea78baf-9d4c-47a8-9d27-22a6ae1eb961');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', '2025-12-14 10:15:55.821', NULL, '2025-12-14 10:15:55.821', 0, 'Jalan Lee Kwee Foh', 1080.00, 2, 3, '1995', 2, 'Ipoh', 'Malaysia', 'A cozy, fully renovated, two-storey townhouse unit with its own private entrance. Located in a tranquil, mature residential area, close to shops and eateries.', 'Ground Floor Unit', 'RENT', 'Fully Furnished Townhouse @ Canning Garden', 1800.00, 'Perak', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', '2e4a7e24-aff8-455f-945b-30d23e2a98be', 'becbd4b5-e610-492f-9497-1dfc5b7b2f73');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('3c9bd261-2901-40c9-988e-827b1d26494d', '2025-12-14 14:57:42.129', NULL, '2025-12-14 14:57:42.129', 0, '1232', 2000.00, 123, 312312, '1998', 23, '3', '23', 'pdesc', '3', 'RENT', 'pname', 100.00, '3', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', '900907be-9851-4efd-8819-5a76425cc25a');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('6d825d30-6f13-4fa8-af39-623d2d57b3f5', '2025-12-13 15:21:51.959', NULL, '2025-12-13 15:21:51.959', 0, '123 Jalan Ampang', 1200.50, 2, 3, '2018', 2, 'Kuala Lumpur', 'Malaysia', 'A beautiful modern apartment located in the heart of Kuala Lumpur City Centre.', '10th Floor', 'BUY', 'Modern Apartment in New York', 1200000.00, 'Wilayah Persekutuan', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', 'c1125131-5d70-41e2-82ef-f2195b37e040');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', '2025-12-14 15:02:34.781', NULL, '2025-12-14 15:02:34.781', 0, '16, Jalan SS 2/64', 5432.00, 5, 7, '1998', 4, 'Petaling Jaya', 'Malaysia', 'Welcome to my penthouse haha', 'Ground', 'BUY', 'Luxury Penthouse', 999000.00, 'Selangor', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', 'c1125131-5d70-41e2-82ef-f2195b37e040');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', '2025-12-14 15:34:56.671', NULL, '2025-12-14 15:34:56.671', 0, 'Jalan Tanjung Tokong 2', 7500.00, 0, 0, '2025', 0, 'George Town', 'Malaysia', 'Prime residential land parcel in an affluent, established neighbourhood. Ready for immediate development of a luxury bungalow.', 'N/A', 'BUY', 'Bungalow Land for Development', 3800000.00, 'Pulau Pinang', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', 'aea78baf-9d4c-47a8-9d27-22a6ae1eb961');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('63169e74-3f75-414b-b686-f09d306917ef', '2025-12-14 15:35:09.916', NULL, '2025-12-14 15:35:09.916', 0, 'SS14/15, Subang Jaya', 1650.00, 3, 4, '1990', 2, 'Subang Jaya', 'Malaysia', 'Renovated double-storey terrace house in a prime Subang Jaya location. Close to schools, shopping malls, and major highways.', 'Double Storey', 'BUY', 'Terrace House in Subang Jaya', 680000.00, 'Selangor', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', '2e4a7e24-aff8-455f-945b-30d23e2a98be', '33ed0a47-e620-4147-b979-85f60cdc730c');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', '2025-12-14 15:35:20.151', NULL, '2025-12-14 15:35:20.151', 0, 'Level 10, Menara Permata', 650.00, 1, 0, '2021', 1, 'Johor Bahru', 'Malaysia', 'Plug-and-play office suite with modern furnishings, high-speed internet, and shared meeting facilities. Ideal for startups or regional branch offices.', '10th Floor', 'RENT', 'Fully Furnished Serviced Office Suite', 3200.00, 'Johor', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', 'b7436fa6-8de3-4bcf-b81a-7ce957c404b5');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', '2025-12-14 15:35:29.677', NULL, '2025-12-14 15:35:29.677', 0, 'Jalan Batu Ferringhi 7', 920.00, 2, 3, '1995', 1, 'Batu Ferringhi', 'Malaysia', 'Basic, well-located apartment unit just a stone''s throw from the beach. Excellent for a holiday home or permanent residence. Needs some minor touch-ups.', '5th Floor', 'BUY', 'Affordable Apartment near Beach', 280000.00, 'Pulau Pinang', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', '2e4a7e24-aff8-455f-945b-30d23e2a98be', 'becbd4b5-e610-492f-9497-1dfc5b7b2f73');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', '2025-12-14 15:35:40.839', NULL, '2025-12-14 15:35:40.839', 0, 'Jalan Harmoni 1/1, Precinct 1', 3200.00, 5, 5, '2016', 3, 'Putrajaya', 'Malaysia', 'Spacious and modern semi-detached house within a secured, gated, and guarded residential enclave. Comes with high-end fixtures and fittings.', 'Three Storey', 'BUY', 'Semi-Detached House in Gated Community', 1800000.00, 'W.P. Putrajaya', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', '2e4a7e24-aff8-455f-945b-30d23e2a98be', '8fcd43a5-5293-4afd-98ce-0922d9ea6316');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', '2025-12-14 15:35:48.827', NULL, '2025-12-14 15:35:48.827', 0, 'Jalan Perusahaan 3/1', 8500.00, 3, 0, '2010', 0, 'Shah Alam', 'Malaysia', 'Medium-sized industrial lot with high ceilings and a large loading bay. Located in a mature industrial park with easy access to the highway.', 'Ground + Mezzanine', 'RENT', 'Industrial Warehouse/Factory for Rent', 12000.00, 'Selangor', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', '61298eb1-d9e1-4f22-8ed1-87b7752ff0af');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', '2025-12-14 15:35:59.273', NULL, '2025-12-14 15:35:59.273', 0, 'Jalan Pahlawan 1', 4500.00, 4, 4, '2019', 3, 'Malacca City', 'Malaysia', 'Rare dual-key penthouse unit offering stunning views and a private rooftop garden. Ultra-luxury living in a central location.', 'Top Floor (40th)', 'BUY', 'Penthouse with Private Rooftop Garden', 2500000.00, 'Malacca', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', '2e4a7e24-aff8-455f-945b-30d23e2a98be', '37c5c2cb-65a5-40bc-a278-0479d951c108');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('37c47557-37b2-4e58-b429-0d3c510772bb', '2025-12-14 15:36:11.670', NULL, '2025-12-14 15:36:11.670', 0, 'Lorong 3, Taman Anggerik', 1050.00, 2, 3, '1985', 1, 'Kuantan', 'Malaysia', 'An entry-level townhouse in a quiet area, perfect for small families or as an investment property. Requires full renovation.', 'Upper Floor Unit', 'BUY', 'Basic Townhouse for First-Time Buyer', 195000.00, 'Pahang', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', '2e4a7e24-aff8-455f-945b-30d23e2a98be', 'a15e3e61-4d46-48ab-8e83-3fcab4985c82');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', '2025-12-14 15:36:22.245', NULL, '2025-12-14 15:36:22.245', 0, 'Lot 524, Mukim Hulu Langat', 43560.00, 0, 0, 'N/A', 0, 'Kajang', 'Malaysia', 'Freehold agricultural land, currently planted with mature fruit trees. Good access via a secondary road, close to the North-South Expressway.', 'N/A', 'BUY', 'Small Agricultural Land near Highway', 1200000.00, 'Selangor', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', 'aea78baf-9d4c-47a8-9d27-22a6ae1eb961');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', '2025-12-14 15:36:30.533', NULL, '2025-12-14 15:36:30.533', 0, 'Jalan Marina 5', 1150.00, 2, 2, '2017', 2, 'Port Dickson', 'Malaysia', 'High-end apartment unit with a direct, unobstructed sea view. Fully furnished with designer interiors. Located near premium dining and shopping.', '25th Floor', 'RENT', 'Luxury Sea-View Apartment', 3800.00, 'Negeri Sembilan', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', '2e4a7e24-aff8-455f-945b-30d23e2a98be', '33ed0a47-e620-4147-b979-85f60cdc730c');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', '2025-12-14 15:50:58.824', NULL, '2025-12-14 15:50:58.824', 0, 'Jalan Seri Tanjung Pinang', 1450.00, 2, 2, '2018', 2, 'George Town', 'Malaysia', 'Modern high-floor unit with breathtaking panoramic sea views. Fully equipped with smart home features and exclusive access to premium facilities.', 'Level 35', 'RENT', 'Luxury Seaview Condo @ Straits Quay', 4500.00, 'Penang', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', '2e4a7e24-aff8-455f-945b-30d23e2a98be', 'becbd4b5-e610-492f-9497-1dfc5b7b2f73');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', '2025-12-14 15:51:02.322', NULL, '2025-12-14 15:51:02.322', 0, 'Jalan PJU 5/14, Kota Damansara', 1800.00, 2, 0, '2010', 4, 'Petaling Jaya', 'Malaysia', 'Prime ground floor retail space with high visibility, suitable for cafe or restaurant use. Located in a bustling commercial hub with heavy foot traffic.', 'Ground Floor', 'RENT', 'Ground Floor Shop Lot for F&B @ Damansara', 8500.00, 'Selangor', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', '900907be-9851-4efd-8819-5a76425cc25a');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('8f0779eb-c580-494d-a631-7a94fd416b22', '2025-12-14 15:51:10.501', NULL, '2025-12-14 15:51:10.501', 0, 'Jalan Kebangsaan 3', 850.00, 2, 3, '2005', 1, 'Johor Bahru', 'Malaysia', 'Simple, clean, and spacious unit perfect for students or a small family. Located near UTM campus and various public transport links.', 'Level 8', 'RENT', 'Affordable 3-Bedroom Apartment @ Skudai', 950.00, 'Johor', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', '2e4a7e24-aff8-455f-945b-30d23e2a98be', 'becbd4b5-e610-492f-9497-1dfc5b7b2f73');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', '2025-12-14 15:51:14.706', NULL, '2025-12-14 15:51:14.706', 0, 'Jalan Stesen Sentral 5', 650.00, 1, 1, '2015', 1, 'Kuala Lumpur', 'Malaysia', 'Compact, ready-to-move-in office space in a premium location, perfect for startups or professional services. Direct link to public transport hub.', 'Level 15', 'RENT', 'Small Office/Home Office (SOHO) Unit @ KL Sentral', 2800.00, 'W.P. Kuala Lumpur', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', '900907be-9851-4efd-8819-5a76425cc25a');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', '2025-12-14 15:51:19.391', NULL, '2025-12-14 15:51:19.391', 0, 'Jalan Pipit', 550.00, 1, 1, '2017', 1, 'Puchong', 'Malaysia', 'Tastefully furnished studio, ideal for a single professional. Features a small balcony overlooking the cityscape. Excellent connectivity via LDP.', 'Level 18', 'RENT', 'Cozy Studio Unit with Balcony @ Puchong', 1300.00, 'Selangor', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', '2e4a7e24-aff8-455f-945b-30d23e2a98be', 'becbd4b5-e610-492f-9497-1dfc5b7b2f73');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('fc176719-b367-4454-bdbd-1942a0858c56', '2025-12-14 15:51:25.043', NULL, '2025-12-14 15:51:25.043', 0, 'Jalan Teknokrat 5', 15000.00, 0, 0, 'N/A', 0, 'Cyberjaya', 'Malaysia', 'Spacious, flat corner plot in a rapidly developing area, designated for commercial development. Suitable for building a corporate office or specialized center.', 'N/A', 'BUY', 'Premium Commercial Bungalow Land @ Cyberjaya', 5200000.00, 'Selangor', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', '900907be-9851-4efd-8819-5a76425cc25a');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', '2025-12-14 15:51:30.079', NULL, '2025-12-14 15:51:30.079', 0, 'Jalan Kiara 3', 3800.00, 5, 4, '2013', 3, 'Kuala Lumpur', 'Malaysia', 'Rare, spacious duplex penthouse with double-volume ceiling in the living area and private lift lobby access. Comes with three dedicated parking bays.', 'Penthouse', 'BUY', 'Exclusive Duplex Penthouse @ Mont Kiara', 3500000.00, 'W.P. Kuala Lumpur', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', '2e4a7e24-aff8-455f-945b-30d23e2a98be', 'becbd4b5-e610-492f-9497-1dfc5b7b2f73');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', '2025-12-14 15:51:34.821', NULL, '2025-12-14 15:51:34.821', 0, 'Lingkaran Syed Putra', 880.00, 1, 0, '2007', 1, 'Kuala Lumpur', 'Malaysia', 'High-floor office unit with excellent natural light and unblocked city view. Strategically located within a mixed-development area near shopping and F&B.', 'Level 25', 'BUY', 'Corner Lot Office Suite @ Mid Valley', 980000.00, 'W.P. Kuala Lumpur', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', '900907be-9851-4efd-8819-5a76425cc25a');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', '2025-12-14 15:51:41.789', NULL, '2025-12-14 15:51:41.789', 0, 'Jalan Lintas', 1200.00, 2, 3, '2024', 2, 'Kota Kinabalu', 'Malaysia', 'Brand new, low-density development focusing on large living spaces and resort-style facilities. Located 10 minutes from the city center.', 'Level 12A', 'BUY', 'New Launch Resort-Style Condo @ Kota Kinabalu', 680000.00, 'Sabah', 'AVAILABLE', '09ce0870-2301-41c2-93c6-9974d1ef672f', '2e4a7e24-aff8-455f-945b-30d23e2a98be', 'becbd4b5-e610-492f-9497-1dfc5b7b2f73');
INSERT INTO public.property
(id, created_at, deleted_at, updated_at, "version", address, area_sqft, bathrooms, bedrooms, built_year, carparks, city, country, description, floor_level, listing_type, "name", price, state, status, agent_id, category_id, type_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', '2025-12-14 15:51:46.452', NULL, '2025-12-14 15:51:46.452', 0, 'Jalan Merdeka', 2200.00, 2, 1, '1940', 0, 'Melaka City', 'Malaysia', 'Charming, well-maintained pre-war shop house with high commercial potential. Located in a UNESCO Heritage zone popular with tourists and locals.', 'Ground & First Floor', 'BUY', 'Heritage Two-Storey Shop House @ Melaka Raya', 1100000.00, 'Melaka', 'AVAILABLE', 'd55c3970-df42-4aae-b637-4f64ea985136', 'fa80a06d-ed85-4c65-aa5b-20f4461f6feb', '900907be-9851-4efd-8819-5a76425cc25a');


CREATE TABLE public.property_amenity (
	property_id varchar(255) NOT NULL,
	amenity_id varchar(255) NOT NULL
);


-- public.property_amenity foreign keys

ALTER TABLE public.property_amenity ADD CONSTRAINT fkbcnmila9l5f3dvtwthy43fik6 FOREIGN KEY (property_id) REFERENCES public.property(id);
ALTER TABLE public.property_amenity ADD CONSTRAINT fkf7orq01wmq6q05bbtwyuoolaf FOREIGN KEY (amenity_id) REFERENCES public.amenity(id);



INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('6d825d30-6f13-4fa8-af39-623d2d57b3f5', '5ae05fa7-94e2-40be-afa1-ee61c63f4c3e');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('fb9e31e7-bf82-44e1-ad3b-68edaed920a4', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('fb9e31e7-bf82-44e1-ad3b-68edaed920a4', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('fb9e31e7-bf82-44e1-ad3b-68edaed920a4', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', '5ae05fa7-94e2-40be-afa1-ee61c63f4c3e');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', 'bc60ad19-4de9-4d32-9a1b-2a8e5682d5aa');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('3c9bd261-2901-40c9-988e-827b1d26494d', '2a7331b5-b173-4983-8b3e-2999bc06768d');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('3c9bd261-2901-40c9-988e-827b1d26494d', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', '5ae05fa7-94e2-40be-afa1-ee61c63f4c3e');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('199b4d52-7c0a-492e-b6ae-a632684cea97', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('199b4d52-7c0a-492e-b6ae-a632684cea97', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', '2a7331b5-b173-4983-8b3e-2999bc06768d');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', 'bc60ad19-4de9-4d32-9a1b-2a8e5682d5aa');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('b4749694-dd89-406e-bcf2-88e46795354d', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('b4749694-dd89-406e-bcf2-88e46795354d', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('b4749694-dd89-406e-bcf2-88e46795354d', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('b4749694-dd89-406e-bcf2-88e46795354d', '5ae05fa7-94e2-40be-afa1-ee61c63f4c3e');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', 'bc60ad19-4de9-4d32-9a1b-2a8e5682d5aa');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', '2a7331b5-b173-4983-8b3e-2999bc06768d');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', 'bc60ad19-4de9-4d32-9a1b-2a8e5682d5aa');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('63169e74-3f75-414b-b686-f09d306917ef', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('63169e74-3f75-414b-b686-f09d306917ef', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('63169e74-3f75-414b-b686-f09d306917ef', '5ae05fa7-94e2-40be-afa1-ee61c63f4c3e');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', 'bc60ad19-4de9-4d32-9a1b-2a8e5682d5aa');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', '5ae05fa7-94e2-40be-afa1-ee61c63f4c3e');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', '2a7331b5-b173-4983-8b3e-2999bc06768d');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', 'bc60ad19-4de9-4d32-9a1b-2a8e5682d5aa');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', '2a7331b5-b173-4983-8b3e-2999bc06768d');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('37c47557-37b2-4e58-b429-0d3c510772bb', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('37c47557-37b2-4e58-b429-0d3c510772bb', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('37c47557-37b2-4e58-b429-0d3c510772bb', '5ae05fa7-94e2-40be-afa1-ee61c63f4c3e');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', '2a7331b5-b173-4983-8b3e-2999bc06768d');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', '2a7331b5-b173-4983-8b3e-2999bc06768d');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', 'bc60ad19-4de9-4d32-9a1b-2a8e5682d5aa');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', '2a7331b5-b173-4983-8b3e-2999bc06768d');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', 'bc60ad19-4de9-4d32-9a1b-2a8e5682d5aa');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', '5ae05fa7-94e2-40be-afa1-ee61c63f4c3e');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('8f0779eb-c580-494d-a631-7a94fd416b22', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('8f0779eb-c580-494d-a631-7a94fd416b22', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('8f0779eb-c580-494d-a631-7a94fd416b22', '5ae05fa7-94e2-40be-afa1-ee61c63f4c3e');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', '2a7331b5-b173-4983-8b3e-2999bc06768d');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', 'bc60ad19-4de9-4d32-9a1b-2a8e5682d5aa');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('fc176719-b367-4454-bdbd-1942a0858c56', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('fc176719-b367-4454-bdbd-1942a0858c56', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('fc176719-b367-4454-bdbd-1942a0858c56', '5ae05fa7-94e2-40be-afa1-ee61c63f4c3e');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', '2a7331b5-b173-4983-8b3e-2999bc06768d');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', 'bc60ad19-4de9-4d32-9a1b-2a8e5682d5aa');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', 'a9cb33e0-5f02-4c81-bace-82edbc43c7c5');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', '1d3cf4a5-38fd-4f52-b04f-04a4915c180b');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', '5ae05fa7-94e2-40be-afa1-ee61c63f4c3e');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', '2a7331b5-b173-4983-8b3e-2999bc06768d');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', 'bc60ad19-4de9-4d32-9a1b-2a8e5682d5aa');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', 'e95f7c86-2457-4594-9dae-8d37931150ed');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', 'a4630389-1f3f-4b9a-9a5f-3c93d6d15fda');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', 'adb92ea5-d626-4535-9511-1544a87d2886');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', '4b3f6650-3777-4587-b597-2d819a490216');
INSERT INTO public.property_amenity
(property_id, amenity_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', 'e95f7c86-2457-4594-9dae-8d37931150ed');




CREATE TABLE public.property_facility (
	property_id varchar(255) NOT NULL,
	facility_id varchar(255) NOT NULL
);


-- public.property_facility foreign keys

ALTER TABLE public.property_facility ADD CONSTRAINT fkgxe0742o0owb12hardu2xpy83 FOREIGN KEY (facility_id) REFERENCES public.facility(id);
ALTER TABLE public.property_facility ADD CONSTRAINT fks4q7v9o9en1gje5q1tpi5c32v FOREIGN KEY (property_id) REFERENCES public.property(id);


INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('6d825d30-6f13-4fa8-af39-623d2d57b3f5', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('fb9e31e7-bf82-44e1-ad3b-68edaed920a4', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('fb9e31e7-bf82-44e1-ad3b-68edaed920a4', 'e3570d31-fb98-456b-a171-988ada9535bc');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('fb9e31e7-bf82-44e1-ad3b-68edaed920a4', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('3c9bd261-2901-40c9-988e-827b1d26494d', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('3c9bd261-2901-40c9-988e-827b1d26494d', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', '4cf3575b-484a-482c-a1b0-ddabf0fe839d');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', 'e3570d31-fb98-456b-a171-988ada9535bc');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', 'b104cf96-7361-4d15-992d-1a92f0dde2ad');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('199b4d52-7c0a-492e-b6ae-a632684cea97', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('199b4d52-7c0a-492e-b6ae-a632684cea97', 'b104cf96-7361-4d15-992d-1a92f0dde2ad');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('199b4d52-7c0a-492e-b6ae-a632684cea97', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', '4cf3575b-484a-482c-a1b0-ddabf0fe839d');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('b4749694-dd89-406e-bcf2-88e46795354d', 'e3570d31-fb98-456b-a171-988ada9535bc');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('b4749694-dd89-406e-bcf2-88e46795354d', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('b4749694-dd89-406e-bcf2-88e46795354d', 'c46d4f60-1583-40e4-8016-1a0396f51b32');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', 'c46d4f60-1583-40e4-8016-1a0396f51b32');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', 'b104cf96-7361-4d15-992d-1a92f0dde2ad');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', 'c46d4f60-1583-40e4-8016-1a0396f51b32');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', 'e3570d31-fb98-456b-a171-988ada9535bc');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', 'b104cf96-7361-4d15-992d-1a92f0dde2ad');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('63169e74-3f75-414b-b686-f09d306917ef', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('63169e74-3f75-414b-b686-f09d306917ef', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('63169e74-3f75-414b-b686-f09d306917ef', 'c46d4f60-1583-40e4-8016-1a0396f51b32');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', '4cf3575b-484a-482c-a1b0-ddabf0fe839d');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', 'e3570d31-fb98-456b-a171-988ada9535bc');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', 'b104cf96-7361-4d15-992d-1a92f0dde2ad');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', 'b104cf96-7361-4d15-992d-1a92f0dde2ad');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', 'e3570d31-fb98-456b-a171-988ada9535bc');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', 'c46d4f60-1583-40e4-8016-1a0396f51b32');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', 'b104cf96-7361-4d15-992d-1a92f0dde2ad');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', '4cf3575b-484a-482c-a1b0-ddabf0fe839d');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', 'e3570d31-fb98-456b-a171-988ada9535bc');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('37c47557-37b2-4e58-b429-0d3c510772bb', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('37c47557-37b2-4e58-b429-0d3c510772bb', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('37c47557-37b2-4e58-b429-0d3c510772bb', 'c46d4f60-1583-40e4-8016-1a0396f51b32');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', 'e3570d31-fb98-456b-a171-988ada9535bc');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', 'c46d4f60-1583-40e4-8016-1a0396f51b32');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', 'b104cf96-7361-4d15-992d-1a92f0dde2ad');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', '4cf3575b-484a-482c-a1b0-ddabf0fe839d');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', 'e3570d31-fb98-456b-a171-988ada9535bc');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', 'c46d4f60-1583-40e4-8016-1a0396f51b32');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('8f0779eb-c580-494d-a631-7a94fd416b22', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('8f0779eb-c580-494d-a631-7a94fd416b22', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('8f0779eb-c580-494d-a631-7a94fd416b22', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', 'e3570d31-fb98-456b-a171-988ada9535bc');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', 'b104cf96-7361-4d15-992d-1a92f0dde2ad');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', '4cf3575b-484a-482c-a1b0-ddabf0fe839d');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', 'c46d4f60-1583-40e4-8016-1a0396f51b32');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', 'b104cf96-7361-4d15-992d-1a92f0dde2ad');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('fc176719-b367-4454-bdbd-1942a0858c56', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('fc176719-b367-4454-bdbd-1942a0858c56', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('fc176719-b367-4454-bdbd-1942a0858c56', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', '4cf3575b-484a-482c-a1b0-ddabf0fe839d');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', 'e3570d31-fb98-456b-a171-988ada9535bc');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', 'c46d4f60-1583-40e4-8016-1a0396f51b32');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', 'b104cf96-7361-4d15-992d-1a92f0dde2ad');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', '223fce88-b897-44a5-9853-d43ef3b9e103');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', 'ac522270-79f8-47bb-9e66-43a92b31ebf6');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', '4cf3575b-484a-482c-a1b0-ddabf0fe839d');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', 'c46d4f60-1583-40e4-8016-1a0396f51b32');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', 'b104cf96-7361-4d15-992d-1a92f0dde2ad');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', '5c9106ef-0f9f-4f32-8549-0c504fc3aa74');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', 'a5d7c3bd-ecdf-48f5-bb0b-3c241318f841');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', '0f5c3b41-474b-402e-9eb8-c66a018f59f1');
INSERT INTO public.property_facility
(property_id, facility_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', '223fce88-b897-44a5-9853-d43ef3b9e103');





CREATE TABLE public.property_tag (
	property_id varchar(255) NOT NULL,
	tag_id varchar(255) NOT NULL
);


-- public.property_tag foreign keys

ALTER TABLE public.property_tag ADD CONSTRAINT fk7fgmocdh3rjfs5xvj0kn5qvq4 FOREIGN KEY (tag_id) REFERENCES public.tag(id);
ALTER TABLE public.property_tag ADD CONSTRAINT fkt9067dbwo7enxb061i9ye9pt6 FOREIGN KEY (property_id) REFERENCES public.property(id);


INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('6d825d30-6f13-4fa8-af39-623d2d57b3f5', '97b33781-334e-4c74-aff5-ff74aeb07778');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fb9e31e7-bf82-44e1-ad3b-68edaed920a4', '97b33781-334e-4c74-aff5-ff74aeb07778');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fb9e31e7-bf82-44e1-ad3b-68edaed920a4', '7f28fcb9-538e-4ee4-a62c-c620efd6efbe');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fb9e31e7-bf82-44e1-ad3b-68edaed920a4', '12308e46-176e-46ec-8463-538e810af72c');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fb9e31e7-bf82-44e1-ad3b-68edaed920a4', 'd1bfded1-aace-44f9-ae3d-04b99523b5a8');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', '12308e46-176e-46ec-8463-538e810af72c');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('c4525daf-7dbf-4d5f-80f2-4482a56ca5d0', 'd1bfded1-aace-44f9-ae3d-04b99523b5a8');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('3c9bd261-2901-40c9-988e-827b1d26494d', '0b923851-88fd-4537-a769-70dd6e05b715');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('3c9bd261-2901-40c9-988e-827b1d26494d', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', '0b923851-88fd-4537-a769-70dd6e05b715');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', '306f4e31-625c-49bc-a572-801f4a102efb');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', '49b1ecbf-4463-4a2b-9844-b6331ba6a042');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', 'e8616fd8-330a-4373-87df-465682de7be7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', 'd1bfded1-aace-44f9-ae3d-04b99523b5a8');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', '7952071c-c822-4d68-8c16-875362a1db67');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0', '7f28fcb9-538e-4ee4-a62c-c620efd6efbe');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('199b4d52-7c0a-492e-b6ae-a632684cea97', '0b923851-88fd-4537-a769-70dd6e05b715');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('199b4d52-7c0a-492e-b6ae-a632684cea97', 'c0adc381-efe4-4fc1-a5b9-ce75a5a4b3e7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('199b4d52-7c0a-492e-b6ae-a632684cea97', '540594d2-a6b2-49a7-af5c-37db0f8f4a27');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', '0b923851-88fd-4537-a769-70dd6e05b715');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', '12308e46-176e-46ec-8463-538e810af72c');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('8a79d08e-f179-4947-aa23-4ba101483b09', 'c0adc381-efe4-4fc1-a5b9-ce75a5a4b3e7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('b4749694-dd89-406e-bcf2-88e46795354d', '306f4e31-625c-49bc-a572-801f4a102efb');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('b4749694-dd89-406e-bcf2-88e46795354d', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('b4749694-dd89-406e-bcf2-88e46795354d', 'b0a9acc8-e467-4a7d-aadd-87bf1c807f8a');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('b4749694-dd89-406e-bcf2-88e46795354d', '540594d2-a6b2-49a7-af5c-37db0f8f4a27');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', 'c0adc381-efe4-4fc1-a5b9-ce75a5a4b3e7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', '49b1ecbf-4463-4a2b-9844-b6331ba6a042');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', 'e8616fd8-330a-4373-87df-465682de7be7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('ed6c7d4e-7438-428c-9382-a1d7645bd148', '7952071c-c822-4d68-8c16-875362a1db67');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', '21a0d39f-06a1-4b67-b8a0-f4a0e1790b0e');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', '97b33781-334e-4c74-aff5-ff74aeb07778');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('11a79cc4-ec4b-416b-8c9e-14c33ccae11b', '7f28fcb9-538e-4ee4-a62c-c620efd6efbe');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', 'd1bfded1-aace-44f9-ae3d-04b99523b5a8');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', '7952071c-c822-4d68-8c16-875362a1db67');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', '21a0d39f-06a1-4b67-b8a0-f4a0e1790b0e');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f', '97b33781-334e-4c74-aff5-ff74aeb07778');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('63169e74-3f75-414b-b686-f09d306917ef', '12308e46-176e-46ec-8463-538e810af72c');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('63169e74-3f75-414b-b686-f09d306917ef', '306f4e31-625c-49bc-a572-801f4a102efb');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('63169e74-3f75-414b-b686-f09d306917ef', 'b0a9acc8-e467-4a7d-aadd-87bf1c807f8a');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('63169e74-3f75-414b-b686-f09d306917ef', '540594d2-a6b2-49a7-af5c-37db0f8f4a27');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', '0b923851-88fd-4537-a769-70dd6e05b715');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', 'c0adc381-efe4-4fc1-a5b9-ce75a5a4b3e7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', 'e8616fd8-330a-4373-87df-465682de7be7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('7573c1cc-544d-4cae-bdd7-918aad84f657', '7f28fcb9-538e-4ee4-a62c-c620efd6efbe');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', 'd1bfded1-aace-44f9-ae3d-04b99523b5a8');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', '7952071c-c822-4d68-8c16-875362a1db67');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', '21a0d39f-06a1-4b67-b8a0-f4a0e1790b0e');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', '97b33781-334e-4c74-aff5-ff74aeb07778');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3', '7f28fcb9-538e-4ee4-a62c-c620efd6efbe');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', '0b923851-88fd-4537-a769-70dd6e05b715');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', '12308e46-176e-46ec-8463-538e810af72c');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', 'c0adc381-efe4-4fc1-a5b9-ce75a5a4b3e7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', '306f4e31-625c-49bc-a572-801f4a102efb');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c', 'b0a9acc8-e467-4a7d-aadd-87bf1c807f8a');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', 'c0adc381-efe4-4fc1-a5b9-ce75a5a4b3e7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', '49b1ecbf-4463-4a2b-9844-b6331ba6a042');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', 'e8616fd8-330a-4373-87df-465682de7be7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', '7952071c-c822-4d68-8c16-875362a1db67');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('0d3c36b9-72d6-4dad-bb53-faf6f45582c8', '7f28fcb9-538e-4ee4-a62c-c620efd6efbe');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', '0b923851-88fd-4537-a769-70dd6e05b715');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', '12308e46-176e-46ec-8463-538e810af72c');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', 'c0adc381-efe4-4fc1-a5b9-ce75a5a4b3e7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', '306f4e31-625c-49bc-a572-801f4a102efb');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('e4943276-07a4-4859-affe-e83c20d2dcb8', 'b0a9acc8-e467-4a7d-aadd-87bf1c807f8a');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('37c47557-37b2-4e58-b429-0d3c510772bb', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('37c47557-37b2-4e58-b429-0d3c510772bb', 'd1bfded1-aace-44f9-ae3d-04b99523b5a8');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('37c47557-37b2-4e58-b429-0d3c510772bb', '7952071c-c822-4d68-8c16-875362a1db67');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', '306f4e31-625c-49bc-a572-801f4a102efb');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', '540594d2-a6b2-49a7-af5c-37db0f8f4a27');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', 'd1bfded1-aace-44f9-ae3d-04b99523b5a8');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', '7952071c-c822-4d68-8c16-875362a1db67');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', '21a0d39f-06a1-4b67-b8a0-f4a0e1790b0e');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('7fa3ecfc-da28-41bd-bf0a-58dcb34228ec', '97b33781-334e-4c74-aff5-ff74aeb07778');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', '0b923851-88fd-4537-a769-70dd6e05b715');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', '12308e46-176e-46ec-8463-538e810af72c');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', 'c0adc381-efe4-4fc1-a5b9-ce75a5a4b3e7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('4a6e4fc3-6383-405c-8933-51cba236a98c', 'b0a9acc8-e467-4a7d-aadd-87bf1c807f8a');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', '0b923851-88fd-4537-a769-70dd6e05b715');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', 'c0adc381-efe4-4fc1-a5b9-ce75a5a4b3e7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('724504e4-e41b-49ab-8d5c-0aedf8257d40', '7952071c-c822-4d68-8c16-875362a1db67');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', '12308e46-176e-46ec-8463-538e810af72c');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', '306f4e31-625c-49bc-a572-801f4a102efb');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', 'b0a9acc8-e467-4a7d-aadd-87bf1c807f8a');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', '21a0d39f-06a1-4b67-b8a0-f4a0e1790b0e');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', '97b33781-334e-4c74-aff5-ff74aeb07778');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe', '7f28fcb9-538e-4ee4-a62c-c620efd6efbe');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('8f0779eb-c580-494d-a631-7a94fd416b22', '540594d2-a6b2-49a7-af5c-37db0f8f4a27');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('8f0779eb-c580-494d-a631-7a94fd416b22', '49b1ecbf-4463-4a2b-9844-b6331ba6a042');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('8f0779eb-c580-494d-a631-7a94fd416b22', '97b33781-334e-4c74-aff5-ff74aeb07778');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', 'c0adc381-efe4-4fc1-a5b9-ce75a5a4b3e7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', 'b0a9acc8-e467-4a7d-aadd-87bf1c807f8a');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', 'e8616fd8-330a-4373-87df-465682de7be7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', '21a0d39f-06a1-4b67-b8a0-f4a0e1790b0e');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('8a2896e9-8e7a-414f-a519-f4f8e5c9e586', '97b33781-334e-4c74-aff5-ff74aeb07778');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', '12308e46-176e-46ec-8463-538e810af72c');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', 'd1bfded1-aace-44f9-ae3d-04b99523b5a8');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('0d693c7e-6b83-46a4-add6-3d288df12bc7', '7952071c-c822-4d68-8c16-875362a1db67');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fc176719-b367-4454-bdbd-1942a0858c56', '0b923851-88fd-4537-a769-70dd6e05b715');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fc176719-b367-4454-bdbd-1942a0858c56', '306f4e31-625c-49bc-a572-801f4a102efb');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fc176719-b367-4454-bdbd-1942a0858c56', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fc176719-b367-4454-bdbd-1942a0858c56', '540594d2-a6b2-49a7-af5c-37db0f8f4a27');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('fc176719-b367-4454-bdbd-1942a0858c56', 'e8616fd8-330a-4373-87df-465682de7be7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', 'c0adc381-efe4-4fc1-a5b9-ce75a5a4b3e7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae', 'd1bfded1-aace-44f9-ae3d-04b99523b5a8');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', '306f4e31-625c-49bc-a572-801f4a102efb');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', '49b1ecbf-4463-4a2b-9844-b6331ba6a042');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', 'e8616fd8-330a-4373-87df-465682de7be7');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('a8019f8b-4ca2-44cd-adf4-1431d3bce839', '7952071c-c822-4d68-8c16-875362a1db67');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', '0b923851-88fd-4537-a769-70dd6e05b715');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', '12308e46-176e-46ec-8463-538e810af72c');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', '99f4148a-4793-4872-b537-4ba64829e770');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', '97b33781-334e-4c74-aff5-ff74aeb07778');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('2b84e11b-af73-490f-8a4d-28854aaca203', '7f28fcb9-538e-4ee4-a62c-c620efd6efbe');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', '12308e46-176e-46ec-8463-538e810af72c');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', 'b0a9acc8-e467-4a7d-aadd-87bf1c807f8a');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', '540594d2-a6b2-49a7-af5c-37db0f8f4a27');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', '49b1ecbf-4463-4a2b-9844-b6331ba6a042');
INSERT INTO public.property_tag
(property_id, tag_id)
VALUES('166e2b95-a604-4333-aafb-b15005eb8241', '7f28fcb9-538e-4ee4-a62c-c620efd6efbe');




CREATE TABLE public.property_faq (
	id varchar(255) NOT NULL,
	created_at timestamp(6) NULL,
	deleted_at timestamp(6) NULL,
	updated_at timestamp(6) NULL,
	"version" int4 NOT NULL,
	answer text NOT NULL,
	order_no int4 NULL,
	question text NOT NULL,
	property_id varchar(255) NULL,
	CONSTRAINT property_faq_pkey PRIMARY KEY (id)
);

-- public.property_faq foreign keys

ALTER TABLE public.property_faq ADD CONSTRAINT fk4qkmm6n3vaxqm9jotyvtbuamp FOREIGN KEY (property_id) REFERENCES public.property(id);


INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('1233b2bd-86e7-46f7-9697-e0e7e9cdc3f3', '2025-12-14 15:02:34.782', NULL, '2025-12-14 15:02:34.782', 0, 'No, utilities (electricity, water, and Wi-Fi/Internet) are not included. They are the responsibility of the tenant.', 1, 'Are utilities included in the monthly rent?', 'f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('9db1dd2e-59b5-40da-84ca-f1510dab7019', '2025-12-14 15:02:34.782', NULL, '2025-12-14 15:02:34.782', 0, 'The famous Canning Garden food court and commercial centre are less than a 5-minute drive or a 15-minute walk away.', 2, 'How far is it from the nearest food court?', 'f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('9d20aeb4-1932-4c75-91b5-112e52ec0fe2', '2025-12-14 15:02:34.783', NULL, '2025-12-14 15:02:34.783', 0, 'No, smoking is strictly prohibited inside the unit. Smoking is only permitted in the designated outdoor yard/car porch area.', 3, 'Is smoking allowed inside the property?', 'f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('a857c98f-5be6-4472-8806-f7ff2dcaa6d2', '2025-12-13 15:21:52.004', NULL, '2025-12-13 15:21:52.004', 0, 'Yes, the apartment comes fully furnished with modern furniture and kitchen appliances.', 1, 'Is this apartment fully furnished?', '6d825d30-6f13-4fa8-af39-623d2d57b3f5');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('7929c437-b8f6-4050-909a-010835056b18', '2025-12-13 15:21:52.008', NULL, '2025-12-13 15:21:52.008', 0, 'Yes, the property is foreigner-friendly and meets the minimum purchase price requirements.', 2, 'Is this property suitable for foreigners?', '6d825d30-6f13-4fa8-af39-623d2d57b3f5');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('7d6ca978-5857-4012-8b39-96af5ed55107', '2025-12-13 15:21:52.008', NULL, '2025-12-13 15:21:52.008', 0, 'Small pets are allowed, subject to management approval and house rules.', 3, 'Are pets allowed in the building?', '6d825d30-6f13-4fa8-af39-623d2d57b3f5');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('d2ad9162-d62a-4b27-9513-8f99c0c6711f', '2025-12-13 15:21:52.009', NULL, '2025-12-13 15:21:52.009', 0, 'Facilities include a swimming pool, gymnasium, 24-hour security, and covered parking.', 4, 'What facilities are available in the building?', '6d825d30-6f13-4fa8-af39-623d2d57b3f5');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('29494ae8-0af4-4240-a7e1-5732364ab528', '2025-12-13 16:05:21.986', NULL, '2025-12-13 16:05:21.986', 0, 'Yes, the condo has spacious units and is family-friendly.', 1, 'Is this condo suitable for families?', 'fb9e31e7-bf82-44e1-ad3b-68edaed920a4');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('091c4d8b-3d42-496f-b887-8662f385994c', '2025-12-13 16:05:21.986', NULL, '2025-12-13 16:05:21.986', 0, 'Yes, each unit comes with 2–3 parking spaces.', 2, 'Does the condo include parking?', 'fb9e31e7-bf82-44e1-ad3b-68edaed920a4');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('f42f15db-8729-4254-b731-6bcd8eb391af', '2025-12-13 16:05:21.987', NULL, '2025-12-13 16:05:21.987', 0, 'Small pets are allowed subject to management approval.', 3, 'Are pets allowed?', 'fb9e31e7-bf82-44e1-ad3b-68edaed920a4');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('1070e6f0-4807-4392-b3bd-3de981ea038c', '2025-12-13 16:05:21.987', NULL, '2025-12-13 16:05:21.987', 0, 'Facilities include a swimming pool, gym, rooftop lounge, and 24-hour security.', 4, 'What shared facilities are available?', 'fb9e31e7-bf82-44e1-ad3b-68edaed920a4');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('c4a32407-4142-4c00-80f3-dad6ebf15b1e', '2025-12-14 10:15:55.869', NULL, '2025-12-14 10:15:55.869', 0, 'No, utilities (electricity, water, Wi-Fi) are not included and are the responsibility of the tenant.', 1, 'Are utilities included in the monthly rent?', 'c4525daf-7dbf-4d5f-80f2-4482a56ca5d0');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('e517809c-5fa8-4784-aa57-a1f75f87f29b', '2025-12-14 10:15:55.873', NULL, '2025-12-14 10:15:55.873', 0, 'No, this is a unit within an open residential area, but it has individual house security features like an alarm system.', 2, 'Is the Townhouse part of a gated community?', 'c4525daf-7dbf-4d5f-80f2-4482a56ca5d0');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('aa274fdb-06ff-477c-ae80-eb587391294e', '2025-12-14 10:15:55.874', NULL, '2025-12-14 10:15:55.874', 0, 'A standard 2 months security deposit plus half month utility deposit is required upon signing the tenancy agreement.', 3, 'What is the security deposit required?', 'c4525daf-7dbf-4d5f-80f2-4482a56ca5d0');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('81610dfe-9f3b-4537-99cb-6939b6e3ddbe', '2025-12-14 10:15:55.874', NULL, '2025-12-14 10:15:55.874', 0, 'The famous Canning Garden food court is less than a 5-minute drive away.', 4, 'How far is it from the nearest food court?', 'c4525daf-7dbf-4d5f-80f2-4482a56ca5d0');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('b304ac12-3373-4ffb-b03d-a3f15a122501', '2025-12-14 15:29:00.542', NULL, '2025-12-14 15:29:00.542', 0, 'No, unfortunately, the building management does not permit pets for rental units.', 1, 'Is the unit pet-friendly?', '199b4d52-7c0a-492e-b6ae-a632684cea97');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('dc2aee24-c0ef-478b-a919-4b14795262b4', '2025-12-14 15:29:00.542', NULL, '2025-12-14 15:29:00.542', 0, 'The maintenance fee is covered by the owner and included in the rental price.', 2, 'What is the maintenance fee?', '199b4d52-7c0a-492e-b6ae-a632684cea97');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('b08ab653-630f-4e34-a3ee-6c7b80e7983c', '2025-12-14 14:57:42.147', NULL, '2025-12-14 14:57:42.147', 0, '1232', 1, 'qwe', '3c9bd261-2901-40c9-988e-827b1d26494d');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('8d78ee2c-cdc6-4b58-a64b-23c8d1bb3411', '2025-12-14 15:33:35.081', NULL, '2025-12-14 15:33:35.081', 0, 'It is a freehold property.', 1, 'Is this a freehold or leasehold property?', '8a79d08e-f179-4947-aa23-4ba101483b09');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('5e7024d1-a0fe-487e-a438-17313af8e8af', '2025-12-14 15:33:35.082', NULL, '2025-12-14 15:33:35.082', 0, 'Unfortunately, the management strictly prohibits all pets.', 2, 'Are pets allowed?', '8a79d08e-f179-4947-aa23-4ba101483b09');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('e0e58026-f0ab-4593-a8ab-a29271039761', '2025-12-14 15:33:35.082', NULL, '2025-12-14 15:33:35.082', 0, 'The maintenance fee is included in the monthly rent.', 3, 'What is the maintenance fee?', '8a79d08e-f179-4947-aa23-4ba101483b09');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('180a8450-474f-4396-852e-3a9d2db93561', '2025-12-14 15:34:01.723', NULL, '2025-12-14 15:34:01.723', 0, 'The house is partially furnished with basic lightings, fans, and water heaters.', 1, 'Is the house partially or fully furnished?', 'b4749694-dd89-406e-bcf2-88e46795354d');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('04cc6ec7-d7aa-4c1e-95f0-f2e9c15dc5b2', '2025-12-14 15:34:01.724', NULL, '2025-12-14 15:34:01.724', 0, 'The minimum tenancy is 1 year.', 2, 'What is the minimum tenancy period?', 'b4749694-dd89-406e-bcf2-88e46795354d');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('bdfce7c0-4bf5-42da-9811-ddaa47221265', '2025-12-14 15:34:26.790', NULL, '2025-12-14 15:34:26.790', 0, 'The asking price is RM 1,800,000 (negotiable).', 1, 'What is the asking price for sale?', 'ed6c7d4e-7438-428c-9382-a1d7645bd148');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('aeadd7dd-a56b-4530-85b5-9fc369051656', '2025-12-14 15:34:26.790', NULL, '2025-12-14 15:34:26.790', 0, 'Yes, heavy industrial businesses are not permitted by the building management.', 2, 'Is there a specific business type that is restricted?', 'ed6c7d4e-7438-428c-9382-a1d7645bd148');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('ca910686-a2cc-441d-857d-d9b27da66981', '2025-12-14 15:34:44.303', NULL, '2025-12-14 15:34:44.303', 0, 'Yes, a compact washing machine and dryer is provided in the kitchen area.', 1, 'Is there a laundry room in the unit?', '11a79cc4-ec4b-416b-8c9e-14c33ccae11b');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('28072467-7b2e-40b8-b81b-ab2136fefadd', '2025-12-14 15:34:44.303', NULL, '2025-12-14 15:34:44.303', 0, 'One dedicated covered parking bay is included in the monthly rent.', 2, 'Is the rental inclusive of parking?', '11a79cc4-ec4b-416b-8c9e-14c33ccae11b');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('f600e9cd-5514-4d30-9ff1-859acd25171a', '2025-12-14 15:34:44.303', NULL, '2025-12-14 15:34:44.303', 0, 'Please contact the agent via WhatsApp or call to arrange a viewing appointment.', 3, 'How do I book a viewing?', '11a79cc4-ec4b-416b-8c9e-14c33ccae11b');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('575a4342-0b0f-4b90-b125-81a481ae4c38', '2025-12-14 15:34:56.672', NULL, '2025-12-14 15:34:56.672', 0, 'Yes, basic infrastructure connection points are available at the boundary.', 1, 'Is the land ready with infrastructure (water/electricity)?', 'cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('b1450796-8507-475b-8322-a5a49a223e54', '2025-12-14 15:34:56.672', NULL, '2025-12-14 15:34:56.672', 0, 'Freehold title.', 2, 'What is the land tenure?', 'cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('82cdda4b-f184-4c3b-acd2-09444778f181', '2025-12-14 15:35:09.916', NULL, '2025-12-14 15:35:09.916', 0, 'Yes, for serious buyers, the price is slightly negotiable.', 1, 'Is the sale price negotiable?', '63169e74-3f75-414b-b686-f09d306917ef');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('59e91be5-ccfd-4577-9345-3ea628d2cf70', '2025-12-14 15:35:09.916', NULL, '2025-12-14 15:35:09.916', 0, 'The house was fully renovated in 2017 with new wiring and plumbing.', 2, 'When was the last renovation done?', '63169e74-3f75-414b-b686-f09d306917ef');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('c469bb50-1874-4928-a101-7a7f0f194058', '2025-12-14 15:35:20.152', NULL, '2025-12-14 15:35:20.152', 0, 'Yes, we provide enterprise-grade, dedicated fiber internet connectivity.', 1, 'Is the Internet speed guaranteed?', '7573c1cc-544d-4cae-bdd7-918aad84f657');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('2e29b74b-cb49-4261-87f3-033e42d4b6a7', '2025-12-14 15:35:20.152', NULL, '2025-12-14 15:35:20.152', 0, 'Yes, tenants have 24/7 keycard access to the office suite and building.', 2, 'Is 24-hour access available?', '7573c1cc-544d-4cae-bdd7-918aad84f657');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('98fa7ba3-1815-4e3c-ae75-36114cd0d2ec', '2025-12-14 15:35:20.152', NULL, '2025-12-14 15:35:20.152', 0, 'Yes, shared meeting rooms can be booked through the building management at an hourly rate.', 3, 'Are meeting rooms available for booking?', '7573c1cc-544d-4cae-bdd7-918aad84f657');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('09d85159-de9a-4503-9ad0-b79210095fb6', '2025-12-14 15:35:29.677', NULL, '2025-12-14 15:35:29.677', 0, 'The apartment was built in 1995, as indicated by the built year.', 1, 'How old is the property?', 'bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('8fbb87e8-b764-43e5-8d40-d29a1c0767f6', '2025-12-14 15:35:29.678', NULL, '2025-12-14 15:35:29.678', 0, 'No, this unit is facing the hill side. The sea-facing units are priced higher.', 2, 'Is the unit facing the sea?', 'bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('3a291feb-9517-4b30-a9e2-368069fdb375', '2025-12-14 15:35:40.840', NULL, '2025-12-14 15:35:40.840', 0, 'The developer warranty expired two years ago.', 1, 'Is the property still under warranty?', 'fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('cbd55610-3d2e-4330-afef-7ffadf8c689a', '2025-12-14 15:35:40.840', NULL, '2025-12-14 15:35:40.840', 0, 'Yes, the annual common area maintenance fee is RM 3,600.', 2, 'Are there any annual maintenance fees for the common area?', 'fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('e6218dc1-7a6e-4ee2-8e75-bab83b675621', '2025-12-14 15:35:40.840', NULL, '2025-12-14 15:35:40.840', 0, 'Yes, we can assist with securing financing through preferred panel banks.', 3, 'Is financing available for this property?', 'fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('af00e94b-66a3-490a-8b74-bfe5ded5d936', '2025-12-14 15:35:48.828', NULL, '2025-12-14 15:35:48.828', 0, 'The maximum ceiling height is 30 feet.', 1, 'What is the ceiling height?', '0d3c36b9-72d6-4dad-bb53-faf6f45582c8');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('06e83da5-3f1b-45fb-9d01-d530a0dbe94b', '2025-12-14 15:35:48.828', NULL, '2025-12-14 15:35:48.828', 0, 'No, tenants are responsible for their own electricity and water usage.', 2, 'Is the rental fee inclusive of utilities?', '0d3c36b9-72d6-4dad-bb53-faf6f45582c8');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('0c5f577a-64bc-43e8-b1b6-cce0e57158ca', '2025-12-14 15:35:59.274', NULL, '2025-12-14 15:35:59.274', 0, 'Yes, it is fully equipped with high-end built-in kitchen appliances.', 1, 'Does the unit come with kitchen appliances?', 'e4943276-07a4-4859-affe-e83c20d2dcb8');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('7533b8f9-5f65-4553-9da1-3a4002b4c60a', '2025-12-14 15:35:59.274', NULL, '2025-12-14 15:35:59.274', 0, 'No, the rooftop garden is a separate, exclusive area of an additional 1500 sqft.', 2, 'Is the private rooftop garden included in the 4500 sqft area?', 'e4943276-07a4-4859-affe-e83c20d2dcb8');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('be561484-2cc5-40c6-9410-1e388ffd53c0', '2025-12-14 15:36:11.671', NULL, '2025-12-14 15:36:11.671', 0, 'The structure is over 30 years old and is sold ''as-is'' and will require refurbishment.', 1, 'How old is the structure?', '37c47557-37b2-4e58-b429-0d3c510772bb');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('d175ae54-9b44-481e-947d-fa86822d9c32', '2025-12-14 15:36:11.671', NULL, '2025-12-14 15:36:11.671', 0, 'The property is located on high ground and has not experienced any floods in the past 10 years.', 2, 'Is the area flood-prone?', '37c47557-37b2-4e58-b429-0d3c510772bb');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('4227b1f6-3215-4c72-8434-0cfa07649833', '2025-12-14 15:36:22.245', NULL, '2025-12-14 15:36:22.245', 0, 'Yes, conversion is possible but requires submission to the local council and payment of premium.', 1, 'Can this land be converted to residential status?', '7fa3ecfc-da28-41bd-bf0a-58dcb34228ec');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('87b54f08-0ff1-47c1-9f5f-9bbfe3b48964', '2025-12-14 15:36:22.245', NULL, '2025-12-14 15:36:22.245', 0, 'No, the title is clean.', 2, 'Are there any encumbrances on the title?', '7fa3ecfc-da28-41bd-bf0a-58dcb34228ec');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('c5542329-2ac2-44f4-aa22-08f27559dfff', '2025-12-14 15:36:30.533', NULL, '2025-12-14 15:36:30.533', 0, 'The balcony offers a direct, clear view of the Straits of Malacca.', 1, 'What is the view from the balcony?', '4a6e4fc3-6383-405c-8933-51cba236a98c');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('acbbb79e-b94e-458d-ac84-b925b5496c61', '2025-12-14 15:36:30.534', NULL, '2025-12-14 15:36:30.534', 0, 'No, the minimum rental period is one year per the management''s regulations.', 2, 'Is short-term rental allowed?', '4a6e4fc3-6383-405c-8933-51cba236a98c');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('303f34f4-035e-492d-b371-e5c6b62daeb0', '2025-12-14 15:50:58.825', NULL, '2025-12-14 15:50:58.825', 0, 'Yes, the unit is fully furnished with designer furniture and equipped with all major kitchen appliances.', 1, 'Is the unit fully furnished and equipped?', '724504e4-e41b-49ab-8d5c-0aedf8257d40');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('d73fd55c-5bb9-4f21-9a21-7a40764f9b06', '2025-12-14 15:50:58.825', NULL, '2025-12-14 15:50:58.825', 0, 'Unfortunately, the building management has a strict ''No Pets'' policy for rental units.', 2, 'Are pets allowed?', '724504e4-e41b-49ab-8d5c-0aedf8257d40');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('bc344e90-e6e3-48d4-8c2a-7256b8f17d99', '2025-12-14 15:51:02.323', NULL, '2025-12-14 15:51:02.323', 0, 'Yes, it has commercial status and existing piping for F&B use.', 1, 'Is the unit approved for F&B operations?', '9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('d4182baf-3258-45e4-9e66-2f6af31f3b59', '2025-12-14 15:51:02.323', NULL, '2025-12-14 15:51:02.323', 0, 'A minimum lease of 3 years is required, with an option to renew for another 2 years.', 2, 'What is the lease term flexibility?', '9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('4a719c5b-c027-4f8b-b196-bd269b5f194c', '2025-12-14 15:51:02.323', NULL, '2025-12-14 15:51:02.323', 0, 'Yes, a one-month rent-free renovation period can be granted upon negotiation.', 3, 'Are renovation-free periods allowed?', '9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('de31f291-7948-407c-8879-0f21c30dc81a', '2025-12-14 15:51:10.502', NULL, '2025-12-14 15:51:10.502', 0, 'It is partially furnished with basic fixtures, water heaters, and fans. Major furniture is not included.', 1, 'Is this unit partially or fully furnished?', '8f0779eb-c580-494d-a631-7a94fd416b22');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('b50e98a1-f8a7-41c8-933d-a9db0375fe46', '2025-12-14 15:51:10.502', NULL, '2025-12-14 15:51:10.502', 0, 'The nearest bus stop is a 3-minute walk from the apartment block entrance.', 2, 'What is the distance to the nearest bus stop?', '8f0779eb-c580-494d-a631-7a94fd416b22');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('005b287e-b178-4a64-929b-9952ac8af516', '2025-12-14 15:51:14.706', NULL, '2025-12-14 15:51:14.706', 0, 'No, tenants are responsible for setting up their own high-speed internet connection.', 1, 'Is internet connectivity included in the rent?', '8a2896e9-8e7a-414f-a519-f4f8e5c9e586');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('03f71fde-84c2-4aa2-8ea8-a2eab5016673', '2025-12-14 15:51:14.706', NULL, '2025-12-14 15:51:14.706', 0, 'Yes, there are shared meeting rooms and a business lounge on the ground floor accessible to tenants (booking required).', 2, 'Are there meeting rooms available?', '8a2896e9-8e7a-414f-a519-f4f8e5c9e586');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('68f7fbbe-c2ce-4ddb-b6fd-8e7be2707e7a', '2025-12-14 15:51:19.391', NULL, '2025-12-14 15:51:19.391', 0, 'Yes, it is a 10-minute walk to the nearest LRT station on the Sri Petaling Line.', 1, 'Is the unit close to any LRT station?', '0d693c7e-6b83-46a4-add6-3d288df12bc7');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('fd176fe8-8fb3-408c-8519-be68f3f03737', '2025-12-14 15:51:19.391', NULL, '2025-12-14 15:51:19.391', 0, 'Yes, a combination washer/dryer machine is provided.', 2, 'Is there a washing machine in the unit?', '0d693c7e-6b83-46a4-add6-3d288df12bc7');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('01e1db96-07d9-4933-8e58-a117a86cbddd', '2025-12-14 15:51:25.044', NULL, '2025-12-14 15:51:25.044', 0, 'The land is Freehold, with a commercial title. Zoning is confirmed for commercial use.', 1, 'What is the land tenure?', 'fc176719-b367-4454-bdbd-1942a0858c56');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('9299d4e1-6936-4b9e-bee9-969e5ed7557d', '2025-12-14 15:51:25.044', NULL, '2025-12-14 15:51:25.044', 0, 'Yes, water, electricity, and telecommunication lines are ready for connection at the boundary.', 2, 'Are infrastructure connections readily available?', 'fc176719-b367-4454-bdbd-1942a0858c56');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('7fa261ad-9ae7-4846-b1fe-4e7dcc469b73', '2025-12-14 15:51:30.079', NULL, '2025-12-14 15:51:30.079', 0, 'This property has a Freehold residential title.', 1, 'Is the title Freehold or Leasehold?', '9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('83fe8c93-409b-4b6b-8f52-21b6bcd868b9', '2025-12-14 15:51:30.080', NULL, '2025-12-14 15:51:30.080', 0, 'The maintenance fee is RM0.35 per square foot, excluding the sinking fund.', 2, 'What are the monthly maintenance fees?', '9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('fd0cddc6-babb-4f31-ab9f-a72de92cdf27', '2025-12-14 15:51:30.080', NULL, '2025-12-14 15:51:30.080', 0, 'No, there is no private pool, but the property has access to two large communal pools.', 3, 'Is a private pool included?', '9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('274b7b61-7e79-452c-b6c0-21c43ee6866f', '2025-12-14 15:51:34.821', NULL, '2025-12-14 15:51:34.821', 0, 'The unit is partially fitted with air-conditioning units, lighting, and basic flooring.', 1, 'Is this a bare unit or fitted?', 'a8019f8b-4ca2-44cd-adf4-1431d3bce839');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('0010be97-55a7-48c9-ae23-22db83f70dcb', '2025-12-14 15:51:34.821', NULL, '2025-12-14 15:51:34.821', 0, 'The area has shown consistent capital appreciation averaging 4% per annum over the last five years.', 2, 'What is the capital appreciation history?', 'a8019f8b-4ca2-44cd-adf4-1431d3bce839');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('58b3292b-d961-4ae4-8b4a-1f7b971fdd97', '2025-12-14 15:51:41.790', NULL, '2025-12-14 15:51:41.790', 0, 'The expected date of completion and handover is Q4 2024.', 1, 'What is the expected completion date for this project?', '2b84e11b-af73-490f-8a4d-28854aaca203');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('557778ff-6b79-4d6f-b5f0-3dd13c62e3c8', '2025-12-14 15:51:41.790', NULL, '2025-12-14 15:51:41.790', 0, 'Yes, we offer a waiver on SPA and Loan legal fees, and free air conditioning units.', 2, 'Are there any developer incentives?', '2b84e11b-af73-490f-8a4d-28854aaca203');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('f7df25bd-07dd-4fab-b579-01148fe7f9cd', '2025-12-14 15:51:41.790', NULL, '2025-12-14 15:51:41.790', 0, 'Yes, a standard 5% bumiputera discount applies to eligible purchasers.', 3, 'Is bumiputera discount applicable?', '2b84e11b-af73-490f-8a4d-28854aaca203');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('f08f851f-1de5-4b70-8c98-65778870ff58', '2025-12-14 15:51:46.452', NULL, '2025-12-14 15:51:46.452', 0, 'Yes, it is within the UNESCO buffer zone, which requires adherence to specific conservation guidelines for renovations.', 1, 'Does the property have a heritage or conservation status?', '166e2b95-a604-4333-aafb-b15005eb8241');
INSERT INTO public.property_faq
(id, created_at, deleted_at, updated_at, "version", answer, order_no, question, property_id)
VALUES('74de4f4c-28ca-463a-b0d7-6b6cd3835f5c', '2025-12-14 15:51:46.452', NULL, '2025-12-14 15:51:46.452', 0, 'The ground floor is approximately 1,200 sqft and the first floor is 1,000 sqft.', 2, 'What is the floor space breakdown?', '166e2b95-a604-4333-aafb-b15005eb8241');



CREATE TABLE public.property_image (
	id varchar(255) NOT NULL,
	created_at timestamp(6) NULL,
	deleted_at timestamp(6) NULL,
	updated_at timestamp(6) NULL,
	"version" int4 NOT NULL,
	image_order int4 NULL,
	image_url varchar(255) NULL,
	property_id varchar(255) NULL,
	CONSTRAINT property_image_pkey PRIMARY KEY (id)
);

-- public.property_image foreign keys

ALTER TABLE public.property_image ADD CONSTRAINT fk8myddv2ina4svuo189ju03v9o FOREIGN KEY (property_id) REFERENCES public.property(id);


INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('3914df2d-b09a-4199-a642-8c8dd470ce5a', '2025-12-14 14:57:42.149', NULL, '2025-12-14 14:57:42.149', 0, 1, 'https://example.com/image.jpg', '3c9bd261-2901-40c9-988e-827b1d26494d');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('448c3ab2-19a0-4d56-949e-aa66523821b4', '2025-12-14 14:57:42.149', NULL, '2025-12-14 14:57:42.149', 0, 2, 'https://example.com/image.jpg', '3c9bd261-2901-40c9-988e-827b1d26494d');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('c838abaa-a2ea-4fc0-973b-7609b723a2d6', '2025-12-14 15:02:34.784', NULL, '2025-12-14 15:02:34.784', 0, 1, 'https://example.com/image.jpg', 'f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('72557da9-ae51-40d6-b559-54a964b8d6b7', '2025-12-14 15:02:34.784', NULL, '2025-12-14 15:02:34.784', 0, 2, 'https://example.com/image.jpg', 'f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('3688952b-e8ea-4bd7-a66f-bd17f9406d60', '2025-12-14 15:02:34.784', NULL, '2025-12-14 15:02:34.784', 0, 3, 'https://example.com/image.jpg', 'f56c240f-3a5d-4a3a-ac7b-a9e39a6c65c0');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('8ab43d25-53bf-4039-9e27-32e64079dc8a', '2025-12-13 15:21:52.011', NULL, '2025-12-13 15:21:52.011', 0, 1, 'https://example.com/images/property1_1.png', '6d825d30-6f13-4fa8-af39-623d2d57b3f5');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('1eccf752-77c4-4f2c-b48c-2e6a7a1affdd', '2025-12-13 15:21:52.015', NULL, '2025-12-13 15:21:52.015', 0, 2, 'https://example.com/images/property1_2.png', '6d825d30-6f13-4fa8-af39-623d2d57b3f5');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('86de35d2-1449-49f1-9385-7f45957e3794', '2025-12-14 15:29:00.542', NULL, '2025-12-14 15:29:00.542', 0, 1, 'https://example.com/images/penang_condo_1.jpg', '199b4d52-7c0a-492e-b6ae-a632684cea97');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('1b259ec8-04b9-48ed-bbb4-92efcb4b92b1', '2025-12-14 15:33:35.082', NULL, '2025-12-14 15:33:35.082', 0, 1, 'https://example.com/images/kl_condo_1.jpg', '8a79d08e-f179-4947-aa23-4ba101483b09');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('ae01d3fb-603e-42de-a797-e806ac0adb90', '2025-12-14 15:33:35.082', NULL, '2025-12-14 15:33:35.082', 0, 2, 'https://example.com/images/kl_condo_2.jpg', '8a79d08e-f179-4947-aa23-4ba101483b09');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('c898e0f9-689c-4555-9aae-a3bc97acc551', '2025-12-14 15:33:35.083', NULL, '2025-12-14 15:33:35.083', 0, 3, 'https://example.com/images/kl_condo_3.jpg', '8a79d08e-f179-4947-aa23-4ba101483b09');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('680a5a97-0e5d-416c-84f0-82d82146d78a', '2025-12-14 15:33:35.083', NULL, '2025-12-14 15:33:35.083', 0, 4, 'https://example.com/images/kl_condo_4.jpg', '8a79d08e-f179-4947-aa23-4ba101483b09');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('2c99e495-7439-4955-b71c-9dbd89767c48', '2025-12-13 16:05:21.987', NULL, '2025-12-13 16:05:21.987', 0, 1, 'https://example.com/images/property3_1.png', 'fb9e31e7-bf82-44e1-ad3b-68edaed920a4');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('d3096d9e-a6d4-49c4-9893-55a6c54fa341', '2025-12-13 16:05:21.987', NULL, '2025-12-13 16:05:21.987', 0, 2, 'https://example.com/images/property3_2.png', 'fb9e31e7-bf82-44e1-ad3b-68edaed920a4');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('0fb9baaa-19e2-44f2-a2db-52aaff1de5b7', '2025-12-13 16:05:21.987', NULL, '2025-12-13 16:05:21.987', 0, 3, 'https://example.com/images/property3_3.png', 'fb9e31e7-bf82-44e1-ad3b-68edaed920a4');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('4b746a41-393b-4d05-81dd-a114ca92d28a', '2025-12-14 10:15:55.875', NULL, '2025-12-14 10:15:55.875', 0, 1, 'https://example.com/images/ipoh_townhouse_1_exterior.jpg', 'c4525daf-7dbf-4d5f-80f2-4482a56ca5d0');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('811b202e-2c12-4115-a1d8-1bb945ba78a1', '2025-12-14 10:15:55.878', NULL, '2025-12-14 10:15:55.878', 0, 2, 'https://example.com/images/ipoh_townhouse_2_living.jpg', 'c4525daf-7dbf-4d5f-80f2-4482a56ca5d0');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('6d6af35a-acf0-42d8-b246-1a42aec21a16', '2025-12-14 10:15:55.878', NULL, '2025-12-14 10:15:55.878', 0, 3, 'https://example.com/images/ipoh_townhouse_3_room.jpg', 'c4525daf-7dbf-4d5f-80f2-4482a56ca5d0');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('26d4aec9-6080-41cd-84d9-3eac3e2c9b61', '2025-12-14 15:34:01.724', NULL, '2025-12-14 15:34:01.724', 0, 1, 'https://example.com/images/seremban_house_1.jpg', 'b4749694-dd89-406e-bcf2-88e46795354d');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('72ccdfae-34a6-49a1-8a58-6a2221316527', '2025-12-14 15:34:01.724', NULL, '2025-12-14 15:34:01.724', 0, 2, 'https://example.com/images/seremban_house_2.jpg', 'b4749694-dd89-406e-bcf2-88e46795354d');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('df669ae7-9618-44fc-bf24-c93eeba9f8f3', '2025-12-14 15:34:01.724', NULL, '2025-12-14 15:34:01.724', 0, 3, 'https://example.com/images/seremban_house_3.jpg', 'b4749694-dd89-406e-bcf2-88e46795354d');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('d74bb59e-0a5d-49e8-903f-8e9f37b73b14', '2025-12-14 15:34:26.790', NULL, '2025-12-14 15:34:26.790', 0, 1, 'https://example.com/images/shoplot_penang_1.jpg', 'ed6c7d4e-7438-428c-9382-a1d7645bd148');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('e449e64d-49d4-40ee-b7d8-65c80f78b066', '2025-12-14 15:34:26.790', NULL, '2025-12-14 15:34:26.790', 0, 2, 'https://example.com/images/shoplot_penang_2.jpg', 'ed6c7d4e-7438-428c-9382-a1d7645bd148');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('1aac12a3-b1d6-44c3-ac60-4e0f16a6b7f3', '2025-12-14 15:34:26.790', NULL, '2025-12-14 15:34:26.790', 0, 3, 'https://example.com/images/shoplot_penang_3.jpg', 'ed6c7d4e-7438-428c-9382-a1d7645bd148');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('48e61cd4-e9d7-42ae-9285-fdc05c2dbb27', '2025-12-14 15:34:44.303', NULL, '2025-12-14 15:34:44.303', 0, 1, 'https://example.com/images/pj_studio_1.jpg', '11a79cc4-ec4b-416b-8c9e-14c33ccae11b');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('e1c14fb3-65da-49e2-83b3-39add92298bc', '2025-12-14 15:34:44.303', NULL, '2025-12-14 15:34:44.303', 0, 2, 'https://example.com/images/pj_studio_2.jpg', '11a79cc4-ec4b-416b-8c9e-14c33ccae11b');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('3bd4f0b3-ae05-4456-b383-6ee18b41dbaf', '2025-12-14 15:34:44.303', NULL, '2025-12-14 15:34:44.303', 0, 3, 'https://example.com/images/pj_studio_3.jpg', '11a79cc4-ec4b-416b-8c9e-14c33ccae11b');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('9a66d5bc-7e61-4f36-b1aa-a995dd88424d', '2025-12-14 15:34:44.303', NULL, '2025-12-14 15:34:44.303', 0, 4, 'https://example.com/images/pj_studio_4.jpg', '11a79cc4-ec4b-416b-8c9e-14c33ccae11b');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('0eec4ab6-f8c4-4375-b8fd-3c514efff06b', '2025-12-14 15:34:56.672', NULL, '2025-12-14 15:34:56.672', 0, 1, 'https://example.com/images/land_gtown_1.jpg', 'cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('66973640-f20e-4b44-9438-b0d965921f5a', '2025-12-14 15:34:56.673', NULL, '2025-12-14 15:34:56.673', 0, 2, 'https://example.com/images/land_gtown_2.jpg', 'cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('55d7dd27-5cb7-4c65-a0b7-0e18e2522110', '2025-12-14 15:34:56.673', NULL, '2025-12-14 15:34:56.673', 0, 3, 'https://example.com/images/land_gtown_3.jpg', 'cbcf7fb5-09e2-4e4f-990d-ecb0152fc19f');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('02137f19-a9c2-42d2-9a26-3108210cc8e7', '2025-12-14 15:35:09.916', NULL, '2025-12-14 15:35:09.916', 0, 1, 'https://example.com/images/subang_terrace_1.jpg', '63169e74-3f75-414b-b686-f09d306917ef');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('6d9128f1-21cb-4aca-872b-6804e48b4721', '2025-12-14 15:35:09.916', NULL, '2025-12-14 15:35:09.916', 0, 2, 'https://example.com/images/subang_terrace_2.jpg', '63169e74-3f75-414b-b686-f09d306917ef');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('88d81ffd-dd0d-4c77-b26a-c98392113808', '2025-12-14 15:35:09.917', NULL, '2025-12-14 15:35:09.917', 0, 3, 'https://example.com/images/subang_terrace_3.jpg', '63169e74-3f75-414b-b686-f09d306917ef');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('86ba2559-60b0-45bc-9b9b-cc557294ee87', '2025-12-14 15:35:09.917', NULL, '2025-12-14 15:35:09.917', 0, 4, 'https://example.com/images/subang_terrace_4.jpg', '63169e74-3f75-414b-b686-f09d306917ef');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('d8692782-fcba-420f-9858-bba9ef5f3310', '2025-12-14 15:35:20.152', NULL, '2025-12-14 15:35:20.152', 0, 1, 'https://example.com/images/jb_office_1.jpg', '7573c1cc-544d-4cae-bdd7-918aad84f657');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('6f254034-009c-4b7b-93a2-c2b467095a34', '2025-12-14 15:35:20.152', NULL, '2025-12-14 15:35:20.152', 0, 2, 'https://example.com/images/jb_office_2.jpg', '7573c1cc-544d-4cae-bdd7-918aad84f657');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('795c2c95-575a-42b2-a293-edad94674ad4', '2025-12-14 15:35:20.153', NULL, '2025-12-14 15:35:20.153', 0, 3, 'https://example.com/images/jb_office_3.jpg', '7573c1cc-544d-4cae-bdd7-918aad84f657');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('6df7500f-6f74-4807-8e4e-25ec97878587', '2025-12-14 15:35:20.153', NULL, '2025-12-14 15:35:20.153', 0, 4, 'https://example.com/images/jb_office_4.jpg', '7573c1cc-544d-4cae-bdd7-918aad84f657');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('2e2b82ee-e418-437e-a4f7-f9db10893ff4', '2025-12-14 15:35:29.678', NULL, '2025-12-14 15:35:29.678', 0, 1, 'https://example.com/images/ferringhi_apt_1.jpg', 'bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('62f9fb3e-eb1f-45e9-b30d-bb6792cec5aa', '2025-12-14 15:35:29.678', NULL, '2025-12-14 15:35:29.678', 0, 2, 'https://example.com/images/ferringhi_apt_2.jpg', 'bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('f049719d-1671-4acb-92e1-ed840a56242d', '2025-12-14 15:35:29.678', NULL, '2025-12-14 15:35:29.678', 0, 3, 'https://example.com/images/ferringhi_apt_3.jpg', 'bd456bb9-7025-4ba8-b2d5-d59bbcb6c4f3');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('9c3d6920-f478-4024-a653-9e7a15de7d3a', '2025-12-14 15:35:40.840', NULL, '2025-12-14 15:35:40.840', 0, 1, 'https://example.com/images/putrajaya_semiD_1.jpg', 'fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('88ef6886-9c71-48da-b656-e9f01553b8ad', '2025-12-14 15:35:40.840', NULL, '2025-12-14 15:35:40.840', 0, 2, 'https://example.com/images/putrajaya_semiD_2.jpg', 'fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('5b83fefd-d317-4208-be66-8e6c6598bbcd', '2025-12-14 15:35:40.840', NULL, '2025-12-14 15:35:40.840', 0, 3, 'https://example.com/images/putrajaya_semiD_3.jpg', 'fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('9f8b27c3-ddca-4c3d-a6d2-b2e050aa1a00', '2025-12-14 15:35:40.840', NULL, '2025-12-14 15:35:40.840', 0, 4, 'https://example.com/images/putrajaya_semiD_4.jpg', 'fc4e8ff6-c7b3-4dd3-a055-8d923a7e6e5c');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('9044bc46-d94e-41cf-a25f-92f843d2e605', '2025-12-14 15:35:48.828', NULL, '2025-12-14 15:35:48.828', 0, 1, 'https://example.com/images/shahalam_factory_1.jpg', '0d3c36b9-72d6-4dad-bb53-faf6f45582c8');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('2646d8a3-b7a9-4c1a-a206-6c230c8e8067', '2025-12-14 15:35:48.828', NULL, '2025-12-14 15:35:48.828', 0, 2, 'https://example.com/images/shahalam_factory_2.jpg', '0d3c36b9-72d6-4dad-bb53-faf6f45582c8');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('86d98594-e7c2-4c17-8fcd-36f30f082cdf', '2025-12-14 15:35:48.829', NULL, '2025-12-14 15:35:48.829', 0, 3, 'https://example.com/images/shahalam_factory_3.jpg', '0d3c36b9-72d6-4dad-bb53-faf6f45582c8');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('147a539b-8a77-45f6-8208-4d0ee246d6e9', '2025-12-14 15:35:59.274', NULL, '2025-12-14 15:35:59.274', 0, 1, 'https://example.com/images/malacca_penthouse_1.jpg', 'e4943276-07a4-4859-affe-e83c20d2dcb8');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('3bd8abca-1c7e-4650-b373-8ea0b3f2557e', '2025-12-14 15:35:59.274', NULL, '2025-12-14 15:35:59.274', 0, 2, 'https://example.com/images/malacca_penthouse_2.jpg', 'e4943276-07a4-4859-affe-e83c20d2dcb8');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('bdfe4198-ad19-4449-a8f5-7ec64c568c77', '2025-12-14 15:35:59.274', NULL, '2025-12-14 15:35:59.274', 0, 3, 'https://example.com/images/malacca_penthouse_3.jpg', 'e4943276-07a4-4859-affe-e83c20d2dcb8');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('23e6fc20-f36e-43ab-814c-a014cd8680f2', '2025-12-14 15:35:59.274', NULL, '2025-12-14 15:35:59.274', 0, 4, 'https://example.com/images/malacca_penthouse_4.jpg', 'e4943276-07a4-4859-affe-e83c20d2dcb8');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('451a0362-6d9c-4973-bc55-ce803a8a65d0', '2025-12-14 15:36:11.671', NULL, '2025-12-14 15:36:11.671', 0, 1, 'https://example.com/images/kuantan_townhouse_1.jpg', '37c47557-37b2-4e58-b429-0d3c510772bb');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('3d3a1e7c-7bba-4ae0-944e-e2aa97a6b4f3', '2025-12-14 15:36:11.671', NULL, '2025-12-14 15:36:11.671', 0, 2, 'https://example.com/images/kuantan_townhouse_2.jpg', '37c47557-37b2-4e58-b429-0d3c510772bb');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('c7f04a72-ff21-4ee8-9693-4749bfc7554f', '2025-12-14 15:36:11.671', NULL, '2025-12-14 15:36:11.671', 0, 3, 'https://example.com/images/kuantan_townhouse_3.jpg', '37c47557-37b2-4e58-b429-0d3c510772bb');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('3db23142-0563-4fff-89a0-1d5b544c155d', '2025-12-14 15:36:22.245', NULL, '2025-12-14 15:36:22.245', 0, 1, 'https://example.com/images/kajang_land_1.jpg', '7fa3ecfc-da28-41bd-bf0a-58dcb34228ec');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('22e69b61-67f7-493e-8191-15fb23a5dde1', '2025-12-14 15:36:22.245', NULL, '2025-12-14 15:36:22.245', 0, 2, 'https://example.com/images/kajang_land_2.jpg', '7fa3ecfc-da28-41bd-bf0a-58dcb34228ec');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('ba48ca5d-beea-4e6c-a920-22e78563471c', '2025-12-14 15:36:22.245', NULL, '2025-12-14 15:36:22.245', 0, 3, 'https://example.com/images/kajang_land_3.jpg', '7fa3ecfc-da28-41bd-bf0a-58dcb34228ec');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('6d7b5a0a-93cb-4a5a-8401-20a653f36e69', '2025-12-14 15:36:30.534', NULL, '2025-12-14 15:36:30.534', 0, 1, 'https://example.com/images/pd_apartment_1.jpg', '4a6e4fc3-6383-405c-8933-51cba236a98c');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('c6cfe610-2e81-4d9f-b4e6-2e2ed6a2c9c3', '2025-12-14 15:36:30.534', NULL, '2025-12-14 15:36:30.534', 0, 2, 'https://example.com/images/pd_apartment_2.jpg', '4a6e4fc3-6383-405c-8933-51cba236a98c');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('d74f4c15-e498-4ae6-9c19-4f9f000a587d', '2025-12-14 15:36:30.534', NULL, '2025-12-14 15:36:30.534', 0, 3, 'https://example.com/images/pd_apartment_3.jpg', '4a6e4fc3-6383-405c-8933-51cba236a98c');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('2acaefb3-776f-4170-9960-b63279a74492', '2025-12-14 15:36:30.534', NULL, '2025-12-14 15:36:30.534', 0, 4, 'https://example.com/images/pd_apartment_4.jpg', '4a6e4fc3-6383-405c-8933-51cba236a98c');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('96a67274-8a26-4b6f-bc05-2ec3112704b7', '2025-12-14 15:50:58.825', NULL, '2025-12-14 15:50:58.825', 0, 1, 'https://example.com/images/straitsquay_1_exterior.jpg', '724504e4-e41b-49ab-8d5c-0aedf8257d40');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('3b1e06fc-1d93-494a-a42b-4aebfda909f4', '2025-12-14 15:50:58.825', NULL, '2025-12-14 15:50:58.825', 0, 2, 'https://example.com/images/straitsquay_2_living.jpg', '724504e4-e41b-49ab-8d5c-0aedf8257d40');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('b3157c82-0cc8-4a93-9794-44ab4fb3aecf', '2025-12-14 15:50:58.825', NULL, '2025-12-14 15:50:58.825', 0, 3, 'https://example.com/images/straitsquay_3_kitchen.jpg', '724504e4-e41b-49ab-8d5c-0aedf8257d40');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('8bef5470-ad42-48cf-90b4-7376d0b7b4ae', '2025-12-14 15:50:58.825', NULL, '2025-12-14 15:50:58.825', 0, 4, 'https://example.com/images/straitsquay_4_view.jpg', '724504e4-e41b-49ab-8d5c-0aedf8257d40');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('30baa2ec-81c7-4700-b7cd-e4b4340271c6', '2025-12-14 15:51:02.323', NULL, '2025-12-14 15:51:02.323', 0, 1, 'https://example.com/images/damansara_shop_1_front.jpg', '9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('e6e22a1a-7695-4003-a943-ab70ab99b2f2', '2025-12-14 15:51:02.323', NULL, '2025-12-14 15:51:02.323', 0, 2, 'https://example.com/images/damansara_shop_2_interior.jpg', '9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('31154a6f-3b8b-47de-b7b8-44cfeda7fe15', '2025-12-14 15:51:02.323', NULL, '2025-12-14 15:51:02.323', 0, 3, 'https://example.com/images/damansara_shop_3_area.jpg', '9cbfa24c-8ca2-4c7e-813f-6347b9d37ebe');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('47f90589-f3f1-4ac5-a3a4-7c4dc1caf811', '2025-12-14 15:51:10.502', NULL, '2025-12-14 15:51:10.502', 0, 1, 'https://example.com/images/skudai_apt_1_main.jpg', '8f0779eb-c580-494d-a631-7a94fd416b22');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('f4e0c02e-ff33-4a4b-a3e6-a7fa7874b999', '2025-12-14 15:51:10.502', NULL, '2025-12-14 15:51:10.502', 0, 2, 'https://example.com/images/skudai_apt_2_room.jpg', '8f0779eb-c580-494d-a631-7a94fd416b22');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('665f8171-236d-4763-b882-e5ecda5f3c48', '2025-12-14 15:51:14.706', NULL, '2025-12-14 15:51:14.706', 0, 1, 'https://example.com/images/klsentral_soho_1.jpg', '8a2896e9-8e7a-414f-a519-f4f8e5c9e586');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('d17569ce-098f-4c76-8c48-13cf0e6a41ba', '2025-12-14 15:51:14.706', NULL, '2025-12-14 15:51:14.706', 0, 2, 'https://example.com/images/klsentral_soho_2.jpg', '8a2896e9-8e7a-414f-a519-f4f8e5c9e586');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('6a377296-f101-4b11-9fcc-11584332bd96', '2025-12-14 15:51:14.706', NULL, '2025-12-14 15:51:14.706', 0, 3, 'https://example.com/images/klsentral_soho_3.jpg', '8a2896e9-8e7a-414f-a519-f4f8e5c9e586');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('79fbdf52-9cb2-4a9f-a45f-9647923bf65a', '2025-12-14 15:51:14.707', NULL, '2025-12-14 15:51:14.707', 0, 4, 'https://example.com/images/klsentral_soho_4.jpg', '8a2896e9-8e7a-414f-a519-f4f8e5c9e586');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('5cbe12ef-fd30-4391-84f5-b1bc89d50da0', '2025-12-14 15:51:19.391', NULL, '2025-12-14 15:51:19.391', 0, 1, 'https://example.com/images/puchong_studio_1.jpg', '0d693c7e-6b83-46a4-add6-3d288df12bc7');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('403f9f78-2ae9-4551-910d-9215c9f7745e', '2025-12-14 15:51:19.391', NULL, '2025-12-14 15:51:19.391', 0, 2, 'https://example.com/images/puchong_studio_2.jpg', '0d693c7e-6b83-46a4-add6-3d288df12bc7');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('fb804166-ebae-4ada-8fe6-d597c9755f20', '2025-12-14 15:51:19.391', NULL, '2025-12-14 15:51:19.391', 0, 3, 'https://example.com/images/puchong_studio_3.jpg', '0d693c7e-6b83-46a4-add6-3d288df12bc7');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('73287f36-ce4a-4af8-aa1e-fbdf163eef51', '2025-12-14 15:51:25.044', NULL, '2025-12-14 15:51:25.044', 0, 1, 'https://example.com/images/cyberjaya_land_1_plot.jpg', 'fc176719-b367-4454-bdbd-1942a0858c56');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('80b0b2bc-dba0-48b0-86e8-2ea45c88f9d1', '2025-12-14 15:51:25.044', NULL, '2025-12-14 15:51:25.044', 0, 2, 'https://example.com/images/cyberjaya_land_2_surround.jpg', 'fc176719-b367-4454-bdbd-1942a0858c56');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('daf4ea55-a9f1-4244-aa1e-238e65b55961', '2025-12-14 15:51:25.044', NULL, '2025-12-14 15:51:25.044', 0, 3, 'https://example.com/images/cyberjaya_land_3_map.jpg', 'fc176719-b367-4454-bdbd-1942a0858c56');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('662c0c4d-3b20-4c35-ac68-99ea6c2a8946', '2025-12-14 15:51:30.080', NULL, '2025-12-14 15:51:30.080', 0, 1, 'https://example.com/images/mk_penthouse_1.jpg', '9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('74a19bcc-88d2-4064-9c13-7123bd74c291', '2025-12-14 15:51:30.080', NULL, '2025-12-14 15:51:30.080', 0, 2, 'https://example.com/images/mk_penthouse_2.jpg', '9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('50ed40ba-662c-487c-81c9-38acee24f2e3', '2025-12-14 15:51:30.082', NULL, '2025-12-14 15:51:30.082', 0, 3, 'https://example.com/images/mk_penthouse_3.jpg', '9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('cdc01540-bd1c-48e6-8794-9746f28d36d3', '2025-12-14 15:51:30.082', NULL, '2025-12-14 15:51:30.082', 0, 4, 'https://example.com/images/mk_penthouse_4.jpg', '9bd40bbc-6c39-4e1f-ae40-da0c59bd92ae');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('89136e20-42f3-4ffc-ac1b-549ead49c92a', '2025-12-14 15:51:34.821', NULL, '2025-12-14 15:51:34.821', 0, 1, 'https://example.com/images/midvalley_office_1_view.jpg', 'a8019f8b-4ca2-44cd-adf4-1431d3bce839');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('645175c5-3e3f-4d15-a558-314b35de5b2c', '2025-12-14 15:51:34.821', NULL, '2025-12-14 15:51:34.821', 0, 2, 'https://example.com/images/midvalley_office_2_layout.jpg', 'a8019f8b-4ca2-44cd-adf4-1431d3bce839');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('e1179a2f-07d1-499a-a345-aed9be387cae', '2025-12-14 15:51:41.790', NULL, '2025-12-14 15:51:41.790', 0, 1, 'https://example.com/images/kk_resort_1_pool.jpg', '2b84e11b-af73-490f-8a4d-28854aaca203');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('ab5e22e0-d0f5-4312-9423-07ab9166cba0', '2025-12-14 15:51:41.790', NULL, '2025-12-14 15:51:41.790', 0, 2, 'https://example.com/images/kk_resort_2_showunit.jpg', '2b84e11b-af73-490f-8a4d-28854aaca203');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('160db099-dbd5-4a33-8659-6bf8d983d775', '2025-12-14 15:51:41.790', NULL, '2025-12-14 15:51:41.790', 0, 3, 'https://example.com/images/kk_resort_3_exterior.jpg', '2b84e11b-af73-490f-8a4d-28854aaca203');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('cdcfd8cc-9738-4bfc-af09-ab50f7d73fe1', '2025-12-14 15:51:46.452', NULL, '2025-12-14 15:51:46.452', 0, 1, 'https://example.com/images/melaka_shophouse_1_exterior.jpg', '166e2b95-a604-4333-aafb-b15005eb8241');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('13a6b2bd-b93c-424a-87e3-3ae5bb02727e', '2025-12-14 15:51:46.452', NULL, '2025-12-14 15:51:46.452', 0, 2, 'https://example.com/images/melaka_shophouse_2_interior.jpg', '166e2b95-a604-4333-aafb-b15005eb8241');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('aae54dfd-733f-4f4d-9d1d-320bf8b21749', '2025-12-14 15:51:46.452', NULL, '2025-12-14 15:51:46.452', 0, 3, 'https://example.com/images/melaka_shophouse_3_street.jpg', '166e2b95-a604-4333-aafb-b15005eb8241');
INSERT INTO public.property_image
(id, created_at, deleted_at, updated_at, "version", image_order, image_url, property_id)
VALUES('2c35feca-e097-40e2-999c-32f7206ae436', '2025-12-14 15:51:46.452', NULL, '2025-12-14 15:51:46.452', 0, 4, 'https://example.com/images/melaka_shophouse_4_backyard.jpg', '166e2b95-a604-4333-aafb-b15005eb8241');


