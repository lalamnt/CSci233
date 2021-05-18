--
-- PostgreSQL database dump
--

-- Dumped from database version 13.2
-- Dumped by pg_dump version 13.2

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id integer NOT NULL,
    username character varying(255),
    name character varying(255),
    email character varying(255)
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_customer_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customers_customer_id_seq OWNER TO postgres;

--
-- Name: customers_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_customer_id_seq OWNED BY public.customers.customer_id;


--
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    employee_id integer NOT NULL,
    username character varying(255),
    employee_name character varying(255),
    email character varying(255),
    yearly_salary real,
    employee_position character varying(255)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.employees_employee_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.employees_employee_id_seq OWNER TO postgres;

--
-- Name: employees_employee_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.employees_employee_id_seq OWNED BY public.employees.employee_id;


--
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    item_id integer NOT NULL,
    item_name character varying(255) NOT NULL,
    brand character varying(255) NOT NULL,
    price numeric(10,2) NOT NULL,
    cost numeric(10,2)
);


ALTER TABLE public.products OWNER TO postgres;

--
-- Name: products_item_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.products_item_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.products_item_id_seq OWNER TO postgres;

--
-- Name: products_item_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.products_item_id_seq OWNED BY public.products.item_id;


--
-- Name: purchases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchases (
    order_id integer NOT NULL,
    transaction_type character varying(255),
    item_id integer,
    payment_method character varying(255),
    quantity integer,
    customer_id integer
);


ALTER TABLE public.purchases OWNER TO postgres;

--
-- Name: purchases_order_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.purchases_order_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.purchases_order_id_seq OWNER TO postgres;

--
-- Name: purchases_order_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.purchases_order_id_seq OWNED BY public.purchases.order_id;


--
-- Name: customers customer_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN customer_id SET DEFAULT nextval('public.customers_customer_id_seq'::regclass);


--
-- Name: employees employee_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees ALTER COLUMN employee_id SET DEFAULT nextval('public.employees_employee_id_seq'::regclass);


--
-- Name: products item_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products ALTER COLUMN item_id SET DEFAULT nextval('public.products_item_id_seq'::regclass);


--
-- Name: purchases order_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases ALTER COLUMN order_id SET DEFAULT nextval('public.purchases_order_id_seq'::regclass);


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (customer_id, username, name, email) FROM stdin;
1	ernamun99	Erna Munson	munsonerna@gmail.com
2	cohentamir	Tamir Cohen	cohen78@yahoo.com
3	2chariton	Chariton Madigan	charitonrulez@gmail.com
4	itsadab99	Sadab Asselman	99sadaba@outlook.com
5	linafitz	Adelina Fitzroy	fun_fitzroy@aol.com
6	calhound0r	Todor Calhoun	todor.calhoun@yahoo.com
7	22anisaaaa	Anisa Fournier	anisaaaa@gmail.com
8	harl8nd	Ferninand Harland	sourpineapple8@hotmail.com
9	luckistler	Roxana Kistler	foxyroxyz@aol.com
10	napolliell0	Niles Napolliello	napolliello.n@gmail.com
11	paviaros	Rohan Pavia	hanpaviaro@yahoo.com
12	thatslav	Sudhir Pertovic	petrovic_slav@yahoo.com
13	greenaee	Aronas Green	greenaron@outlook.com
14	maxrye93	Max Rye	max_rye93@gmail.com
15	itsnottakuma	Takuma Song	itsnottakuma@aol.com
16	napoletani90	Terah Napoletani	neapoletani90@gmail.com
17	fevzi_belle	Fevzi Labelle	winter.fevzi@yahoo.com
18	devit0s	Dragos Devito	brotherdevito0@hhotmail.com
19	aseemich9	Aseem Habich	habich.aseem@outlook.com
20	itscaitlene	Caitlene Stacks	stacks_cait@yahoo.com
21	leericas	Rica Lee	ricardolee@gmail.com
22	miazga48	Melina Miazga	miazgaline48@outlook.com
23	jengojenga	Jengo Garrido	jengo.jenga@aol.com
24	syro.robert	Robert Syro	robertosyro@outlook.com
25	kamberries	Kamila Lambert	kamberries@gmail.com
26	matos00	Ilhan Matos	purplematos00@hotmail.com
27	wenxyang	Wendy Yang	snorlaxyang@gmail.com
28	tiptoncey	Stacey Tipton	stace.tipton@gmail.com
29	ronaldmcdonald	Ronald Mills	mil_ronnie@outlook.com
30	aishasnells	Aisha Snell	aishasnells@yahoo.com
\.


--
-- Data for Name: employees; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.employees (employee_id, username, employee_name, email, yearly_salary, employee_position) FROM stdin;
1	dmil4	Dave Milford	MilfordDave@aol.com	45000	Manager
2	matosa	Matias Losa	MatLosa1@aol.com	25000	Cashier
3	andee	Andrew Lee	andrew_lee@aol.com	20000	Stocker
4	esterossa	Ester Addison	ea98@aol.com	30000	Janitor
5	kslider	Kristi Snyder	KristiS@aol.com	35000	Customer Service
\.


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.products (item_id, item_name, brand, price, cost) FROM stdin;
1	screaming hand \nregular s/s santa cruz \nt-shirt	Santa Cruz	14.99	7.99
2	Other dot P/O \nHooded pullover \nhooded Santa cruz	Santa Cruz	31.99	20.99
3	8.125in x 31.7in Strip\n Stripe Dot Team \nSanta Cruz \nSkateboard Deck	Santa Cruz	60.99	35.99
4	Simplified Screaming\nHand Mens \nSanta Cruz Sweatpants 	Santa Cruz	49.99	31.99
5	Section Complete \nSkateboard	Element	95.99	50.99
6	Fitch T-Shirt	Element	22.99	7.99
7	Bad Brains Badge\n Snapback Hat	Element	15.99	10.00
8	CONS Digi Camo One Star Pro\nsneakers	Converse	35.99	70.99
9	CONS Louie Lopez Pro	Converse	45.99	90.00
10	Nike SB Zoom Blazer \nMid Premium	Nike	90.00	55.00
11	Short-Sleeve T-Shirt	Nike	20.00	35.00
12	Nike NBA \nSwingman Shorts	Nike	20.00	35.00
13	Chicago Bulls City Edition\nshort	Nike	45.00	80.00
14	Reebok Club C 85 Shoes\n(white green)	Reebok	85.00	50.00
15	Reebok CL Travel Cap\nnavy	Reebok	12.00	30.00
16	Reebok Club C 85 Shoes \n(white royal gum)	Reebok	45.00	90.00
17	RICKY BIG T SHORT	Reebok	55.00	90.00
18	BRACKET HAT\nred	TRUE RELIGION	20.00	45.00
19	BOLD YOUTH COMPLETE 7.25\nSKATEBOARD	ZERO	60.00	100.00
20	THOMAS CROSS COMPLETE\nSKATEBOARD	ZERO	60.00	110.00
\.


--
-- Data for Name: purchases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.purchases (order_id, transaction_type, item_id, payment_method, quantity, customer_id) FROM stdin;
1	purchase	12	debit	2	2
2	purchase	1	credit	3	5
3	return	3	credit	1	6
4	purchase	2	debit	1	11
5	purchase	6	debit	3	12
6	purchase	8	debit	4	9
7	return	12	credit	1	19
8	return	1	debit	2	20
9	purchase	3	debit	1	29
10	purchase	11	credit	2	1
11	return	10	credit	2	4
12	purchase	6	credit	3	6
13	purchase	16	credit	3	9
14	return	4	debit	1	10
15	purchase	4	credit	2	12
16	purchase	14	credit	1	30
17	purchase	8	credit	1	21
18	purchase	9	debit	2	30
19	purchase	6	credit	1	20
20	purchase	5	credit	3	19
21	return	3	credit	3	4
22	purchase	1	credit	2	5
23	purchase	9	credit	2	8
24	purchase	11	debit	1	16
25	return	13	credit	1	18
26	purchase	5	credit	1	27
27	return	7	credit	2	26
28	purchase	14	debit	4	19
29	purchase	10	debit	1	14
30	purchase	2	debit	2	13
\.


--
-- Name: customers_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_customer_id_seq', 1, false);


--
-- Name: employees_employee_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.employees_employee_id_seq', 1, false);


--
-- Name: products_item_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.products_item_id_seq', 1, false);


--
-- Name: purchases_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchases_order_id_seq', 1, false);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (customer_id);


--
-- Name: employees employees_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (employee_id);


--
-- Name: products products_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (item_id);


--
-- Name: purchases purchases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_pkey PRIMARY KEY (order_id);


--
-- Name: purchases purchases_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);


--
-- Name: purchases purchases_item_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_item_id_fkey FOREIGN KEY (item_id) REFERENCES public.products(item_id);


--
-- PostgreSQL database dump complete
--

