--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 15.1

-- Started on 2023-02-10 14:32:18

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
-- TOC entry 4 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

-- *not* creating schema, since initdb creates it


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 228 (class 1255 OID 16883)
-- Name: eq_size(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.eq_size(siz integer) RETURNS TABLE(id integer, name character varying, size integer)
    LANGUAGE sql
    AS $$
SELECT e.equipment_id, eet.name, e.size
from equipment as e, equipment_type as eet
where e.equipment_type_id=eet.equipment_type_id and e.size =siz;
$$;


ALTER FUNCTION public.eq_size(siz integer) OWNER TO postgres;

--
-- TOC entry 229 (class 1255 OID 16884)
-- Name: renter_times(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.renter_times(tim integer) RETURNS TABLE(name character varying, times integer)
    LANGUAGE sql
    AS $$
select CONCAT(rr.name ||' '|| rr.surname) as "name, surname", COUNT(r.rent_id) as times
from renter as rr, rent as r 
where r.renter_id= rr.renter_id 
GROUP BY CONCAT(rr.name ||' '|| rr.surname)
HAVING COUNT(r.renter_id)= tim;
$$;


ALTER FUNCTION public.renter_times(tim integer) OWNER TO postgres;

--
-- TOC entry 227 (class 1255 OID 16700)
-- Name: rents_years(integer); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE FUNCTION public.rents_years(y integer) RETURNS bigint
    LANGUAGE sql
    AS $$
Select COUNT(rent_id)
from rent 
where date_part('year', date) =y;
$$;


ALTER FUNCTION public.rents_years(y integer) OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 216 (class 1259 OID 16764)
-- Name: accessories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accessories (
    accessories_id integer NOT NULL,
    name character varying(30) NOT NULL,
    price numeric(6,2) NOT NULL
);


ALTER TABLE public.accessories OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 16763)
-- Name: accessories_accessories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accessories_accessories_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accessories_accessories_id_seq OWNER TO postgres;

--
-- TOC entry 3416 (class 0 OID 0)
-- Dependencies: 215
-- Name: accessories_accessories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accessories_accessories_id_seq OWNED BY public.accessories.accessories_id;


--
-- TOC entry 226 (class 1259 OID 16839)
-- Name: accessories_rent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.accessories_rent (
    accessories_rent_id integer NOT NULL,
    accessories_id integer NOT NULL,
    rent_id integer NOT NULL
);


ALTER TABLE public.accessories_rent OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16838)
-- Name: accessories_rent_accessories_rent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.accessories_rent_accessories_rent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.accessories_rent_accessories_rent_id_seq OWNER TO postgres;

--
-- TOC entry 3417 (class 0 OID 0)
-- Dependencies: 225
-- Name: accessories_rent_accessories_rent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.accessories_rent_accessories_rent_id_seq OWNED BY public.accessories_rent.accessories_rent_id;


--
-- TOC entry 212 (class 1259 OID 16747)
-- Name: age_range; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.age_range (
    age_range_id integer NOT NULL,
    age_from integer NOT NULL,
    age_to integer NOT NULL,
    price_multiplier numeric(2,1) NOT NULL,
    CONSTRAINT age_range_age_from_check CHECK (((age_from >= 0) AND (age_from <= 60))),
    CONSTRAINT age_range_age_to_check CHECK (((age_to >= 6) AND (age_to <= 100))),
    CONSTRAINT age_range_price_multiplier_check CHECK (((price_multiplier >= (0)::numeric) AND (price_multiplier <= (1)::numeric)))
);


ALTER TABLE public.age_range OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 16746)
-- Name: age_range_age_range_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.age_range_age_range_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.age_range_age_range_id_seq OWNER TO postgres;

--
-- TOC entry 3418 (class 0 OID 0)
-- Dependencies: 211
-- Name: age_range_age_range_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.age_range_age_range_id_seq OWNED BY public.age_range.age_range_id;


--
-- TOC entry 220 (class 1259 OID 16778)
-- Name: employee; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employee (
    employee_id integer NOT NULL,
    name character varying(30) NOT NULL,
    surname character varying(30) NOT NULL,
    worker_status integer NOT NULL,
    manager integer,
    date_from date NOT NULL,
    CONSTRAINT employee_date_from_check CHECK ((date_from <= CURRENT_DATE))
);


ALTER TABLE public.employee OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16777)
-- Name: employee_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employee_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employee_employee_id_seq OWNER TO postgres;

--
-- TOC entry 3419 (class 0 OID 0)
-- Dependencies: 219
-- Name: employee_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employee_employee_id_seq OWNED BY public.employee.employee_id;


--
-- TOC entry 222 (class 1259 OID 16796)
-- Name: equipment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipment (
    equipment_id integer NOT NULL,
    equipment_type_id integer NOT NULL,
    size integer
);


ALTER TABLE public.equipment OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16795)
-- Name: equipment_equipment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.equipment_equipment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.equipment_equipment_id_seq OWNER TO postgres;

--
-- TOC entry 3420 (class 0 OID 0)
-- Dependencies: 221
-- Name: equipment_equipment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.equipment_equipment_id_seq OWNED BY public.equipment.equipment_id;


--
-- TOC entry 218 (class 1259 OID 16771)
-- Name: equipment_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.equipment_type (
    equipment_type_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description character varying(40) NOT NULL,
    price_per_hour numeric(5,1) NOT NULL
);


ALTER TABLE public.equipment_type OWNER TO postgres;

--
-- TOC entry 217 (class 1259 OID 16770)
-- Name: equipment_type_equipment_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.equipment_type_equipment_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.equipment_type_equipment_type_id_seq OWNER TO postgres;

--
-- TOC entry 3421 (class 0 OID 0)
-- Dependencies: 217
-- Name: equipment_type_equipment_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.equipment_type_equipment_type_id_seq OWNED BY public.equipment_type.equipment_type_id;


--
-- TOC entry 224 (class 1259 OID 16808)
-- Name: rent; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rent (
    rent_id integer NOT NULL,
    equipment_id integer NOT NULL,
    renter_id integer NOT NULL,
    age_range_id integer NOT NULL,
    date date NOT NULL,
    start_hour integer,
    hours integer,
    employee_id integer,
    helper boolean DEFAULT false,
    payed boolean DEFAULT false NOT NULL,
    CONSTRAINT rent_date_check CHECK ((date <= CURRENT_DATE)),
    CONSTRAINT rent_hours_check CHECK ((hours > 0)),
    CONSTRAINT rent_start_hour_check CHECK (((start_hour >= 0) AND (start_hour <= 23)))
);


ALTER TABLE public.rent OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16807)
-- Name: rent_rent_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rent_rent_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rent_rent_id_seq OWNER TO postgres;

--
-- TOC entry 3422 (class 0 OID 0)
-- Dependencies: 223
-- Name: rent_rent_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rent_rent_id_seq OWNED BY public.rent.rent_id;


--
-- TOC entry 210 (class 1259 OID 16739)
-- Name: renter; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.renter (
    renter_id integer NOT NULL,
    name character varying(30) NOT NULL,
    surname character varying(30) NOT NULL,
    date_birth date NOT NULL,
    phone_number character varying(15) NOT NULL,
    CONSTRAINT renter_date_birth_check CHECK ((date_birth < CURRENT_DATE))
);


ALTER TABLE public.renter OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16738)
-- Name: renter_renter_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.renter_renter_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.renter_renter_id_seq OWNER TO postgres;

--
-- TOC entry 3423 (class 0 OID 0)
-- Dependencies: 209
-- Name: renter_renter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.renter_renter_id_seq OWNED BY public.renter.renter_id;


--
-- TOC entry 214 (class 1259 OID 16757)
-- Name: worker_status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.worker_status (
    worker_status_id integer NOT NULL,
    name character varying(15) NOT NULL,
    description character varying(50)
);


ALTER TABLE public.worker_status OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 16756)
-- Name: worker_status_worker_status_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.worker_status_worker_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.worker_status_worker_status_id_seq OWNER TO postgres;

--
-- TOC entry 3424 (class 0 OID 0)
-- Dependencies: 213
-- Name: worker_status_worker_status_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.worker_status_worker_status_id_seq OWNED BY public.worker_status.worker_status_id;


--
-- TOC entry 3210 (class 2604 OID 16767)
-- Name: accessories accessories_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accessories ALTER COLUMN accessories_id SET DEFAULT nextval('public.accessories_accessories_id_seq'::regclass);


--
-- TOC entry 3217 (class 2604 OID 16842)
-- Name: accessories_rent accessories_rent_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accessories_rent ALTER COLUMN accessories_rent_id SET DEFAULT nextval('public.accessories_rent_accessories_rent_id_seq'::regclass);


--
-- TOC entry 3208 (class 2604 OID 16750)
-- Name: age_range age_range_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.age_range ALTER COLUMN age_range_id SET DEFAULT nextval('public.age_range_age_range_id_seq'::regclass);


--
-- TOC entry 3212 (class 2604 OID 16781)
-- Name: employee employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee ALTER COLUMN employee_id SET DEFAULT nextval('public.employee_employee_id_seq'::regclass);


--
-- TOC entry 3213 (class 2604 OID 16799)
-- Name: equipment equipment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment ALTER COLUMN equipment_id SET DEFAULT nextval('public.equipment_equipment_id_seq'::regclass);


--
-- TOC entry 3211 (class 2604 OID 16774)
-- Name: equipment_type equipment_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment_type ALTER COLUMN equipment_type_id SET DEFAULT nextval('public.equipment_type_equipment_type_id_seq'::regclass);


--
-- TOC entry 3214 (class 2604 OID 16811)
-- Name: rent rent_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent ALTER COLUMN rent_id SET DEFAULT nextval('public.rent_rent_id_seq'::regclass);


--
-- TOC entry 3207 (class 2604 OID 16742)
-- Name: renter renter_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.renter ALTER COLUMN renter_id SET DEFAULT nextval('public.renter_renter_id_seq'::regclass);


--
-- TOC entry 3209 (class 2604 OID 16760)
-- Name: worker_status worker_status_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worker_status ALTER COLUMN worker_status_id SET DEFAULT nextval('public.worker_status_worker_status_id_seq'::regclass);


--
-- TOC entry 3399 (class 0 OID 16764)
-- Dependencies: 216
-- Data for Name: accessories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accessories (accessories_id, name, price) FROM stdin;
1	gloves	5.00
2	protective gloves	10.00
3	hockey gloves	15.00
4	socks	5.00
5	tights	10.00
6	mask	2.50
7	protective padding	10.00
8	regular helmet	10.00
9	regular hockey suite	40.00
10	luxury hockcey gear	150.00
11	helmet with stickers	15.00
12	headband	2.00
13	training aids boundle	30.00
14	starter trainer	20.00
15	figure skating trainer	50.00
16	protective glases	10.00
17	hockey trainer	40.00
\.


--
-- TOC entry 3409 (class 0 OID 16839)
-- Dependencies: 226
-- Data for Name: accessories_rent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.accessories_rent (accessories_rent_id, accessories_id, rent_id) FROM stdin;
1	9	17
2	9	19
3	17	21
4	9	26
5	9	31
6	17	33
7	9	39
8	9	43
9	9	47
10	17	48
11	10	53
12	9	54
13	17	55
14	17	58
15	17	61
16	9	64
17	17	66
18	10	67
19	17	68
20	9	70
21	9	72
22	9	73
23	9	77
24	3	80
25	17	91
26	3	98
27	9	99
28	9	109
29	3	112
30	3	117
31	3	121
32	9	123
33	17	17
34	17	26
35	17	64
36	17	67
37	17	70
38	17	73
39	17	77
40	17	123
41	4	4
42	1	6
43	13	7
44	5	14
45	2	20
46	6	29
47	4	37
48	12	44
49	2	50
50	8	52
51	12	57
52	7	63
53	1	71
54	4	79
55	7	81
56	4	82
57	1	83
58	1	84
59	5	85
60	5	92
61	5	96
62	15	105
63	1	107
64	5	108
65	2	115
66	1	126
67	1	4
68	7	6
69	5	7
70	4	14
71	1	29
72	1	37
73	5	50
74	2	52
75	7	57
76	4	63
77	2	71
78	7	79
79	5	81
80	13	82
81	12	83
82	2	84
83	2	85
84	1	92
85	1	96
86	6	108
87	4	126
88	5	6
89	12	7
90	6	14
91	2	29
92	5	37
93	1	50
94	5	52
95	1	57
96	5	63
97	4	71
98	1	81
99	2	82
100	2	83
101	15	84
102	4	85
103	12	92
104	15	108
105	7	126
106	2	6
107	4	7
108	1	14
109	15	29
110	5	57
111	12	63
112	6	71
113	2	81
114	1	82
115	2	108
116	5	126
117	2	7
118	15	71
119	13	126
\.


--
-- TOC entry 3395 (class 0 OID 16747)
-- Dependencies: 212
-- Data for Name: age_range; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.age_range (age_range_id, age_from, age_to, price_multiplier) FROM stdin;
1	0	6	0.3
2	7	14	0.6
3	15	21	0.8
4	22	55	1.0
5	56	100	0.8
\.


--
-- TOC entry 3403 (class 0 OID 16778)
-- Dependencies: 220
-- Data for Name: employee; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employee (employee_id, name, surname, worker_status, manager, date_from) FROM stdin;
1	Inguna	Kalnina	1	1	2014-11-19
2	Ints	Ozols	1	1	2014-11-19
3	Martins	Eglitis	1	1	2014-11-19
4	Liga	Ozolina	2	1	2014-11-19
5	Juris	Kalnins	1	5	2014-11-20
6	Andra	Berzina	5	5	2014-12-12
7	Melanija	Eglite	6	1	2014-12-16
8	Ludis	Ozols	3	4	2014-12-20
9	Linda	Zarina	2	5	2015-01-01
10	Ina	Zarina	1	5	2015-03-16
11	Jevgenija	Eglite	2	1	2015-08-20
12	Vilis	Kalnins	2	4	2015-09-30
13	Genadijs	Liepins	5	5	2015-10-01
14	Daniels	Ozolins	5	5	2015-10-01
15	Ruta	Kalnina	6	4	2015-11-27
16	Aleksandrs	Balodis	4	5	2015-11-30
17	Georgs	Liepins	6	2	2015-12-16
18	Daina	Berzina	6	1	2016-04-28
19	Tatjana	Kalnina	1	5	2016-09-01
20	Valdis	Ozolins	1	1	2016-12-01
21	Liana	Berzina	2	2	2017-01-06
22	Lasma	Ozolina	1	3	2016-08-09
\.


--
-- TOC entry 3405 (class 0 OID 16796)
-- Dependencies: 222
-- Data for Name: equipment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipment (equipment_id, equipment_type_id, size) FROM stdin;
1	7	36
2	6	40
3	2	38
4	2	42
5	1	35
6	2	38
7	2	40
8	8	43
9	3	47
10	6	46
11	6	46
12	3	43
13	2	44
14	3	48
15	7	42
16	2	45
17	1	46
18	6	42
19	2	36
20	8	45
21	3	35
22	6	41
23	8	36
24	1	44
25	2	47
26	1	39
27	1	35
28	1	44
29	6	42
30	6	46
31	4	48
32	2	43
33	5	46
34	8	37
35	5	37
36	6	33
37	4	36
38	6	45
39	6	35
40	6	37
41	6	37
42	3	38
43	4	47
44	6	45
45	2	34
46	4	36
47	6	43
48	6	38
49	3	39
50	1	46
51	3	45
52	2	44
53	3	44
54	1	45
55	3	40
56	5	46
57	7	45
58	8	36
59	3	41
60	6	47
61	3	44
62	6	47
63	2	47
64	7	40
65	6	38
66	3	45
67	1	45
68	2	43
69	6	45
70	7	37
71	6	43
72	5	39
73	3	37
74	5	36
75	1	33
76	6	46
77	4	37
78	5	38
79	6	39
80	3	34
81	6	38
82	6	43
83	5	37
84	8	44
85	6	38
86	6	42
87	5	35
88	4	37
89	6	36
90	5	34
91	8	38
92	4	41
93	2	48
94	6	44
95	4	37
96	1	39
97	1	34
98	3	35
99	5	33
100	5	44
\.


--
-- TOC entry 3401 (class 0 OID 16771)
-- Dependencies: 218
-- Data for Name: equipment_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.equipment_type (equipment_type_id, name, description, price_per_hour) FROM stdin;
1	hockey professional	skates for professional hockey	30.0
2	hockey standart	skates for hockey regular	15.0
3	figure skates standart	figure skates for beginers, help balance	15.0
4	figure skates professional	figure skates for professional skaters	30.0
5	wide blade	ideal for beginers	10.0
6	standart	universal for any porpuse in use	15.0
7	short blade	short blade for faster skaters	20.0
8	long blade	long blade for mor traction	20.0
\.


--
-- TOC entry 3407 (class 0 OID 16808)
-- Dependencies: 224
-- Data for Name: rent; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rent (rent_id, equipment_id, renter_id, age_range_id, date, start_hour, hours, employee_id, helper, payed) FROM stdin;
1	10	20	4	2014-11-19	13	2	4	f	t
2	30	3	4	2014-11-19	17	3	1	t	t
3	51	6	4	2014-11-19	21	3	4	f	t
4	84	20	4	2014-11-19	22	1	3	f	t
5	51	26	3	2014-11-19	21	2	4	f	t
6	80	26	3	2014-11-19	18	1	2	f	t
7	48	17	4	2014-11-19	17	3	4	f	t
8	94	19	3	2014-11-19	17	2	4	f	t
9	44	20	3	2014-11-19	13	3	3	t	t
10	2	22	2	2014-11-19	23	3	4	t	t
11	4	20	3	2014-11-19	12	1	4	f	t
12	73	25	1	2014-11-19	23	2	3	f	t
13	98	7	5	2014-11-19	19	1	4	f	t
14	40	25	2	2014-11-19	16	2	2	t	t
15	11	21	1	2014-12-04	18	2	5	t	t
16	6	15	2	2014-12-05	13	3	5	f	t
17	49	23	4	2014-12-06	20	1	4	f	t
18	26	11	2	2015-01-16	14	1	5	f	t
19	12	3	3	2015-01-16	11	2	6	f	t
20	3	12	3	2015-01-16	13	1	7	f	t
21	60	17	3	2015-01-17	12	6	7	t	t
22	94	18	4	2015-01-17	17	2	7	f	t
23	86	17	3	2015-01-17	16	1	7	f	t
24	41	14	4	2015-01-17	17	3	7	f	t
25	17	16	4	2015-01-17	13	1	7	f	t
26	91	9	3	2015-01-18	10	3	7	f	t
27	23	3	2	2015-01-19	11	3	7	f	t
28	77	19	2	2015-01-20	15	3	6	f	t
29	2	13	5	2015-01-20	15	1	4	t	t
30	24	1	2	2015-01-21	21	3	5	f	t
31	48	20	3	2015-01-22	17	1	3	t	t
32	97	4	4	2015-02-06	11	3	1	f	t
33	72	6	4	2015-02-06	16	2	9	f	t
34	30	18	2	2015-02-06	21	3	9	t	t
35	7	9	2	2015-02-06	15	3	9	f	t
36	92	22	4	2015-02-06	22	3	9	f	t
37	99	17	2	2015-02-07	19	3	9	f	t
38	7	2	3	2015-02-07	23	1	9	f	t
39	60	9	4	2015-02-07	9	1	9	f	t
40	83	21	4	2015-02-07	17	2	9	f	t
41	57	16	3	2015-02-07	13	3	9	f	t
42	96	11	5	2015-02-08	10	1	9	f	t
43	42	18	5	2015-02-08	20	1	6	f	t
44	60	8	1	2015-02-08	17	2	5	f	t
45	57	15	2	2015-02-09	17	3	5	f	t
46	4	6	2	2015-02-09	23	1	5	f	t
47	6	3	3	2015-02-09	22	3	5	f	t
48	60	1	4	2015-02-10	17	2	5	t	t
49	21	21	3	2015-02-11	16	2	3	f	t
50	40	12	3	2015-02-11	11	3	2	t	t
51	37	9	2	2015-02-11	16	1	10	f	t
52	28	16	2	2015-02-11	14	3	9	f	t
53	50	19	4	2015-02-11	17	1	9	f	t
54	75	4	3	2015-02-11	16	3	1	f	t
55	62	10	4	2015-02-11	16	3	8	t	t
56	9	7	4	2015-02-11	19	1	8	f	t
57	17	21	5	2015-02-11	14	2	8	f	t
58	39	4	3	2015-03-25	23	3	8	f	t
59	89	11	2	2015-03-26	15	3	8	f	t
60	32	8	2	2015-03-27	12	10	8	f	t
61	8	23	1	2015-03-27	13	1	9	f	t
62	92	15	3	2015-03-27	14	1	8	f	t
63	52	4	4	2015-03-27	16	1	7	f	t
64	100	9	2	2015-03-27	10	3	7	f	t
65	3	7	4	2015-03-28	14	3	7	f	t
66	26	6	3	2015-03-29	21	8	9	f	t
67	96	13	3	2015-03-29	14	1	9	f	t
68	57	3	4	2015-03-29	23	2	10	f	t
69	19	5	4	2015-03-29	17	3	9	f	t
70	55	4	4	2015-03-29	13	3	10	f	t
71	25	20	4	2015-03-29	15	1	2	f	t
72	7	18	5	2015-05-21	18	2	7	f	t
73	39	10	2	2015-05-21	12	2	8	f	t
74	1	11	2	2015-05-21	12	1	9	f	t
75	69	7	2	2015-05-22	10	2	10	t	t
76	50	25	2	2015-05-23	16	1	6	f	t
77	74	21	3	2015-05-23	10	3	7	f	t
78	37	25	4	2015-05-23	12	2	10	f	t
79	5	1	3	2015-11-30	17	2	12	f	t
80	31	19	4	2015-11-30	17	3	12	f	t
81	46	19	4	2015-11-30	13	1	4	f	t
82	66	24	4	2015-12-01	12	2	1	f	t
83	9	7	2	2015-12-01	10	3	2	f	t
84	12	2	3	2015-12-01	16	3	12	f	t
85	71	8	2	2015-12-01	10	1	12	t	t
86	57	12	3	2015-12-02	11	3	13	f	t
87	83	12	3	2015-12-03	14	3	15	f	t
88	90	26	1	2016-02-01	18	1	15	f	t
89	84	9	5	2016-02-01	17	1	15	f	t
90	17	9	5	2016-02-01	12	3	15	f	t
91	31	6	5	2016-02-01	12	1	15	f	t
92	2	7	4	2016-02-01	17	1	15	t	t
93	86	14	3	2016-02-01	22	3	13	t	t
94	23	15	4	2016-02-01	17	2	13	f	t
95	77	15	3	2016-02-01	1	1	13	f	t
96	35	10	3	2016-02-01	17	1	14	t	t
97	7	22	3	2016-02-01	17	2	16	f	t
98	27	21	2	2016-02-01	16	2	5	f	t
99	56	23	4	2016-02-02	10	2	14	f	t
100	36	4	2	2016-02-03	20	6	16	f	t
101	2	20	2	2016-02-04	21	3	15	t	t
102	100	3	3	2016-02-05	19	2	16	t	t
103	81	26	1	2016-02-06	23	2	17	f	t
104	73	4	2	2016-02-07	15	1	17	f	t
105	69	18	3	2016-10-09	18	3	18	t	t
106	51	6	3	2016-10-09	20	1	22	f	t
107	12	8	2	2016-10-09	23	4	22	f	t
108	7	3	3	2016-10-10	17	3	19	f	t
109	59	5	4	2016-10-10	12	2	19	f	t
110	8	17	3	2016-10-10	10	3	19	f	t
111	16	16	4	2016-10-10	21	3	19	f	t
112	91	18	3	2016-10-10	14	3	19	f	t
113	76	16	4	2016-10-10	16	3	19	f	t
114	77	19	3	2016-10-11	10	1	18	f	t
115	56	2	2	2016-10-12	18	1	19	f	t
116	54	22	2	2016-12-18	15	4	20	f	t
117	15	21	1	2016-12-19	16	2	20	f	t
118	85	19	5	2016-12-19	12	3	20	f	t
119	2	26	4	2016-12-19	17	1	19	f	t
120	5	6	2	2016-12-20	12	2	20	f	t
121	20	17	4	2016-12-21	16	3	19	f	t
122	52	3	4	2017-01-07	22	1	21	f	t
123	47	16	2	2017-01-08	20	1	21	t	t
124	62	8	4	2017-01-09	12	1	2	t	t
125	73	20	3	2017-01-10	19	2	21	f	t
126	100	23	5	2017-01-11	19	2	10	f	t
127	40	2	3	2017-01-12	19	1	21	f	t
\.


--
-- TOC entry 3393 (class 0 OID 16739)
-- Dependencies: 210
-- Data for Name: renter; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.renter (renter_id, name, surname, date_birth, phone_number) FROM stdin;
1	Derek	Elliana	1977-12-05	+37129375678
2	Kaylee	Berry	1945-11-27	+442079460244
3	Erma	Adelaide	1990-09-05	+3723343605
4	Olimpia	Sammie	1933-03-03	+493090798249
5	Rosie	Eliasz	1958-06-12	+3582025054837
6	Minerva	Kaczmarek	2017-01-23	+13406438201
7	Vanda	Adam	1990-10-04	+84354028975
8	Mahsa	Whitney	1975-06-09	+262811479082
9	Quintin	Mullins	2010-08-21	+49305733514
10	Derryl	Bloxam	1980-10-28	+97733281261
11	Ilmars	Penner	2001-09-24	+37169005493
12	Bryn	Atkinson	1974-02-07	+35897379404
13	Ethelred	Forest	2003-09-05	+37166547103
14	Theobald	Warrick	1980-04-07	+37181998497
15	Wilf	Bray	2016-05-16	+37180428537
16	Barret	Giles	1968-08-12	+3584567338190
17	Jed	Shelton	1983-09-22	+493002700440
18	Santa	Patrick	1967-11-28	+37126130858
19	Effie	Bishop	1995-06-24	+495343367508
20	Astrid	Wesley	2018-07-27	+37121689877
21	Annabella	Belcher	1997-03-17	+37126877797
22	Edgars	Kalnins	2017-04-21	+3716022048
23	Dzintars	Ozolins	2011-10-07	+37163442250
24	Miervaldis	Eglitis	1957-06-09	+85385987723
25	Gita	Ozolina	2008-09-21	+37250542288
26	Inga	Ozola	1982-05-01	+37161801851
\.


--
-- TOC entry 3397 (class 0 OID 16757)
-- Dependencies: 214
-- Data for Name: worker_status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.worker_status (worker_status_id, name, description) FROM stdin;
1	active	full time job
2	partial	half time job 
3	internship	applied for par time , for limited time
4	vacation	on vacation
5	suspended	suspended from job for limited time
6	fired	fired from job 
\.


--
-- TOC entry 3425 (class 0 OID 0)
-- Dependencies: 215
-- Name: accessories_accessories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accessories_accessories_id_seq', 17, true);


--
-- TOC entry 3426 (class 0 OID 0)
-- Dependencies: 225
-- Name: accessories_rent_accessories_rent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.accessories_rent_accessories_rent_id_seq', 119, true);


--
-- TOC entry 3427 (class 0 OID 0)
-- Dependencies: 211
-- Name: age_range_age_range_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.age_range_age_range_id_seq', 5, true);


--
-- TOC entry 3428 (class 0 OID 0)
-- Dependencies: 219
-- Name: employee_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employee_employee_id_seq', 22, true);


--
-- TOC entry 3429 (class 0 OID 0)
-- Dependencies: 221
-- Name: equipment_equipment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipment_equipment_id_seq', 100, true);


--
-- TOC entry 3430 (class 0 OID 0)
-- Dependencies: 217
-- Name: equipment_type_equipment_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.equipment_type_equipment_type_id_seq', 8, true);


--
-- TOC entry 3431 (class 0 OID 0)
-- Dependencies: 223
-- Name: rent_rent_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rent_rent_id_seq', 127, true);


--
-- TOC entry 3432 (class 0 OID 0)
-- Dependencies: 209
-- Name: renter_renter_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.renter_renter_id_seq', 26, true);


--
-- TOC entry 3433 (class 0 OID 0)
-- Dependencies: 213
-- Name: worker_status_worker_status_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.worker_status_worker_status_id_seq', 6, true);


--
-- TOC entry 3233 (class 2606 OID 16769)
-- Name: accessories accessories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accessories
    ADD CONSTRAINT accessories_pkey PRIMARY KEY (accessories_id);


--
-- TOC entry 3243 (class 2606 OID 16844)
-- Name: accessories_rent accessories_rent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accessories_rent
    ADD CONSTRAINT accessories_rent_pkey PRIMARY KEY (accessories_rent_id);


--
-- TOC entry 3229 (class 2606 OID 16755)
-- Name: age_range age_range_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.age_range
    ADD CONSTRAINT age_range_pkey PRIMARY KEY (age_range_id);


--
-- TOC entry 3237 (class 2606 OID 16784)
-- Name: employee employee_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_pkey PRIMARY KEY (employee_id);


--
-- TOC entry 3239 (class 2606 OID 16801)
-- Name: equipment equipment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_pkey PRIMARY KEY (equipment_id);


--
-- TOC entry 3235 (class 2606 OID 16776)
-- Name: equipment_type equipment_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment_type
    ADD CONSTRAINT equipment_type_pkey PRIMARY KEY (equipment_type_id);


--
-- TOC entry 3241 (class 2606 OID 16817)
-- Name: rent rent_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_pkey PRIMARY KEY (rent_id);


--
-- TOC entry 3227 (class 2606 OID 16745)
-- Name: renter renter_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.renter
    ADD CONSTRAINT renter_pkey PRIMARY KEY (renter_id);


--
-- TOC entry 3231 (class 2606 OID 16762)
-- Name: worker_status worker_status_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.worker_status
    ADD CONSTRAINT worker_status_pkey PRIMARY KEY (worker_status_id);


--
-- TOC entry 3251 (class 2606 OID 16845)
-- Name: accessories_rent accessories_rent_accessories_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accessories_rent
    ADD CONSTRAINT accessories_rent_accessories_id_fkey FOREIGN KEY (accessories_id) REFERENCES public.accessories(accessories_id);


--
-- TOC entry 3252 (class 2606 OID 16850)
-- Name: accessories_rent accessories_rent_rent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.accessories_rent
    ADD CONSTRAINT accessories_rent_rent_id_fkey FOREIGN KEY (rent_id) REFERENCES public.rent(rent_id);


--
-- TOC entry 3244 (class 2606 OID 16790)
-- Name: employee employee_manager_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_manager_fkey FOREIGN KEY (manager) REFERENCES public.employee(employee_id);


--
-- TOC entry 3245 (class 2606 OID 16785)
-- Name: employee employee_worker_status_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employee
    ADD CONSTRAINT employee_worker_status_fkey FOREIGN KEY (worker_status) REFERENCES public.worker_status(worker_status_id);


--
-- TOC entry 3246 (class 2606 OID 16802)
-- Name: equipment equipment_equipment_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.equipment
    ADD CONSTRAINT equipment_equipment_type_id_fkey FOREIGN KEY (equipment_type_id) REFERENCES public.equipment_type(equipment_type_id);


--
-- TOC entry 3247 (class 2606 OID 16828)
-- Name: rent rent_age_range_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_age_range_id_fkey FOREIGN KEY (age_range_id) REFERENCES public.age_range(age_range_id);


--
-- TOC entry 3248 (class 2606 OID 16833)
-- Name: rent rent_employee_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_employee_id_fkey FOREIGN KEY (employee_id) REFERENCES public.employee(employee_id);


--
-- TOC entry 3249 (class 2606 OID 16818)
-- Name: rent rent_equipment_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_equipment_id_fkey FOREIGN KEY (equipment_id) REFERENCES public.equipment(equipment_id);


--
-- TOC entry 3250 (class 2606 OID 16823)
-- Name: rent rent_renter_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rent
    ADD CONSTRAINT rent_renter_id_fkey FOREIGN KEY (renter_id) REFERENCES public.renter(renter_id);


--
-- TOC entry 3415 (class 0 OID 0)
-- Dependencies: 4
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2023-02-10 14:32:19

--
-- PostgreSQL database dump complete
--

