--
-- PostgreSQL database dump
--

-- Dumped from database version 11.8
-- Dumped by pg_dump version 12.2

-- Started on 2020-10-20 08:06:15 UTC

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;



INSERT INTO public.services VALUES ('220159c3-8227-49fb-97d0-1b415e073452', '2020-03-30 12:08:56+00', '2020-03-30 12:08:56+00', 'Email_Service', 5, 'http', 'email-convit.azure.new-work.app', 80, NULL, 60000, 60000, 60000, '{}', NULL);
INSERT INTO public.services VALUES ('438f5541-a1d8-4ed3-a3a7-54786514cfc8', '2020-05-27 07:39:54+00', '2020-05-27 07:40:47+00', 'GOOGLE_MAP_SERVICES', 5, 'https', 'maps.googleapis.com', 443, '/maps/api', 60000, 60000, 60000, '{}', NULL);
INSERT INTO public.services VALUES ('fe749b37-92bb-4829-be85-fe1224900335', '2020-10-09 11:39:02+00', '2020-10-09 12:02:40+00', 'Kafka_Bridge', 5, 'http', '$KAFKA_SERVICE', 32334, NULL, 60000, 60000, 60000, '{}', NULL);
INSERT INTO public.services VALUES ('064c2754-cffd-40c0-bddf-20a8ddcc9792', '2020-04-30 14:38:55+00', '2020-06-02 02:21:24+00', 'Kong_OIDC_Redirect_URI', 5, 'https', '$API_GATEWAY', 443, '/', 60000, 60000, 60000, '{}', NULL);
INSERT INTO public.services VALUES ('873f2bdb-47e0-464d-bd15-07f71456dcb2', '2020-03-04 07:59:21+00', '2020-06-02 02:23:49+00', 'Business-Objects', 5, 'http', '$GENERATOR', 80, '/', 60000, 60000, 60000, '{}', NULL);
INSERT INTO public.services VALUES ('0b4814eb-cbea-47ed-acf7-53b980b32013', '2020-10-12 12:36:22+00', '2020-10-12 14:26:35+00', 'BLACKWIDOW', 5, 'https', 'blackwidow-master.de.gklabs.live', 443, '/download/', 60000, 60000, 60000, '{}', NULL);
INSERT INTO public.services VALUES ('4d770019-c27f-437a-af22-d937bffd0d03', '2020-05-03 11:50:08+00', '2020-06-02 03:28:46+00', 'Hasura_Collection_API', 5, 'http', '$BLACKWIDOW', 80, '/', 60000, 60000, 60000, '{}', NULL);
INSERT INTO public.services VALUES ('a548bff9-38f4-4762-b4ff-b59034dccda3', '2020-03-04 07:38:49+00', '2020-06-02 03:29:33+00', 'SRMS', 5, 'http', '$SRMS', 80, '/', 60000, 60000, 60000, '{}', NULL);
INSERT INTO public.services VALUES ('c724f3df-a6ab-41cb-8591-5f9599880dc3', '2020-03-03 16:20:42+00', '2020-10-03 10:07:52+00', 'Konga', 5, 'http', '$KONGA', 80, NULL, 60000, 60000, 60000, '{kong,konga}', NULL);
INSERT INTO public.services VALUES ('18c21e23-dde3-48b2-a1ee-a4cb0697bde0', '2020-10-05 09:34:40+00', '2020-10-05 09:39:03+00', 'IDM_Server', 5, 'http', '$IDM', 8080, '/oidc-provider/', 60000, 60000, 60000, '{}', NULL);
INSERT INTO public.services VALUES ('a36fb5c8-0463-4f17-8786-8ea4038564e4', '2020-05-03 12:46:57+00', '2020-10-06 09:49:50+00', 'Hasura_GraphQL_API', 5, 'https', '$HASURA', 443, '/v1/graphql', 60000, 60000, 60000, '{}', NULL);
INSERT INTO public.services VALUES ('457d4ecb-2724-4e70-8fdb-2b06a583777f', '2020-03-04 13:18:41+00', '2020-10-06 09:57:46+00', 'Flowable_Engine', 5, 'https', '$FLOWABLE', 443, '/', 60000, 60000, 60000, '{flowable,modeler,task}', NULL);
INSERT INTO public.services VALUES ('30ee232e-f1da-415e-a696-8d1e27f9b514', '2020-05-20 13:37:52+00', '2020-10-07 06:35:52+00', 'GET_MASTER_RESOURCES_USING_GRAPHQL', 5, 'https', '$GRAPHQL_API', 443, '/v1/graphql', 60000, 60000, 60000, '{}', NULL);
INSERT INTO public.services VALUES ('cea30e15-f061-47a1-8144-435bf5751818', '2020-05-17 20:52:40+00', '2020-10-07 07:08:47+00', 'GET_SCIM2_RESOURCES_USING_GRAPHQL', 5, 'https', '$IDM_GRAPHQL_API', 443, '/v1/graphql', 60000, 60000, 60000, '{}', NULL);


--
-- TOC entry 3095 (class 0 OID 17730)
-- Dependencies: 213
-- Data for Name: routes; Type: TABLE DATA; Schema: public; Owner: kong
--

INSERT INTO public.routes VALUES ('0431ead1-6547-4967-99cc-1b604b5af81c', '2020-03-04 13:19:49+00', '2020-05-06 19:42:07+00', 'flowable_engine_route', '457d4ecb-2724-4e70-8fdb-2b06a583777f', '{https,http}', '{OPTIONS,GET,POST,PUT,PATCH,DELETE}', '{}', '{/flowable-rest,/flowable-task,/flowable-modeler,/flowable-admin}', NULL, NULL, NULL, 0, false, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('3f46c826-d42f-46cf-b19e-e540f45b7fc1', '2020-05-03 11:51:07+00', '2020-05-05 16:55:50+00', 'Hasura_Collection_API_Route', '4d770019-c27f-437a-af22-d937bffd0d03', '{https,http}', '{POST}', '{}', '{/v1/query}', NULL, NULL, NULL, 0, false, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('a103ce9e-2613-46c0-b0d0-082e8eeed608', '2020-03-03 16:33:56.420492+00', '2020-03-03 16:33:56.420492+00', 'Konga Register', 'c724f3df-a6ab-41cb-8591-5f9599880dc3', '{http,https}', '{GET,POST,PUT,DELETE,OPTIONS,PATCH}', NULL, '{/register,/register/}', NULL, NULL, NULL, NULL, true, false, NULL, NULL, NULL, 'v1');
INSERT INTO public.routes VALUES ('70c77866-28b5-48b1-b0aa-e28a04c94cba', '2020-03-04 15:19:25+00', '2020-03-04 15:19:25+00', 'acme_route', 'c724f3df-a6ab-41cb-8591-5f9599880dc3', '{http,https}', NULL, NULL, '{/.well-known/acme-challenge/}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('98b379b2-76f3-417e-826f-51886249a996', '2020-05-18 07:36:10+00', '2020-05-18 12:53:51+00', 'GET_TO_GRAPHQL_OPTIONS', 'cea30e15-f061-47a1-8144-435bf5751818', '{http,https}', '{OPTIONS}', '{}', '{/scim2/groups,/idm/resources,/idm/policies}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('1518fe97-ffb5-440e-bc81-d81d58c21f7c', '2020-03-30 12:10:11+00', '2020-03-30 12:10:11+00', 'Send_Email', '220159c3-8227-49fb-97d0-1b415e073452', '{http,https}', '{POST,OPTION}', NULL, NULL, NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('4f35fada-74f4-43c3-a70d-a7bcb8ea1fd6', '2020-05-18 12:54:57+00', '2020-05-18 12:54:57+00', 'IDM_POLICIES', 'cea30e15-f061-47a1-8144-435bf5751818', '{http,https}', '{GET}', NULL, '{/idm/policies}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('d9c4da03-6fa8-48c9-96df-2bd2b3e30a49', '2020-03-04 08:00:58+00', '2020-03-04 08:14:55+00', 'Business-objects', '873f2bdb-47e0-464d-bd15-07f71456dcb2', '{https,http}', '{GET,POST,PUT,PATCH,OPTIONS,DELETE}', '{}', '{/business_objects/}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('44005ded-24ef-4ad7-8f0e-49f8b7c079b7', '2020-03-04 07:41:37+00', '2020-05-05 17:44:09+00', 'SRMS', 'a548bff9-38f4-4762-b4ff-b59034dccda3', '{https,http}', '{GET,POST,OPTIONS}', '{}', '{/srms/,/srms_hierarchy/,/srms}', NULL, NULL, NULL, 0, false, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('3f754a34-8420-487a-b359-51b547668ccb', '2020-05-05 16:57:12+00', '2020-05-05 17:58:24+00', 'Hasura_API_Collection_CORS', '4d770019-c27f-437a-af22-d937bffd0d03', '{http,https}', '{OPTIONS}', '{}', '{/v1/query}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('79a770cc-460b-4a61-b5e4-1541cfeb05a5', '2020-05-03 12:48:00+00', '2020-05-05 18:04:18+00', 'Hasura_Graphql_API_Route', 'a36fb5c8-0463-4f17-8786-8ea4038564e4', '{http,https}', '{POST,OPTIONS,GET}', '{}', '{/v1/graphql}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('3e21569b-a9cb-41b3-8976-f959f24c0997', '2020-05-20 13:39:13+00', '2020-05-20 13:53:30+00', 'GET_GRAPHQL_COLLECTIONS_ROUTE', '30ee232e-f1da-415e-a696-8d1e27f9b514', '{http,https}', '{GET}', '{}', '{/query/collections}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('f49fbf63-e724-402c-9584-6045fc076102', '2020-05-20 14:30:08+00', '2020-05-27 18:40:27+00', 'MASTER_GRAPHQL_CORS_CONFIG', '30ee232e-f1da-415e-a696-8d1e27f9b514', '{http,https}', '{OPTIONS}', '{}', '{/query/collections,/query/forms}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('c12739df-af30-45f5-8264-4276d42302bb', '2020-05-27 07:44:25+00', '2020-05-27 07:44:53+00', 'GOOGLE_MAP_SERVICES_CORS', '438f5541-a1d8-4ed3-a3a7-54786514cfc8', '{http,https}', '{OPTIONS}', '{}', '{/geocode/json}', NULL, NULL, NULL, 0, false, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('2673a11f-d87b-4d35-9a72-077e24df0d24', '2020-05-17 21:03:31+00', '2020-05-18 08:56:38+00', 'SCIM2_GROUPS', 'cea30e15-f061-47a1-8144-435bf5751818', '{http,https}', '{GET}', '{}', '{/scim2/groups}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('50c7bd4d-99b4-4d11-882f-1ceae471399b', '2020-05-18 08:57:23+00', '2020-05-18 08:57:23+00', 'IDM_RESOURCES', 'cea30e15-f061-47a1-8144-435bf5751818', '{http,https}', '{GET}', NULL, '{/idm/resources}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('4ac4e06b-ed9a-4d4a-8c75-2d65cbb8d8df', '2020-05-27 07:43:07+00', '2020-05-27 08:28:19+00', 'GEOCODING_API', '438f5541-a1d8-4ed3-a3a7-54786514cfc8', '{http,https}', '{GET}', '{}', '{/geocode/json}', NULL, NULL, NULL, 0, false, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('16c0a0e7-76e8-409a-a0b3-3df45189e9f8', '2020-05-27 15:19:18+00', '2020-05-27 19:10:32+00', 'GET_FORMS_ROUTE', '30ee232e-f1da-415e-a696-8d1e27f9b514', '{http,https}', '{POST}', '{}', '{/query/forms}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('3298c1a2-94af-4a99-bb34-bf09074c2b50', '2020-03-03 16:33:56+00', '2020-10-03 10:06:49+00', 'Konga', 'c724f3df-a6ab-41cb-8591-5f9599880dc3', '{http,https}', '{GET,POST,PUT,DELETE,OPTIONS,PATCH}', NULL, '{/}', NULL, NULL, NULL, NULL, true, false, NULL, 426, NULL, 'v1');
INSERT INTO public.routes VALUES ('d0a8ca03-de41-4650-a434-37366d858b68', '2020-04-30 14:39:22+00', '2020-10-03 10:08:35+00', 'Kong_OIDC_Redirect_URI', '064c2754-cffd-40c0-bddf-20a8ddcc9792', '{https,http}', '{OPTIONS,GET,POST}', NULL, '{/oidc/callback}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v0');
INSERT INTO public.routes VALUES ('3c9d0ec6-2c93-4015-840e-5e1d7b45e6e2', '2020-10-05 09:36:50+00', '2020-10-05 09:36:50+00', 'IDM_Main_Route', '18c21e23-dde3-48b2-a1ee-a4cb0697bde0', '{http,https}', '{GET,POST,OPTIONS}', NULL, '{/oidc-provider/}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v1');
INSERT INTO public.routes VALUES ('71d6212b-4a18-4f04-adca-5bd7e502927e', '2020-10-09 11:40:36+00', '2020-10-12 08:59:08+00', 'kafka_bridge', 'fe749b37-92bb-4829-be85-fe1224900335', '{http,https}', '{POST,GET,PUT,PATCH,OPTIONS,DELETE}', NULL, '{/kafka_bridge}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v1');
INSERT INTO public.routes VALUES ('5b6d75b6-f03a-4a1c-b057-52045dbe3147', '2020-10-12 12:44:01+00', '2020-10-12 14:37:36+00', 'BLACKWIDOW_DOWNLOAD', '0b4814eb-cbea-47ed-acf7-53b980b32013', '{https,http}', '{GET,POST}', NULL, '{/blackwidow/download/,/blackwidow/callback/}', NULL, NULL, NULL, 0, true, false, NULL, 426, NULL, 'v1');


--
-- TOC entry 3092 (class 0 OID 17707)
-- Dependencies: 210
-- Data for Name: plugins; Type: TABLE DATA; Schema: public; Owner: kong
--

INSERT INTO public.plugins VALUES ('b1bdba69-5ae5-4593-91ae-b08eba2afc0e', '2020-05-27 13:06:12+00', 'request-transformer', NULL, NULL, '4ac4e06b-ed9a-4d4a-8c75-2d65cbb8d8df', '{"add": {"body": [], "headers": [], "querystring": ["key: AIzaSyAceULSUZpNPveQtsp_fuHc1a9h64t-WB0"]}, "append": {"body": [], "headers": [], "querystring": []}, "remove": {"body": [], "headers": [], "querystring": []}, "rename": {"body": [], "headers": [], "querystring": []}, "replace": {"uri": null, "body": [], "headers": [], "querystring": []}, "http_method": null}', true, 'plugins:request-transformer:4ac4e06b-ed9a-4d4a-8c75-2d65cbb8d8df:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('20a4f447-40af-4dd2-bf56-4f03068f4ee4', '2020-03-04 14:03:49+00', 'cors', NULL, NULL, '0431ead1-6547-4967-99cc-1b604b5af81c', '{"headers": ["Authorization", "Content-Type"], "max_age": null, "methods": ["GET", "POST", "DELETE", "OPTIONS", "PUT", "PATCH"], "origins": ["*"], "credentials": false, "exposed_headers": ["Authorization"], "preflight_continue": false}', true, 'plugins:cors:0431ead1-6547-4967-99cc-1b604b5af81c:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('fd33cf6b-0340-421e-adc8-2b1a161aee8b', '2020-05-18 07:34:23+00', 'cors', NULL, 'cea30e15-f061-47a1-8144-435bf5751818', NULL, '{"headers": ["Authorization", "Content-Type"], "max_age": null, "methods": ["GET", "OPTIONS", "POST"], "origins": ["*"], "credentials": false, "exposed_headers": ["Authorization"], "preflight_continue": true}', true, 'plugins:cors::cea30e15-f061-47a1-8144-435bf5751818::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('2a7aa78b-ccbd-4726-8aed-eb81efc63a19', '2020-03-30 13:25:20+00', 'cors', NULL, NULL, '1518fe97-ffb5-440e-bc81-d81d58c21f7c', '{"headers": null, "max_age": null, "methods": [], "origins": ["*"], "credentials": false, "exposed_headers": null, "preflight_continue": false}', true, 'plugins:cors:1518fe97-ffb5-440e-bc81-d81d58c21f7c:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('5dbff9e2-3356-490a-a73f-766dd0596b39', '2020-05-18 09:05:17+00', 'request-transformer', NULL, NULL, '50c7bd4d-99b4-4d11-882f-1ceae471399b', '{"add": {"body": ["query: query getResources {   resources: idm_resource {     id     name     uri   } }"], "headers": ["x-hasura-admin-secret: PlWKRn15yKzLBnbKB4CB", "x-hasura-role: System_Admin", "content-type: application/json"], "querystring": []}, "append": {"body": [], "headers": [], "querystring": []}, "remove": {"body": [], "headers": [], "querystring": []}, "rename": {"body": [], "headers": [], "querystring": []}, "replace": {"uri": null, "body": [], "headers": [], "querystring": []}, "http_method": "POST"}', true, 'plugins:request-transformer:50c7bd4d-99b4-4d11-882f-1ceae471399b:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('616db429-c6c5-499f-b85d-3f7eb09e16fa', '2020-05-20 13:52:01+00', 'request-transformer', NULL, NULL, '3e21569b-a9cb-41b3-8976-f959f24c0997', '{"add": {"body": ["query: query getQueryCollections {   list: collection_collection {     id     name     comment     queries {       id       name       definition       collection_id     }   } }"], "headers": ["content-type: application/json", "x-hasura-admin-secret: PlWKRn15yKzLBnbKB4CB", "x-hasura-role: System_Admin"], "querystring": []}, "append": {"body": [], "headers": [], "querystring": []}, "remove": {"body": [], "headers": ["Authorization"], "querystring": []}, "rename": {"body": [], "headers": [], "querystring": []}, "replace": {"uri": null, "body": [], "headers": [], "querystring": []}, "http_method": "POST"}', true, 'plugins:request-transformer:3e21569b-a9cb-41b3-8976-f959f24c0997:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('f54fc9e5-40a1-49c7-a345-465acda3a53e', '2020-05-05 18:02:32+00', 'cors', NULL, NULL, '79a770cc-460b-4a61-b5e4-1541cfeb05a5', '{"headers": ["Authorization", "Content-Type"], "max_age": null, "methods": ["POST", "OPTIONS", "GET"], "origins": ["*"], "credentials": false, "exposed_headers": ["Authorization"], "preflight_continue": true}', true, 'plugins:cors:79a770cc-460b-4a61-b5e4-1541cfeb05a5:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('021e85d9-6670-45c9-bc8a-99d1a9577b75', '2020-05-03 11:54:25+00', 'request-transformer', NULL, NULL, '3f46c826-d42f-46cf-b19e-e540f45b7fc1', '{"add": {"body": [], "headers": ["x-hasura-admin-secret: PlWKRn15yKzLBnbKB4CB"], "querystring": []}, "append": {"body": [], "headers": [], "querystring": []}, "remove": {"body": [], "headers": ["Authorization"], "querystring": []}, "rename": {"body": [], "headers": [], "querystring": []}, "replace": {"uri": null, "body": [], "headers": [], "querystring": []}, "http_method": null}', true, 'plugins:request-transformer:3f46c826-d42f-46cf-b19e-e540f45b7fc1:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('9f4896d6-5310-41ae-8cbe-ff0a4d56df28', '2020-05-05 16:58:01+00', 'cors', NULL, NULL, '3f754a34-8420-487a-b359-51b547668ccb', '{"headers": ["Authorization", "Content-Type"], "max_age": null, "methods": ["OPTIONS"], "origins": ["*"], "credentials": false, "exposed_headers": ["Authorization"], "preflight_continue": true}', true, 'plugins:cors:3f754a34-8420-487a-b359-51b547668ccb:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('f2d18ca3-ee4c-4c64-a81b-e332baba3f15', '2020-05-18 05:43:43+00', 'key-auth', NULL, NULL, '2673a11f-d87b-4d35-9a72-077e24df0d24', '{"anonymous": null, "key_names": ["apikey"], "key_in_body": false, "hide_credentials": true, "run_on_preflight": true}', true, 'plugins:key-auth:2673a11f-d87b-4d35-9a72-077e24df0d24:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('f88df230-7918-4274-a6f9-f636767b5355', '2020-05-18 05:41:05+00', 'request-transformer', NULL, NULL, '2673a11f-d87b-4d35-9a72-077e24df0d24', '{"add": {"body": ["query: query getGroups {     groups: idm_group {         id         display_name     } }"], "headers": ["x-hasura-admin-secret: PlWKRn15yKzLBnbKB4CB", "x-hasura-role: System_Admin", "content-type: application/json"], "querystring": []}, "append": {"body": [], "headers": [], "querystring": []}, "remove": {"body": [], "headers": [], "querystring": []}, "rename": {"body": [], "headers": [], "querystring": []}, "replace": {"uri": null, "body": [], "headers": [], "querystring": []}, "http_method": "POST"}', true, 'plugins:request-transformer:2673a11f-d87b-4d35-9a72-077e24df0d24:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('e9c7bc0d-0ab9-4b43-9c52-9c46b9a05131', '2020-05-18 09:01:14+00', 'key-auth', NULL, NULL, '50c7bd4d-99b4-4d11-882f-1ceae471399b', '{"anonymous": null, "key_names": ["apikey"], "key_in_body": false, "hide_credentials": true, "run_on_preflight": true}', true, 'plugins:key-auth:50c7bd4d-99b4-4d11-882f-1ceae471399b:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('d274a22b-7ff3-41e9-bc3c-4503ca36073e', '2020-05-18 12:58:03+00', 'request-transformer', NULL, NULL, '4f35fada-74f4-43c3-a70d-a7bcb8ea1fd6', '{"add": {"body": ["query: query getPolicies {   policies: idm_policy {     id     name   } }"], "headers": ["x-hasura-admin-secret: PlWKRn15yKzLBnbKB4CB", "x-hasura-role: System_Admin", "content-type: application/json "], "querystring": []}, "append": {"body": [], "headers": [], "querystring": []}, "remove": {"body": [], "headers": [], "querystring": []}, "rename": {"body": [], "headers": [], "querystring": []}, "replace": {"uri": null, "body": [], "headers": [], "querystring": []}, "http_method": "POST"}', true, 'plugins:request-transformer:4f35fada-74f4-43c3-a70d-a7bcb8ea1fd6:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('a27a3826-fe23-4227-b962-e35ea35bece5', '2020-05-18 12:55:55+00', 'key-auth', NULL, NULL, '4f35fada-74f4-43c3-a70d-a7bcb8ea1fd6', '{"anonymous": null, "key_names": ["apikey"], "key_in_body": false, "hide_credentials": true, "run_on_preflight": true}', true, 'plugins:key-auth:4f35fada-74f4-43c3-a70d-a7bcb8ea1fd6:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('fbe6ee23-ba9f-4e93-808e-86d0943c0e66', '2020-05-27 08:29:29+00', 'cors', NULL, NULL, 'c12739df-af30-45f5-8264-4276d42302bb', '{"headers": ["Authorization", "Content-Type"], "max_age": null, "methods": ["GET", "OPTIONS"], "origins": ["*"], "credentials": false, "exposed_headers": ["Authorization"], "preflight_continue": false}', true, 'plugins:cors:c12739df-af30-45f5-8264-4276d42302bb:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('1d84d65e-9df8-415e-963c-a97037dd29bc', '2020-05-05 17:00:42+00', 'oidc', NULL, NULL, '3f46c826-d42f-46cf-b19e-e540f45b7fc1', '{"realm": "kong", "scope": "openid profile email address phone offline_access uma_protection", "issuer": "https://$IDM/oidc-provider", "filters": null, "timeout": null, "client_id": "3e3aa15a-befd-4ad7-8814-041de0d20158", "discovery": "/.well-known/openid-configuration", "ssl_verify": "no", "bearer_only": "yes", "logout_path": "/logout", "client_secret": "LxACQQv-Q6MTJ4J7va3B8AbwQaboM2f_4SOJSi19dYgtqpMuIyqAKUzz5pefL2D7wRBHlVqGTBbZnH0isDUgaA", "response_type": "code", "session_secret": null, "redirect_uri_path": "/", "recovery_page_path": null, "introspection_endpoint": "/introspect", "redirect_after_logout_uri": "/", "token_endpoint_auth_method": "client_secret_post", "introspection_endpoint_auth_method": null}', true, 'plugins:oidc:3f46c826-d42f-46cf-b19e-e540f45b7fc1:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('9f8ce820-1a61-42a7-a016-b6a3e7de4236', '2020-05-13 07:40:03+00', 'oidc', NULL, NULL, 'd9c4da03-6fa8-48c9-96df-2bd2b3e30a49', '{"realm": "kong", "scope": "openid profile email phone uma_protection offline_access", "issuer": "https://$IDM/oidc-provider", "filters": null, "timeout": null, "client_id": "ce676d28-67f1-4cd8-b41a-5b080ea4a8b0", "discovery": "/.well-known/openid-configuration", "ssl_verify": "no", "bearer_only": "yes", "logout_path": "/logout", "client_secret": "APGnUcJeW3uXourLiroujckJNwD7zQ4Ccu7mG_JaHL0Rnz4gdF8MqCn8-UaAvYq7i5TocSeb65YmAtUKKW0Gt-s", "response_type": "code", "session_secret": null, "redirect_uri_path": null, "recovery_page_path": null, "introspection_endpoint": "/introspect", "redirect_after_logout_uri": "/", "token_endpoint_auth_method": "client_secret_post", "introspection_endpoint_auth_method": "client_secret_basic"}', true, 'plugins:oidc:d9c4da03-6fa8-48c9-96df-2bd2b3e30a49:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('69b26c18-6d95-4cf6-b1a0-0f98de9e9208', '2020-06-02 02:59:49+00', 'cors', NULL, '30ee232e-f1da-415e-a696-8d1e27f9b514', NULL, '{"headers": ["Authorization", "Content-Type"], "max_age": null, "methods": ["GET", "POST", "OPTIONS"], "origins": ["*"], "credentials": false, "exposed_headers": ["Authorization"], "preflight_continue": true}', true, 'plugins:cors::30ee232e-f1da-415e-a696-8d1e27f9b514::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('d09a96fe-67d6-45b2-b4ec-c268320ebafb', '2020-05-27 18:54:18+00', 'request-transformer', NULL, NULL, '16c0a0e7-76e8-409a-a0b3-3df45189e9f8', '{"add": {"body": ["query: query getForms($where: forms_forms_content_bool_exp) {   forms_forms_content(where: $where) {     _id     components     created_at     display     geo_point     modified     name     path     project     tenant_id     title     type     updated_at   } }"], "headers": ["content-type: application/json", "x-hasura-admin-secret: PlWKRn15yKzLBnbKB4CB", "x-hasura-role: System_Admin"], "querystring": []}, "append": {"body": [], "headers": [], "querystring": []}, "remove": {"body": [], "headers": ["Authorization"], "querystring": []}, "rename": {"body": [], "headers": [], "querystring": []}, "replace": {"uri": null, "body": [], "headers": [], "querystring": []}, "http_method": null}', true, 'plugins:request-transformer:16c0a0e7-76e8-409a-a0b3-3df45189e9f8:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('8545e156-f6fa-4fdb-bb74-754e128c1f6f', '2020-07-01 09:11:09+00', 'acme', NULL, NULL, NULL, '{"api_uri": "https://acme-v02.api.letsencrypt.org", "domains": null, "storage": "kong", "cert_type": "rsa", "tos_accepted": true, "account_email": "yborbon@gk-software.com", "storage_config": {"shm": {"shm_name": "kong"}, "kong": {}, "redis": {"auth": null, "host": null, "port": null, "database": null}, "vault": {"host": null, "port": null, "https": true, "token": null, "kv_path": null, "timeout": null}, "consul": {"host": null, "port": null, "https": true, "token": null, "kv_path": null, "timeout": null}}, "renew_threshold_days": 14}', true, 'plugins:acme::::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('2c9add98-8e97-4f22-990a-8a22b3e2e688', '2020-10-12 12:40:39+00', 'cors', NULL, '0b4814eb-cbea-47ed-acf7-53b980b32013', NULL, '{"headers": ["Content-Type", "Authorization"], "max_age": null, "methods": ["GET", "POST", "OPTIONS"], "origins": ["*"], "credentials": true, "exposed_headers": ["Authorization"], "preflight_continue": false}', true, 'plugins:cors::0b4814eb-cbea-47ed-acf7-53b980b32013::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('a89ee02b-48c2-46e8-9747-85455d415e82', '2020-10-12 14:40:14+00', 'oidc', NULL, NULL, '5b6d75b6-f03a-4a1c-b057-52045dbe3147', '{"realm": "kong", "scope": "openid profile", "issuer": "https://$IDM/oidc-provider", "filters": null, "timeout": null, "client_id": "766c3a4d-73c3-4a96-9b84-d611f9482909", "discovery": "/.well-known/openid-configuration", "ssl_verify": "no", "bearer_only": "no", "logout_path": "/logout", "client_secret": "AOzspMvvE7NuDolUWjhUXPiWgW5YJG8QrAoPD0NY208PA6pX4n7SGI83xnIkNHCSI_rWN2jwsAzCOBvNkCNK6SE", "response_type": "code", "session_secret": null, "redirect_uri_path": "/blackwidow/callback/", "recovery_page_path": null, "introspection_endpoint": "/introspect", "redirect_after_logout_uri": "/", "token_endpoint_auth_method": "client_secret_post", "introspection_endpoint_auth_method": "client_secret_basic"}', true, 'plugins:oidc:5b6d75b6-f03a-4a1c-b057-52045dbe3147:::', '{grpc,grpcs,http,https}', NULL);
INSERT INTO public.plugins VALUES ('5ec8c35a-7fda-40a0-937c-996026596317', '2020-05-05 17:33:29+00', 'oidc', NULL, NULL, '44005ded-24ef-4ad7-8f0e-49f8b7c079b7', '{"realm": "kong", "scope": "openid profile email address phone offline_access uma_protection", "issuer": "https://$IDM/oidc-provider", "filters": null, "timeout": null, "client_id": "ce676d28-67f1-4cd8-b41a-5b080ea4a8b0", "discovery": "/.well-known/openid-configuration", "ssl_verify": "no", "bearer_only": "yes", "logout_path": "/srms/logout", "client_secret": "APGnUcJeW3uXourLiroujckJNwD7zQ4Ccu7mG_JaHL0Rnz4gdF8MqCn8-UaAvYq7i5TocSeb65YmAtUKKW0Gt-s", "response_type": "code", "session_secret": null, "redirect_uri_path": "/srms/", "recovery_page_path": null, "introspection_endpoint": "/introspect", "redirect_after_logout_uri": "/", "token_endpoint_auth_method": "client_secret_post", "introspection_endpoint_auth_method": "client_secret_post"}', true, 'plugins:oidc:44005ded-24ef-4ad7-8f0e-49f8b7c079b7:::', '{grpc,grpcs,http,https}', NULL);



--
-- TOC entry 3100 (class 0 OID 17762)
-- Dependencies: 218
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: kong
--

INSERT INTO public.tags VALUES ('a103ce9e-2613-46c0-b0d0-082e8eeed608', 'routes', NULL);
INSERT INTO public.tags VALUES ('78e729ad-2926-4aef-87ee-0e2d3102fffe', 'services', NULL);
INSERT INTO public.tags VALUES ('5dbff9e2-3356-490a-a73f-766dd0596b39', 'plugins', NULL);
INSERT INTO public.tags VALUES ('98b379b2-76f3-417e-826f-51886249a996', 'routes', NULL);
INSERT INTO public.tags VALUES ('4f35fada-74f4-43c3-a70d-a7bcb8ea1fd6', 'routes', NULL);
INSERT INTO public.tags VALUES ('d274a22b-7ff3-41e9-bc3c-4503ca36073e', 'plugins', NULL);
INSERT INTO public.tags VALUES ('a27a3826-fe23-4227-b962-e35ea35bece5', 'plugins', NULL);
INSERT INTO public.tags VALUES ('d9c4da03-6fa8-48c9-96df-2bd2b3e30a49', 'routes', NULL);
INSERT INTO public.tags VALUES ('3f46c826-d42f-46cf-b19e-e540f45b7fc1', 'routes', NULL);
INSERT INTO public.tags VALUES ('021e85d9-6670-45c9-bc8a-99d1a9577b75', 'plugins', NULL);
INSERT INTO public.tags VALUES ('9f4896d6-5310-41ae-8cbe-ff0a4d56df28', 'plugins', NULL);
INSERT INTO public.tags VALUES ('3e21569b-a9cb-41b3-8976-f959f24c0997', 'routes', NULL);
INSERT INTO public.tags VALUES ('70c77866-28b5-48b1-b0aa-e28a04c94cba', 'routes', NULL);
INSERT INTO public.tags VALUES ('fd33cf6b-0340-421e-adc8-2b1a161aee8b', 'plugins', NULL);
INSERT INTO public.tags VALUES ('220159c3-8227-49fb-97d0-1b415e073452', 'services', '{}');
INSERT INTO public.tags VALUES ('1518fe97-ffb5-440e-bc81-d81d58c21f7c', 'routes', NULL);
INSERT INTO public.tags VALUES ('2a7aa78b-ccbd-4726-8aed-eb81efc63a19', 'plugins', NULL);
INSERT INTO public.tags VALUES ('44005ded-24ef-4ad7-8f0e-49f8b7c079b7', 'routes', NULL);
INSERT INTO public.tags VALUES ('3f754a34-8420-487a-b359-51b547668ccb', 'routes', NULL);
INSERT INTO public.tags VALUES ('f54fc9e5-40a1-49c7-a345-465acda3a53e', 'plugins', NULL);
INSERT INTO public.tags VALUES ('79a770cc-460b-4a61-b5e4-1541cfeb05a5', 'routes', NULL);
INSERT INTO public.tags VALUES ('438f5541-a1d8-4ed3-a3a7-54786514cfc8', 'services', '{}');
INSERT INTO public.tags VALUES ('c12739df-af30-45f5-8264-4276d42302bb', 'routes', NULL);
INSERT INTO public.tags VALUES ('4ac4e06b-ed9a-4d4a-8c75-2d65cbb8d8df', 'routes', NULL);
INSERT INTO public.tags VALUES ('fbe6ee23-ba9f-4e93-808e-86d0943c0e66', 'plugins', NULL);
INSERT INTO public.tags VALUES ('616db429-c6c5-499f-b85d-3f7eb09e16fa', 'plugins', NULL);
INSERT INTO public.tags VALUES ('b1bdba69-5ae5-4593-91ae-b08eba2afc0e', 'plugins', NULL);
INSERT INTO public.tags VALUES ('0431ead1-6547-4967-99cc-1b604b5af81c', 'routes', NULL);
INSERT INTO public.tags VALUES ('20a4f447-40af-4dd2-bf56-4f03068f4ee4', 'plugins', NULL);
INSERT INTO public.tags VALUES ('f49fbf63-e724-402c-9584-6045fc076102', 'routes', NULL);
INSERT INTO public.tags VALUES ('16c0a0e7-76e8-409a-a0b3-3df45189e9f8', 'routes', NULL);
INSERT INTO public.tags VALUES ('3ae0a310-c4b6-43f9-85e9-448cc6dd0cd1', 'consumers', '{}');
INSERT INTO public.tags VALUES ('99a120d0-4f43-456c-88ea-709dab8ba944', 'keyauth_credentials', NULL);
INSERT INTO public.tags VALUES ('f2d18ca3-ee4c-4c64-a81b-e332baba3f15', 'plugins', NULL);
INSERT INTO public.tags VALUES ('f88df230-7918-4274-a6f9-f636767b5355', 'plugins', NULL);
INSERT INTO public.tags VALUES ('2673a11f-d87b-4d35-9a72-077e24df0d24', 'routes', NULL);
INSERT INTO public.tags VALUES ('50c7bd4d-99b4-4d11-882f-1ceae471399b', 'routes', NULL);
INSERT INTO public.tags VALUES ('e9c7bc0d-0ab9-4b43-9c52-9c46b9a05131', 'plugins', NULL);
INSERT INTO public.tags VALUES ('064c2754-cffd-40c0-bddf-20a8ddcc9792', 'services', '{}');
INSERT INTO public.tags VALUES ('873f2bdb-47e0-464d-bd15-07f71456dcb2', 'services', '{}');
INSERT INTO public.tags VALUES ('1d84d65e-9df8-415e-963c-a97037dd29bc', 'plugins', NULL);
INSERT INTO public.tags VALUES ('69b26c18-6d95-4cf6-b1a0-0f98de9e9208', 'plugins', NULL);
INSERT INTO public.tags VALUES ('4d770019-c27f-437a-af22-d937bffd0d03', 'services', '{}');
INSERT INTO public.tags VALUES ('a548bff9-38f4-4762-b4ff-b59034dccda3', 'services', '{}');
INSERT INTO public.tags VALUES ('0b4814eb-cbea-47ed-acf7-53b980b32013', 'services', '{}');
INSERT INTO public.tags VALUES ('5b6d75b6-f03a-4a1c-b057-52045dbe3147', 'routes', NULL);
INSERT INTO public.tags VALUES ('9f8ce820-1a61-42a7-a016-b6a3e7de4236', 'plugins', NULL);
INSERT INTO public.tags VALUES ('2c9add98-8e97-4f22-990a-8a22b3e2e688', 'plugins', NULL);
INSERT INTO public.tags VALUES ('a89ee02b-48c2-46e8-9747-85455d415e82', 'plugins', NULL);
INSERT INTO public.tags VALUES ('8545e156-f6fa-4fdb-bb74-754e128c1f6f', 'plugins', NULL);
INSERT INTO public.tags VALUES ('56e915d6-a4f7-4174-8845-18f34a41df6c', 'certificates', NULL);
INSERT INTO public.tags VALUES ('d75488f6-7a5d-4bac-ad09-d28192d2f1ab', 'snis', NULL);
INSERT INTO public.tags VALUES ('9b8a2c9e-b7a7-4536-9b55-6847e4e8019f', 'snis', NULL);
INSERT INTO public.tags VALUES ('3298c1a2-94af-4a99-bb34-bf09074c2b50', 'routes', NULL);
INSERT INTO public.tags VALUES ('c724f3df-a6ab-41cb-8591-5f9599880dc3', 'services', '{kong,konga}');
INSERT INTO public.tags VALUES ('d0a8ca03-de41-4650-a434-37366d858b68', 'routes', NULL);
INSERT INTO public.tags VALUES ('3c9d0ec6-2c93-4015-840e-5e1d7b45e6e2', 'routes', NULL);
INSERT INTO public.tags VALUES ('18c21e23-dde3-48b2-a1ee-a4cb0697bde0', 'services', '{}');
INSERT INTO public.tags VALUES ('a36fb5c8-0463-4f17-8786-8ea4038564e4', 'services', '{}');
INSERT INTO public.tags VALUES ('457d4ecb-2724-4e70-8fdb-2b06a583777f', 'services', '{flowable,modeler,task}');
INSERT INTO public.tags VALUES ('30ee232e-f1da-415e-a696-8d1e27f9b514', 'services', '{}');
INSERT INTO public.tags VALUES ('d09a96fe-67d6-45b2-b4ec-c268320ebafb', 'plugins', NULL);
INSERT INTO public.tags VALUES ('cea30e15-f061-47a1-8144-435bf5751818', 'services', '{}');
INSERT INTO public.tags VALUES ('5ec8c35a-7fda-40a0-937c-996026596317', 'plugins', NULL);
INSERT INTO public.tags VALUES ('fe749b37-92bb-4829-be85-fe1224900335', 'services', '{}');
INSERT INTO public.tags VALUES ('71d6212b-4a18-4f04-adca-5bd7e502927e', 'routes', NULL);

