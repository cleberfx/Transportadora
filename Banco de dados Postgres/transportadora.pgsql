--
-- PostgreSQL database dump
--

-- Dumped from database version 11.1
-- Dumped by pg_dump version 11.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: encomenda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.encomenda (
    id_encomenda bigint NOT NULL,
    status_encomenda character varying(30) DEFAULT 'na Central de Distribuição'::character varying NOT NULL
);


ALTER TABLE public.encomenda OWNER TO postgres;

--
-- Name: encomenda_id_encomenda_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.encomenda_id_encomenda_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.encomenda_id_encomenda_seq OWNER TO postgres;

--
-- Name: encomenda_id_encomenda_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.encomenda_id_encomenda_seq OWNED BY public.encomenda.id_encomenda;


--
-- Name: encomenda id_encomenda; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.encomenda ALTER COLUMN id_encomenda SET DEFAULT nextval('public.encomenda_id_encomenda_seq'::regclass);


--
-- Data for Name: encomenda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.encomenda (id_encomenda, status_encomenda) FROM stdin;
2	Em Transito
3	Entregue
1	na Central de Distribuição
\.


--
-- Name: encomenda_id_encomenda_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.encomenda_id_encomenda_seq', 3, true);


--
-- Name: encomenda encomenda_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.encomenda
    ADD CONSTRAINT encomenda_pkey PRIMARY KEY (id_encomenda);


--
-- PostgreSQL database dump complete
--

