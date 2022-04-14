Password: 
--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO angel_bejarano;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO angel_bejarano;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO angel_bejarano;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO angel_bejarano;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO angel_bejarano;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO angel_bejarano;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO angel_bejarano;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO angel_bejarano;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO angel_bejarano;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO angel_bejarano;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO angel_bejarano;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO angel_bejarano;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: books_author; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.books_author (
    id bigint NOT NULL,
    name character varying(128) NOT NULL,
    last_name character varying(128)
);


ALTER TABLE public.books_author OWNER TO angel_bejarano;

--
-- Name: books_author_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.books_author_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_author_id_seq OWNER TO angel_bejarano;

--
-- Name: books_author_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.books_author_id_seq OWNED BY public.books_author.id;


--
-- Name: books_book; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.books_book (
    id bigint NOT NULL,
    name character varying(256) NOT NULL,
    publish_year smallint NOT NULL,
    pages smallint NOT NULL,
    price numeric(6,2) NOT NULL,
    created_at timestamp with time zone,
    updated_at timestamp with time zone
);


ALTER TABLE public.books_book OWNER TO angel_bejarano;

--
-- Name: books_book_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.books_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_book_id_seq OWNER TO angel_bejarano;

--
-- Name: books_book_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books_book.id;


--
-- Name: books_booksauthors; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.books_booksauthors (
    id bigint NOT NULL,
    author_id bigint NOT NULL,
    book_id bigint NOT NULL
);


ALTER TABLE public.books_booksauthors OWNER TO angel_bejarano;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.books_booksauthors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksauthors_id_seq OWNER TO angel_bejarano;

--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.books_booksauthors_id_seq OWNED BY public.books_booksauthors.id;


--
-- Name: books_booksgenres; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.books_booksgenres (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    genre_id bigint NOT NULL
);


ALTER TABLE public.books_booksgenres OWNER TO angel_bejarano;

--
-- Name: books_booksgenres_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.books_booksgenres_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_booksgenres_id_seq OWNER TO angel_bejarano;

--
-- Name: books_booksgenres_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.books_booksgenres_id_seq OWNED BY public.books_booksgenres.id;


--
-- Name: books_bookslanguages; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.books_bookslanguages (
    id bigint NOT NULL,
    book_id bigint NOT NULL,
    language_id bigint NOT NULL
);


ALTER TABLE public.books_bookslanguages OWNER TO angel_bejarano;

--
-- Name: books_bookslanguages_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.books_bookslanguages_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_bookslanguages_id_seq OWNER TO angel_bejarano;

--
-- Name: books_bookslanguages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.books_bookslanguages_id_seq OWNED BY public.books_bookslanguages.id;


--
-- Name: books_genre; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.books_genre (
    id bigint NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE public.books_genre OWNER TO angel_bejarano;

--
-- Name: books_genre_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.books_genre_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_genre_id_seq OWNER TO angel_bejarano;

--
-- Name: books_genre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.books_genre_id_seq OWNED BY public.books_genre.id;


--
-- Name: books_language; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.books_language (
    id bigint NOT NULL,
    name character varying(128) NOT NULL
);


ALTER TABLE public.books_language OWNER TO angel_bejarano;

--
-- Name: books_language_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.books_language_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.books_language_id_seq OWNER TO angel_bejarano;

--
-- Name: books_language_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.books_language_id_seq OWNED BY public.books_language.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO angel_bejarano;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO angel_bejarano;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO angel_bejarano;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO angel_bejarano;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO angel_bejarano;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO angel_bejarano;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO angel_bejarano;

--
-- Name: token_blacklist_blacklistedtoken; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.token_blacklist_blacklistedtoken (
    id bigint NOT NULL,
    blacklisted_at timestamp with time zone NOT NULL,
    token_id bigint NOT NULL
);


ALTER TABLE public.token_blacklist_blacklistedtoken OWNER TO angel_bejarano;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.token_blacklist_blacklistedtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_blacklistedtoken_id_seq OWNER TO angel_bejarano;

--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.token_blacklist_blacklistedtoken_id_seq OWNED BY public.token_blacklist_blacklistedtoken.id;


--
-- Name: token_blacklist_outstandingtoken; Type: TABLE; Schema: public; Owner: angel_bejarano
--

CREATE TABLE public.token_blacklist_outstandingtoken (
    id bigint NOT NULL,
    token text NOT NULL,
    created_at timestamp with time zone,
    expires_at timestamp with time zone NOT NULL,
    user_id integer,
    jti character varying(255) NOT NULL
);


ALTER TABLE public.token_blacklist_outstandingtoken OWNER TO angel_bejarano;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: angel_bejarano
--

CREATE SEQUENCE public.token_blacklist_outstandingtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.token_blacklist_outstandingtoken_id_seq OWNER TO angel_bejarano;

--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: angel_bejarano
--

ALTER SEQUENCE public.token_blacklist_outstandingtoken_id_seq OWNED BY public.token_blacklist_outstandingtoken.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: books_author id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_author ALTER COLUMN id SET DEFAULT nextval('public.books_author_id_seq'::regclass);


--
-- Name: books_book id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_book ALTER COLUMN id SET DEFAULT nextval('public.books_book_id_seq'::regclass);


--
-- Name: books_booksauthors id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_booksauthors ALTER COLUMN id SET DEFAULT nextval('public.books_booksauthors_id_seq'::regclass);


--
-- Name: books_booksgenres id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_booksgenres ALTER COLUMN id SET DEFAULT nextval('public.books_booksgenres_id_seq'::regclass);


--
-- Name: books_bookslanguages id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_bookslanguages ALTER COLUMN id SET DEFAULT nextval('public.books_bookslanguages_id_seq'::regclass);


--
-- Name: books_genre id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_genre ALTER COLUMN id SET DEFAULT nextval('public.books_genre_id_seq'::regclass);


--
-- Name: books_language id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_language ALTER COLUMN id SET DEFAULT nextval('public.books_language_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: token_blacklist_blacklistedtoken id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_blacklistedtoken_id_seq'::regclass);


--
-- Name: token_blacklist_outstandingtoken id; Type: DEFAULT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken ALTER COLUMN id SET DEFAULT nextval('public.token_blacklist_outstandingtoken_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add author	7	add_author
26	Can change author	7	change_author
27	Can delete author	7	delete_author
28	Can view author	7	view_author
29	Can add book	8	add_book
30	Can change book	8	change_book
31	Can delete book	8	delete_book
32	Can view book	8	view_book
33	Can add books authors	9	add_booksauthors
34	Can change books authors	9	change_booksauthors
35	Can delete books authors	9	delete_booksauthors
36	Can view books authors	9	view_booksauthors
37	Can add genre	10	add_genre
38	Can change genre	10	change_genre
39	Can delete genre	10	delete_genre
40	Can view genre	10	view_genre
41	Can add language	11	add_language
42	Can change language	11	change_language
43	Can delete language	11	delete_language
44	Can view language	11	view_language
45	Can add books languages	12	add_bookslanguages
46	Can change books languages	12	change_bookslanguages
47	Can delete books languages	12	delete_bookslanguages
48	Can view books languages	12	view_bookslanguages
49	Can add books genres	13	add_booksgenres
50	Can change books genres	13	change_booksgenres
51	Can delete books genres	13	delete_booksgenres
52	Can view books genres	13	view_booksgenres
53	Can add blacklisted token	14	add_blacklistedtoken
54	Can change blacklisted token	14	change_blacklistedtoken
55	Can delete blacklisted token	14	delete_blacklistedtoken
56	Can view blacklisted token	14	view_blacklistedtoken
57	Can add outstanding token	15	add_outstandingtoken
58	Can change outstanding token	15	change_outstandingtoken
59	Can delete outstanding token	15	delete_outstandingtoken
60	Can view outstanding token	15	view_outstandingtoken
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$320000$lMulRIVtuEnY3GUrqP7WbS$j6gxJaIHXi2dIGnXphqpLI5AuL8hXSxVWU0KIYBzCYY=	\N	f	nuevo3			nuevo3@correo.com	f	t	2022-04-12 20:58:57.903662+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: books_author; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.books_author (id, name, last_name) FROM stdin;
\.


--
-- Data for Name: books_book; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.books_book (id, name, publish_year, pages, price, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: books_booksauthors; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.books_booksauthors (id, author_id, book_id) FROM stdin;
\.


--
-- Data for Name: books_booksgenres; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.books_booksgenres (id, book_id, genre_id) FROM stdin;
\.


--
-- Data for Name: books_bookslanguages; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.books_bookslanguages (id, book_id, language_id) FROM stdin;
\.


--
-- Data for Name: books_genre; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.books_genre (id, name) FROM stdin;
\.


--
-- Data for Name: books_language; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.books_language (id, name) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	books	author
8	books	book
9	books	booksauthors
10	books	genre
11	books	language
12	books	bookslanguages
13	books	booksgenres
14	token_blacklist	blacklistedtoken
15	token_blacklist	outstandingtoken
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2022-04-12 20:38:42.722032+00
2	auth	0001_initial	2022-04-12 20:38:42.789862+00
3	admin	0001_initial	2022-04-12 20:38:42.812685+00
4	admin	0002_logentry_remove_auto_add	2022-04-12 20:38:42.818896+00
5	admin	0003_logentry_add_action_flag_choices	2022-04-12 20:38:42.824866+00
6	contenttypes	0002_remove_content_type_name	2022-04-12 20:38:42.837287+00
7	auth	0002_alter_permission_name_max_length	2022-04-12 20:38:42.843466+00
8	auth	0003_alter_user_email_max_length	2022-04-12 20:38:42.849509+00
9	auth	0004_alter_user_username_opts	2022-04-12 20:38:42.85547+00
10	auth	0005_alter_user_last_login_null	2022-04-12 20:38:42.8619+00
11	auth	0006_require_contenttypes_0002	2022-04-12 20:38:42.86353+00
12	auth	0007_alter_validators_add_error_messages	2022-04-12 20:38:42.869434+00
13	auth	0008_alter_user_username_max_length	2022-04-12 20:38:42.881662+00
14	auth	0009_alter_user_last_name_max_length	2022-04-12 20:38:42.888166+00
15	auth	0010_alter_group_name_max_length	2022-04-12 20:38:42.896223+00
16	auth	0011_update_proxy_permissions	2022-04-12 20:38:42.901969+00
17	auth	0012_alter_user_first_name_max_length	2022-04-12 20:38:42.908634+00
18	books	0001_initial	2022-04-12 20:38:42.936965+00
19	books	0002_genre_language_bookslanguages_booksgenres_and_more	2022-04-12 20:38:43.011804+00
20	sessions	0001_initial	2022-04-12 20:38:43.037296+00
21	token_blacklist	0001_initial	2022-04-12 20:38:43.087308+00
22	token_blacklist	0002_outstandingtoken_jti_hex	2022-04-12 20:38:43.095088+00
23	token_blacklist	0003_auto_20171017_2007	2022-04-12 20:38:43.106383+00
24	token_blacklist	0004_auto_20171017_2013	2022-04-12 20:38:43.122389+00
25	token_blacklist	0005_remove_outstandingtoken_jti	2022-04-12 20:38:43.130599+00
26	token_blacklist	0006_auto_20171017_2113	2022-04-12 20:38:43.137162+00
27	token_blacklist	0007_auto_20171017_2214	2022-04-12 20:38:43.15694+00
28	token_blacklist	0008_migrate_to_bigautofield	2022-04-12 20:38:43.194611+00
29	token_blacklist	0010_fix_migrate_to_bigautofield	2022-04-12 20:38:43.208634+00
30	token_blacklist	0011_linearizes_history	2022-04-12 20:38:43.210556+00
31	token_blacklist	0012_alter_outstandingtoken_user	2022-04-12 20:38:43.217027+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1	2022-04-12 21:33:38.679121+00	4
2	2022-04-12 21:40:05.432776+00	6
3	2022-04-12 21:44:22.376299+00	8
4	2022-04-12 21:47:07.876789+00	10
5	2022-04-12 21:50:21.351336+00	12
6	2022-04-12 21:56:28.359614+00	13
7	2022-04-12 22:00:38.88945+00	14
8	2022-04-13 03:05:09.881152+00	17
9	2022-04-13 03:06:26.179938+00	20
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: angel_bejarano
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NDE5OSwiaWF0IjoxNjQ5Nzk3Nzk5LCJqdGkiOiI1NDc1ZDcwMzNlMTM0Y2YzOTg0NjNhMzlkZDliMGI2YSIsInVzZXJfaWQiOjF9.hi-jqq0nWTkXKg1z1zMVZ5UTRfQq7ZpgORbWrzAr4cw	2022-04-12 21:09:59.549787+00	2022-04-13 21:09:59+00	1	5475d7033e134cf398463a39dd9b0b6a
2	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTIzNCwiaWF0IjoxNjQ5Nzk4ODM0LCJqdGkiOiJiOTBiMjdhNDQ3YjM0NWU1OTVlYjMxNThmODdiMjcyMiIsInVzZXJfaWQiOjF9.kexs-Py4ZjyYV4VvOqfPyetl-bNa1w51hfI_wX-o96Y	2022-04-12 21:27:14.051746+00	2022-04-13 21:27:14+00	1	b90b27a447b345e595eb3158f87b2722
3	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTUxOSwiaWF0IjoxNjQ5Nzk5MTE5LCJqdGkiOiIxNzM2MzllZmM1YWU0YzllYmNkMjY1ODllN2E4YzNmMiIsInVzZXJfaWQiOjF9.RJ9TZzJoi9ThFaqK5WhsdyNE8SOA3nOWzQTHJMJmUb8	2022-04-12 21:31:59.179578+00	2022-04-13 21:31:59+00	1	173639efc5ae4c9ebcd26589e7a8c3f2
4	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTYxNiwiaWF0IjoxNjQ5Nzk5MjE2LCJqdGkiOiIzNGY5ZGExOWZmYjU0YzY3YWVkZjYzNWRkZGZmMTk1YSIsInVzZXJfaWQiOjF9.WRayWTFEMaM4jzu2YSkOrl6x_iXowMrATZUnQwuPgd0	2022-04-12 21:33:36.514408+00	2022-04-13 21:33:36+00	1	34f9da19ffb54c67aedf635dddff195a
5	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NTkxMywiaWF0IjoxNjQ5Nzk5NTEzLCJqdGkiOiIwNjU0ZDY5YzE0M2E0OTQ5YTNhNWFiYjMxNGNkM2I0OSIsInVzZXJfaWQiOjF9.AemzJDIjRdQc-pMZc1Mk6pMWcSYMa0KeRZW1Ri1bt0E	2022-04-12 21:38:33.098071+00	2022-04-13 21:38:33+00	1	0654d69c143a4949a3a5abb314cd3b49
6	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjAwNCwiaWF0IjoxNjQ5Nzk5NjA0LCJqdGkiOiJiOGI0ZGNhNmU2ZTI0ZWNjOGI5NTU5NzBiZjA5OGYzYiIsInVzZXJfaWQiOjF9.7KCLhTb4iPBGGE8Dyxe0YFq65eZWsU6ebcfL_isahRE	2022-04-12 21:40:04.052292+00	2022-04-13 21:40:04+00	1	b8b4dca6e6e24ecc8b955970bf098f3b
7	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjE2NiwiaWF0IjoxNjQ5Nzk5NzY2LCJqdGkiOiJjZjlhOTkyMGVmNjU0NjZiYWQ5MTBlZGJiOGJlMDc4MiIsInVzZXJfaWQiOjF9.VEnsR8D-bw7G_47JKlcr1RJqTp4KskkdVQgEwaDjcdA	2022-04-12 21:42:46.901717+00	2022-04-13 21:42:46+00	1	cf9a9920ef65466bad910edbb8be0782
8	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjI1OCwiaWF0IjoxNjQ5Nzk5ODU4LCJqdGkiOiI2ZTFhY2FkZWMyZDA0YTA2YmI2YmU2ODM1YTk3ZTYwYSIsInVzZXJfaWQiOjF9.ZPP3-rQDOtqju5Bp8rteV_uoVriuttKWgWycr4Bbhuk	2022-04-12 21:44:18.803908+00	2022-04-13 21:44:18+00	1	6e1acadec2d04a06bb6be6835a97e60a
9	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjM4MiwiaWF0IjoxNjQ5Nzk5OTgyLCJqdGkiOiJmNjMxYzQ4Mzc5OGY0NmEzYTMzYTNlZTg2M2UxNDM3ZSIsInVzZXJfaWQiOjF9.mxlWhzKjEUvk4b5VJWp0xli7a_ehJZvUrygYq-gdBAg	2022-04-12 21:46:22.466753+00	2022-04-13 21:46:22+00	1	f631c483798f46a3a33a3ee863e1437e
10	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjQyNywiaWF0IjoxNjQ5ODAwMDI3LCJqdGkiOiI3Mzg4MDg0MjY4ZWM0NzZhYjNlOGU5NTZkNTQ0NjhlNCIsInVzZXJfaWQiOjF9.b3C3Z4iYZiiV9a5kGRjCg2nBsmJeV7iVyep6qMBcmVU	2022-04-12 21:47:07.266172+00	2022-04-13 21:47:07+00	1	7388084268ec476ab3e8e956d54468e4
11	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjU3NCwiaWF0IjoxNjQ5ODAwMTc0LCJqdGkiOiJhNjMyN2VhY2MyMzc0ZjQyOGRmZDJmMmRjYTllZjQ4NSIsInVzZXJfaWQiOjF9.2S41ngjX9yW2_8hPTGklRG6AcUvaQFGlRDSc6Jyre4g	2022-04-12 21:49:34.02345+00	2022-04-13 21:49:34+00	1	a6327eacc2374f428dfd2f2dca9ef485
12	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NjYxOCwiaWF0IjoxNjQ5ODAwMjE4LCJqdGkiOiJkODM5Y2YyNDBkYTk0OGRmYTdjYjFkNTU1OTJmMDdjNSIsInVzZXJfaWQiOjF9.mORw6gX08NmZfk8N6XCaftzlnsJoCl4kvWD98yMMcB8	2022-04-12 21:50:18.575392+00	2022-04-13 21:50:18+00	1	d839cf240da948dfa7cb1d55592f07c5
13	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4Njk4NywiaWF0IjoxNjQ5ODAwNTg3LCJqdGkiOiI1OTBhZWYzNWYzYzU0MWY2YTJmNjUyZjc4ZTQ3ZmFiOCIsInVzZXJfaWQiOjF9.rjx2JgvYXYIlhMWMOMOSMuBdyxkI3P40sOS4ObeFkpc	2022-04-12 21:56:27.146947+00	2022-04-13 21:56:27+00	1	590aef35f3c541f6a2f652f78e47fab8
14	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg4NzIzNywiaWF0IjoxNjQ5ODAwODM3LCJqdGkiOiJlOGM2MWNiOTQzN2Q0ZmRlYjYxNmNmMmU2MGQ1M2U4NSIsInVzZXJfaWQiOjF9.cmOZpx36kCtxZTU_Ik51WHoj32JJ0M3BRkqNfYwteyk	2022-04-12 22:00:37.141759+00	2022-04-13 22:00:37+00	1	e8c61cb9437d4fdeb616cf2e60d53e85
15	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MDcxMSwiaWF0IjoxNjQ5ODA0MzExLCJqdGkiOiJhNjQ4ODI2NGE2Mzc0MzE0YWIxZWM1ZWQ1NjA3ZDRkMCIsInVzZXJfaWQiOjF9.W4wq5vLY2zgBF5KlLfLpdxgHX2UN9H-d8ggvx8l25pU	2022-04-12 22:58:31.045106+00	2022-04-13 22:58:31+00	1	a6488264a6374314ab1ec5ed5607d4d0
16	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTg5MTY5OCwiaWF0IjoxNjQ5ODA1Mjk4LCJqdGkiOiI2Nzc1NjY4NGZmMTM0YzBhYjM4MjUzZmEzMzkwMjAzNCIsInVzZXJfaWQiOjF9.qWpGLElH6voOKrlTeCA-RaLnSk0ZhyTuslSDYjifQZo	2022-04-12 23:14:58.51302+00	2022-04-13 23:14:58+00	1	67756684ff134c0ab38253fa33902034
17	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNTUwNSwiaWF0IjoxNjQ5ODE5MTA1LCJqdGkiOiJkM2UxZjYzMTM3Zjc0ODUxYTE1MzE4NzgzZDQ5ZWNjMiIsInVzZXJfaWQiOjF9.W0ZkC1a-7IC6CPm1e-xpR7oNE-TvQHwxGzuhFG7n1hM	2022-04-13 03:05:05.394256+00	2022-04-14 03:05:05+00	1	d3e1f63137f74851a15318783d49ecc2
18	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNTUzMSwiaWF0IjoxNjQ5ODE5MTMxLCJqdGkiOiJjMTExNGQ0YzQ0YzM0YTI0OTE2NDJlZjEyMDBhZTk1MSIsInVzZXJfaWQiOjF9.dclPaRRsANc_tWjYPTzZaBP6SWQwYhy5kLCksKEP4Nw	2022-04-13 03:05:31.379698+00	2022-04-14 03:05:31+00	1	c1114d4c44c34a2491642ef1200ae951
19	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNTU1MSwiaWF0IjoxNjQ5ODE5MTUxLCJqdGkiOiI1M2IwMjExZWE0ZmE0YWQxYmEwMGNmNGYwMTZmMjc4MyIsInVzZXJfaWQiOjF9.p40BAHAonaFg7KHa1dImjubHZnwa98MCaHjpzdBICDA	2022-04-13 03:05:51.719069+00	2022-04-14 03:05:51+00	1	53b0211ea4fa4ad1ba00cf4f016f2783
20	eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTY0OTkwNTU3MSwiaWF0IjoxNjQ5ODE5MTcxLCJqdGkiOiJiNGIzNzg4YzY3ZmM0ZWE1YjY1NjM1Mjg2ZTI2YTViMiIsInVzZXJfaWQiOjF9.6zNcCH0NAQc6OSoM5_p5qp1YqbwO9jGBX7Cg-ktlTmo	2022-04-13 03:06:11.77214+00	2022-04-14 03:06:11+00	1	b4b3788c67fc4ea5b65635286e26a5b2
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 60, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: books_author_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.books_author_id_seq', 1, false);


--
-- Name: books_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);


--
-- Name: books_booksauthors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.books_booksauthors_id_seq', 1, false);


--
-- Name: books_booksgenres_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.books_booksgenres_id_seq', 1, false);


--
-- Name: books_bookslanguages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.books_bookslanguages_id_seq', 1, false);


--
-- Name: books_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.books_genre_id_seq', 1, false);


--
-- Name: books_language_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.books_language_id_seq', 1, false);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 15, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 31, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 9, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: angel_bejarano
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 20, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: books_author books_author_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_author
    ADD CONSTRAINT books_author_pkey PRIMARY KEY (id);


--
-- Name: books_book books_book_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_book
    ADD CONSTRAINT books_book_pkey PRIMARY KEY (id);


--
-- Name: books_booksauthors books_booksauthors_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_pkey PRIMARY KEY (id);


--
-- Name: books_booksgenres books_booksgenres_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_booksgenres
    ADD CONSTRAINT books_booksgenres_pkey PRIMARY KEY (id);


--
-- Name: books_bookslanguages books_bookslanguages_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_bookslanguages
    ADD CONSTRAINT books_bookslanguages_pkey PRIMARY KEY (id);


--
-- Name: books_genre books_genre_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_genre
    ADD CONSTRAINT books_genre_pkey PRIMARY KEY (id);


--
-- Name: books_language books_language_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_language
    ADD CONSTRAINT books_language_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: books_booksauthors_author_id_799022ff; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX books_booksauthors_author_id_799022ff ON public.books_booksauthors USING btree (author_id);


--
-- Name: books_booksauthors_book_id_f6bd8a7e; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX books_booksauthors_book_id_f6bd8a7e ON public.books_booksauthors USING btree (book_id);


--
-- Name: books_booksgenres_book_id_b33184f2; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX books_booksgenres_book_id_b33184f2 ON public.books_booksgenres USING btree (book_id);


--
-- Name: books_booksgenres_genre_id_607041db; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX books_booksgenres_genre_id_607041db ON public.books_booksgenres USING btree (genre_id);


--
-- Name: books_bookslanguages_book_id_0fc33559; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX books_bookslanguages_book_id_0fc33559 ON public.books_bookslanguages USING btree (book_id);


--
-- Name: books_bookslanguages_language_id_8b577bc4; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX books_bookslanguages_language_id_8b577bc4 ON public.books_bookslanguages USING btree (language_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: angel_bejarano
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_author_id_799022ff_fk_books_author_id; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_author_id_799022ff_fk_books_author_id FOREIGN KEY (author_id) REFERENCES public.books_author(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksauthors books_booksauthors_book_id_f6bd8a7e_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_booksauthors
    ADD CONSTRAINT books_booksauthors_book_id_f6bd8a7e_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksgenres books_booksgenres_book_id_b33184f2_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_booksgenres
    ADD CONSTRAINT books_booksgenres_book_id_b33184f2_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_booksgenres books_booksgenres_genre_id_607041db_fk_books_genre_id; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_booksgenres
    ADD CONSTRAINT books_booksgenres_genre_id_607041db_fk_books_genre_id FOREIGN KEY (genre_id) REFERENCES public.books_genre(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookslanguages books_bookslanguages_book_id_0fc33559_fk_books_book_id; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_bookslanguages
    ADD CONSTRAINT books_bookslanguages_book_id_0fc33559_fk_books_book_id FOREIGN KEY (book_id) REFERENCES public.books_book(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: books_bookslanguages books_bookslanguages_language_id_8b577bc4_fk_books_language_id; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.books_bookslanguages
    ADD CONSTRAINT books_bookslanguages_language_id_8b577bc4_fk_books_language_id FOREIGN KEY (language_id) REFERENCES public.books_language(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_auth_user; Type: FK CONSTRAINT; Schema: public; Owner: angel_bejarano
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_auth_user FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

