--
-- PostgreSQL database dump
--

-- Dumped from database version 12.1
-- Dumped by pg_dump version 12.0

-- Started on 2019-12-15 20:31:57

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

--
-- TOC entry 2955 (class 0 OID 16385)
-- Dependencies: 202
-- Data for Name: hibernate_sequences; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.hibernate_sequences VALUES ('policy_sets', 1);
INSERT INTO public.hibernate_sequences VALUES ('rules', 2);
INSERT INTO public.hibernate_sequences VALUES ('policies', 2);


--
-- TOC entry 2956 (class 0 OID 16388)
-- Dependencies: 203
-- Data for Name: policies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.policies VALUES (1, 'DENY_IF_NOT_PERMITTED', 'Can edit', 'Can edit', 'action.equals("EDIT")');
INSERT INTO public.policies VALUES (2, 'DENY_IF_NOT_PERMITTED', 'Can delete', 'Can delete', 'action.equals("DELETE")');
INSERT INTO public.policies VALUES (3, 'PERMIT_IF_ALL_PERMITTED', 'From one office', 'From one office', 'true');
INSERT INTO public.policies VALUES (32768, 'PERMIT_IF_ALL_PERMITTED', 'Can get', 'Can get', 'action.equals("GET")');


--
-- TOC entry 2960 (class 0 OID 16406)
-- Dependencies: 207
-- Data for Name: rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.rules VALUES (1, 'subject.getArray("roles").contains("ADMIN")', 'Admin can do', true, 'Admin can do', 'true');
INSERT INTO public.rules VALUES (2, 'subject.getArray("roles").contains("EDITOR")', 'Editor can do', true, 'Editor can do', 'true');
INSERT INTO public.rules VALUES (3, 'subject.get("office/id").equals(object.get("office/id"))', 'From one office', true, 'From one office', 'true');
INSERT INTO public.rules VALUES (32768, 'true', 'Permit', true, 'Permit', 'true');


--
-- TOC entry 2957 (class 0 OID 16394)
-- Dependencies: 204
-- Data for Name: policies_rules; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.policies_rules VALUES (1, 1);
INSERT INTO public.policies_rules VALUES (1, 2);
INSERT INTO public.policies_rules VALUES (2, 1);
INSERT INTO public.policies_rules VALUES (2, 2);
INSERT INTO public.policies_rules VALUES (3, 3);
INSERT INTO public.policies_rules VALUES (32768, 32768);


--
-- TOC entry 2958 (class 0 OID 16397)
-- Dependencies: 205
-- Data for Name: policy_sets; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.policy_sets VALUES (1, 'PERMIT_IF_2_PERMITTED', 'Action with the candidate', 'Action with the candidate', 'object.get("type").equals("candidate")');


--
-- TOC entry 2959 (class 0 OID 16403)
-- Dependencies: 206
-- Data for Name: policy_sets_policies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.policy_sets_policies VALUES (1, 2);
INSERT INTO public.policy_sets_policies VALUES (1, 3);
INSERT INTO public.policy_sets_policies VALUES (1, 1);
INSERT INTO public.policy_sets_policies VALUES (1, 32768);


-- Completed on 2019-12-15 20:31:58

--
-- PostgreSQL database dump complete
--

