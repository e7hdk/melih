--
-- PostgreSQL database cluster dump
--

SET default_transaction_read_only = off;

SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;

--
-- Drop databases (except postgres and template1)
--

DROP DATABASE group5db_451;




--
-- Drop roles
--

DROP ROLE postgres;


--
-- Roles
--

CREATE ROLE postgres;
ALTER ROLE postgres WITH SUPERUSER INHERIT CREATEROLE CREATEDB LOGIN REPLICATION BYPASSRLS PASSWORD 'md5796622254c77a332a7f443701bd5a6a8';






--
-- PostgreSQL database dump
--

-- Dumped from database version 11.14 (Debian 11.14-1.pgdg90+1)
-- Dumped by pg_dump version 11.14 (Debian 11.14-1.pgdg90+1)

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

UPDATE pg_catalog.pg_database SET datistemplate = false WHERE datname = 'template1';
DROP DATABASE template1;
--
-- Name: template1; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE template1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE template1 OWNER TO postgres;

\connect template1

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
-- Name: DATABASE template1; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE template1 IS 'default template for new databases';


--
-- Name: template1; Type: DATABASE PROPERTIES; Schema: -; Owner: postgres
--

ALTER DATABASE template1 IS_TEMPLATE = true;


\connect template1

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
-- Name: DATABASE template1; Type: ACL; Schema: -; Owner: postgres
--

REVOKE CONNECT,TEMPORARY ON DATABASE template1 FROM PUBLIC;
GRANT CONNECT ON DATABASE template1 TO PUBLIC;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.14 (Debian 11.14-1.pgdg90+1)
-- Dumped by pg_dump version 11.14 (Debian 11.14-1.pgdg90+1)

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
-- Name: group5db_451; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE group5db_451 WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE group5db_451 OWNER TO postgres;

\connect group5db_451

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

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: post_application; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_application (
    id bigint NOT NULL,
    status character varying(10) NOT NULL,
    applicant_type character varying(20) NOT NULL,
    event_post_id bigint NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.post_application OWNER TO postgres;

--
-- Name: post_application_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_application_id_seq OWNER TO postgres;

--
-- Name: post_application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_application_id_seq OWNED BY public.post_application.id;


--
-- Name: post_badge; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_badge (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    description text,
    "wikiId" character varying(20)
);


ALTER TABLE public.post_badge OWNER TO postgres;

--
-- Name: post_badge_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_badge_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_badge_id_seq OWNER TO postgres;

--
-- Name: post_badge_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_badge_id_seq OWNED BY public.post_badge.id;


--
-- Name: post_badgeownedbyuser; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_badgeownedbyuser (
    id bigint NOT NULL,
    date_time timestamp with time zone NOT NULL,
    "isGivenBySystem" boolean NOT NULL,
    badge_id bigint NOT NULL,
    owner_id integer NOT NULL
);


ALTER TABLE public.post_badgeownedbyuser OWNER TO postgres;

--
-- Name: post_badgeownedbyuser_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_badgeownedbyuser_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_badgeownedbyuser_id_seq OWNER TO postgres;

--
-- Name: post_badgeownedbyuser_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_badgeownedbyuser_id_seq OWNED BY public.post_badgeownedbyuser.id;


--
-- Name: post_equipmentcomment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_equipmentcomment (
    id bigint NOT NULL,
    content text NOT NULL,
    created_date timestamp with time zone NOT NULL,
    equipment_post_id bigint,
    owner_id integer NOT NULL
);


ALTER TABLE public.post_equipmentcomment OWNER TO postgres;

--
-- Name: post_equipmentcomment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_equipmentcomment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_equipmentcomment_id_seq OWNER TO postgres;

--
-- Name: post_equipmentcomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_equipmentcomment_id_seq OWNED BY public.post_equipmentcomment.id;


--
-- Name: post_equipmentcommentactivitystream; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_equipmentcommentactivitystream (
    id bigint NOT NULL,
    context character varying(200) NOT NULL,
    summary character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    actor_id integer NOT NULL,
    object_id bigint NOT NULL
);


ALTER TABLE public.post_equipmentcommentactivitystream OWNER TO postgres;

--
-- Name: post_equipmentcommentactivitystream_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_equipmentcommentactivitystream_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_equipmentcommentactivitystream_id_seq OWNER TO postgres;

--
-- Name: post_equipmentcommentactivitystream_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_equipmentcommentactivitystream_id_seq OWNED BY public.post_equipmentcommentactivitystream.id;


--
-- Name: post_equipmentpost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_equipmentpost (
    id bigint NOT NULL,
    post_name character varying(30) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    description text NOT NULL,
    longitude double precision,
    latitude double precision,
    link character varying(200),
    active boolean NOT NULL,
    "pathToEquipmentPostImage" character varying(200),
    owner_id integer NOT NULL,
    sport_category_id bigint NOT NULL
);


ALTER TABLE public.post_equipmentpost OWNER TO postgres;

--
-- Name: post_equipmentpost_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_equipmentpost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_equipmentpost_id_seq OWNER TO postgres;

--
-- Name: post_equipmentpost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_equipmentpost_id_seq OWNED BY public.post_equipmentpost.id;


--
-- Name: post_equipmentpostactivtystream; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_equipmentpostactivtystream (
    id bigint NOT NULL,
    context character varying(200) NOT NULL,
    summary character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    actor_id integer NOT NULL,
    object_id bigint NOT NULL
);


ALTER TABLE public.post_equipmentpostactivtystream OWNER TO postgres;

--
-- Name: post_equipmentpostactivtystream_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_equipmentpostactivtystream_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_equipmentpostactivtystream_id_seq OWNER TO postgres;

--
-- Name: post_equipmentpostactivtystream_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_equipmentpostactivtystream_id_seq OWNED BY public.post_equipmentpostactivtystream.id;


--
-- Name: post_eventcomment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_eventcomment (
    id bigint NOT NULL,
    content text NOT NULL,
    created_date timestamp with time zone NOT NULL,
    event_post_id bigint,
    owner_id integer NOT NULL
);


ALTER TABLE public.post_eventcomment OWNER TO postgres;

--
-- Name: post_eventcomment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_eventcomment_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_eventcomment_id_seq OWNER TO postgres;

--
-- Name: post_eventcomment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_eventcomment_id_seq OWNED BY public.post_eventcomment.id;


--
-- Name: post_eventcommentactivitystream; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_eventcommentactivitystream (
    id bigint NOT NULL,
    context character varying(200) NOT NULL,
    summary character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    actor_id integer NOT NULL,
    object_id bigint NOT NULL
);


ALTER TABLE public.post_eventcommentactivitystream OWNER TO postgres;

--
-- Name: post_eventcommentactivitystream_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_eventcommentactivitystream_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_eventcommentactivitystream_id_seq OWNER TO postgres;

--
-- Name: post_eventcommentactivitystream_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_eventcommentactivitystream_id_seq OWNED BY public.post_eventcommentactivitystream.id;


--
-- Name: post_eventpost; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_eventpost (
    id bigint NOT NULL,
    post_name character varying(30) NOT NULL,
    created_date timestamp with time zone NOT NULL,
    description text NOT NULL,
    longitude double precision,
    latitude double precision,
    date_time timestamp with time zone NOT NULL,
    participant_limit integer NOT NULL,
    spectator_limit integer NOT NULL,
    rule text,
    equipment_requirement text,
    status character varying(10) NOT NULL,
    capacity character varying(25) NOT NULL,
    location_requirement character varying(30),
    contact_info character varying(50),
    "pathToEventImage" character varying(200),
    current_player integer NOT NULL,
    current_spectator integer NOT NULL,
    owner_id integer NOT NULL,
    skill_requirement_id bigint NOT NULL,
    sport_category_id bigint NOT NULL
);


ALTER TABLE public.post_eventpost OWNER TO postgres;

--
-- Name: post_eventpost_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_eventpost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_eventpost_id_seq OWNER TO postgres;

--
-- Name: post_eventpost_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_eventpost_id_seq OWNED BY public.post_eventpost.id;


--
-- Name: post_eventpostactivitystream; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_eventpostactivitystream (
    id bigint NOT NULL,
    context character varying(200) NOT NULL,
    summary character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    actor_id integer NOT NULL,
    object_id bigint NOT NULL
);


ALTER TABLE public.post_eventpostactivitystream OWNER TO postgres;

--
-- Name: post_eventpostactivitystream_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_eventpostactivitystream_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_eventpostactivitystream_id_seq OWNER TO postgres;

--
-- Name: post_eventpostactivitystream_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_eventpostactivitystream_id_seq OWNED BY public.post_eventpostactivitystream.id;


--
-- Name: post_skilllevel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_skilllevel (
    id bigint NOT NULL,
    level_name character varying(10) NOT NULL
);


ALTER TABLE public.post_skilllevel OWNER TO postgres;

--
-- Name: post_skilllevel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_skilllevel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_skilllevel_id_seq OWNER TO postgres;

--
-- Name: post_skilllevel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_skilllevel_id_seq OWNED BY public.post_skilllevel.id;


--
-- Name: post_sport; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.post_sport (
    id bigint NOT NULL,
    sport_name character varying(70) NOT NULL,
    is_custom boolean NOT NULL
);


ALTER TABLE public.post_sport OWNER TO postgres;

--
-- Name: post_sport_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.post_sport_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_sport_id_seq OWNER TO postgres;

--
-- Name: post_sport_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.post_sport_id_seq OWNED BY public.post_sport.id;


--
-- Name: register_follow; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.register_follow (
    id bigint NOT NULL,
    follower_id integer NOT NULL,
    following_id integer NOT NULL
);


ALTER TABLE public.register_follow OWNER TO postgres;

--
-- Name: register_follow_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.register_follow_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.register_follow_id_seq OWNER TO postgres;

--
-- Name: register_follow_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.register_follow_id_seq OWNED BY public.register_follow.id;


--
-- Name: register_interestlevel; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.register_interestlevel (
    id bigint NOT NULL,
    owner_of_interest_id integer NOT NULL,
    skill_level_id bigint,
    sport_name_id bigint NOT NULL
);


ALTER TABLE public.register_interestlevel OWNER TO postgres;

--
-- Name: register_interestlevel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.register_interestlevel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.register_interestlevel_id_seq OWNER TO postgres;

--
-- Name: register_interestlevel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.register_interestlevel_id_seq OWNED BY public.register_interestlevel.id;


--
-- Name: register_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.register_user (
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    "Id" integer NOT NULL,
    name character varying(50),
    surname character varying(50),
    username character varying(50) NOT NULL,
    password character varying(255) NOT NULL,
    mail character varying(254) NOT NULL,
    is_email_verified boolean NOT NULL,
    location character varying(50)
);


ALTER TABLE public.register_user OWNER TO postgres;

--
-- Name: register_user_Id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."register_user_Id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."register_user_Id_seq" OWNER TO postgres;

--
-- Name: register_user_Id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."register_user_Id_seq" OWNED BY public.register_user."Id";


--
-- Name: register_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.register_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.register_user_groups OWNER TO postgres;

--
-- Name: register_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.register_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.register_user_groups_id_seq OWNER TO postgres;

--
-- Name: register_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.register_user_groups_id_seq OWNED BY public.register_user_groups.id;


--
-- Name: register_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.register_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.register_user_user_permissions OWNER TO postgres;

--
-- Name: register_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.register_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.register_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: register_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.register_user_user_permissions_id_seq OWNED BY public.register_user_user_permissions.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: post_application id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_application ALTER COLUMN id SET DEFAULT nextval('public.post_application_id_seq'::regclass);


--
-- Name: post_badge id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_badge ALTER COLUMN id SET DEFAULT nextval('public.post_badge_id_seq'::regclass);


--
-- Name: post_badgeownedbyuser id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_badgeownedbyuser ALTER COLUMN id SET DEFAULT nextval('public.post_badgeownedbyuser_id_seq'::regclass);


--
-- Name: post_equipmentcomment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentcomment ALTER COLUMN id SET DEFAULT nextval('public.post_equipmentcomment_id_seq'::regclass);


--
-- Name: post_equipmentcommentactivitystream id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentcommentactivitystream ALTER COLUMN id SET DEFAULT nextval('public.post_equipmentcommentactivitystream_id_seq'::regclass);


--
-- Name: post_equipmentpost id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentpost ALTER COLUMN id SET DEFAULT nextval('public.post_equipmentpost_id_seq'::regclass);


--
-- Name: post_equipmentpostactivtystream id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentpostactivtystream ALTER COLUMN id SET DEFAULT nextval('public.post_equipmentpostactivtystream_id_seq'::regclass);


--
-- Name: post_eventcomment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventcomment ALTER COLUMN id SET DEFAULT nextval('public.post_eventcomment_id_seq'::regclass);


--
-- Name: post_eventcommentactivitystream id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventcommentactivitystream ALTER COLUMN id SET DEFAULT nextval('public.post_eventcommentactivitystream_id_seq'::regclass);


--
-- Name: post_eventpost id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventpost ALTER COLUMN id SET DEFAULT nextval('public.post_eventpost_id_seq'::regclass);


--
-- Name: post_eventpostactivitystream id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventpostactivitystream ALTER COLUMN id SET DEFAULT nextval('public.post_eventpostactivitystream_id_seq'::regclass);


--
-- Name: post_skilllevel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_skilllevel ALTER COLUMN id SET DEFAULT nextval('public.post_skilllevel_id_seq'::regclass);


--
-- Name: post_sport id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_sport ALTER COLUMN id SET DEFAULT nextval('public.post_sport_id_seq'::regclass);


--
-- Name: register_follow id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_follow ALTER COLUMN id SET DEFAULT nextval('public.register_follow_id_seq'::regclass);


--
-- Name: register_interestlevel id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_interestlevel ALTER COLUMN id SET DEFAULT nextval('public.register_interestlevel_id_seq'::regclass);


--
-- Name: register_user Id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user ALTER COLUMN "Id" SET DEFAULT nextval('public."register_user_Id_seq"'::regclass);


--
-- Name: register_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user_groups ALTER COLUMN id SET DEFAULT nextval('public.register_user_groups_id_seq'::regclass);


--
-- Name: register_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.register_user_user_permissions_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
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
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add session	5	add_session
18	Can change session	5	change_session
19	Can delete session	5	delete_session
20	Can view session	5	view_session
21	Can add application	6	add_application
22	Can change application	6	change_application
23	Can delete application	6	delete_application
24	Can view application	6	view_application
25	Can add badge	7	add_badge
26	Can change badge	7	change_badge
27	Can delete badge	7	delete_badge
28	Can view badge	7	view_badge
29	Can add badge owned by user	8	add_badgeownedbyuser
30	Can change badge owned by user	8	change_badgeownedbyuser
31	Can delete badge owned by user	8	delete_badgeownedbyuser
32	Can view badge owned by user	8	view_badgeownedbyuser
33	Can add equipment comment	9	add_equipmentcomment
34	Can change equipment comment	9	change_equipmentcomment
35	Can delete equipment comment	9	delete_equipmentcomment
36	Can view equipment comment	9	view_equipmentcomment
37	Can add equipment comment activity stream	10	add_equipmentcommentactivitystream
38	Can change equipment comment activity stream	10	change_equipmentcommentactivitystream
39	Can delete equipment comment activity stream	10	delete_equipmentcommentactivitystream
40	Can view equipment comment activity stream	10	view_equipmentcommentactivitystream
41	Can add equipment post	11	add_equipmentpost
42	Can change equipment post	11	change_equipmentpost
43	Can delete equipment post	11	delete_equipmentpost
44	Can view equipment post	11	view_equipmentpost
45	Can add equipment post activty stream	12	add_equipmentpostactivtystream
46	Can change equipment post activty stream	12	change_equipmentpostactivtystream
47	Can delete equipment post activty stream	12	delete_equipmentpostactivtystream
48	Can view equipment post activty stream	12	view_equipmentpostactivtystream
49	Can add event comment	13	add_eventcomment
50	Can change event comment	13	change_eventcomment
51	Can delete event comment	13	delete_eventcomment
52	Can view event comment	13	view_eventcomment
53	Can add event comment activity stream	14	add_eventcommentactivitystream
54	Can change event comment activity stream	14	change_eventcommentactivitystream
55	Can delete event comment activity stream	14	delete_eventcommentactivitystream
56	Can view event comment activity stream	14	view_eventcommentactivitystream
57	Can add event post	15	add_eventpost
58	Can change event post	15	change_eventpost
59	Can delete event post	15	delete_eventpost
60	Can view event post	15	view_eventpost
61	Can add event post activity stream	16	add_eventpostactivitystream
62	Can change event post activity stream	16	change_eventpostactivitystream
63	Can delete event post activity stream	16	delete_eventpostactivitystream
64	Can view event post activity stream	16	view_eventpostactivitystream
65	Can add skill level	17	add_skilllevel
66	Can change skill level	17	change_skilllevel
67	Can delete skill level	17	delete_skilllevel
68	Can view skill level	17	view_skilllevel
69	Can add sport	18	add_sport
70	Can change sport	18	change_sport
71	Can delete sport	18	delete_sport
72	Can view sport	18	view_sport
73	Can add user	19	add_user
74	Can change user	19	change_user
75	Can delete user	19	delete_user
76	Can view user	19	view_user
77	Can add interest level	20	add_interestlevel
78	Can change interest level	20	change_interestlevel
79	Can delete interest level	20	delete_interestlevel
80	Can view interest level	20	view_interestlevel
81	Can add follow	21	add_follow
82	Can change follow	21	change_follow
83	Can delete follow	21	delete_follow
84	Can view follow	21	view_follow
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	contenttypes	contenttype
5	sessions	session
6	post	application
7	post	badge
8	post	badgeownedbyuser
9	post	equipmentcomment
10	post	equipmentcommentactivitystream
11	post	equipmentpost
12	post	equipmentpostactivtystream
13	post	eventcomment
14	post	eventcommentactivitystream
15	post	eventpost
16	post	eventpostactivitystream
17	post	skilllevel
18	post	sport
19	register	user
20	register	interestlevel
21	register	follow
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	post	0001_initial	2022-01-01 17:15:14.312621+00
2	contenttypes	0001_initial	2022-01-01 17:15:14.328467+00
3	contenttypes	0002_remove_content_type_name	2022-01-01 17:15:14.345378+00
4	auth	0001_initial	2022-01-01 17:15:14.415+00
5	auth	0002_alter_permission_name_max_length	2022-01-01 17:15:14.4277+00
6	auth	0003_alter_user_email_max_length	2022-01-01 17:15:14.451644+00
7	auth	0004_alter_user_username_opts	2022-01-01 17:15:14.458899+00
8	auth	0005_alter_user_last_login_null	2022-01-01 17:15:14.466076+00
9	auth	0006_require_contenttypes_0002	2022-01-01 17:15:14.468738+00
10	auth	0007_alter_validators_add_error_messages	2022-01-01 17:15:14.475975+00
11	auth	0008_alter_user_username_max_length	2022-01-01 17:15:14.4832+00
12	auth	0009_alter_user_last_name_max_length	2022-01-01 17:15:14.490446+00
13	auth	0010_alter_group_name_max_length	2022-01-01 17:15:14.510046+00
14	auth	0011_update_proxy_permissions	2022-01-01 17:15:14.526572+00
15	auth	0012_alter_user_first_name_max_length	2022-01-01 17:15:14.533748+00
16	register	0001_initial	2022-01-01 17:15:14.701222+00
17	admin	0001_initial	2022-01-01 17:15:14.731278+00
18	admin	0002_logentry_remove_auto_add	2022-01-01 17:15:14.745718+00
19	admin	0003_logentry_add_action_flag_choices	2022-01-01 17:15:14.757446+00
20	post	0002_initial	2022-01-01 17:15:15.204864+00
21	register	0002_alter_interestlevel_skill_level	2022-01-01 17:15:15.228494+00
22	sessions	0001_initial	2022-01-01 17:15:15.245228+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
x8m6c325iilup1w74sc1c5114xjdhuo5	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n3igi:Kpr-eEIzp4_RycnfRXCx19XGCYUjZu631hJtYOJpjBY	2022-01-15 18:01:04.582985+00
q9i9d4jn5vzm2gje585gwarniu2eor77	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3jmy:MXB5tlbdEleIaRIkLxgvwbB0uAmo470JVvCXS7iirCk	2022-01-15 19:11:36.076169+00
0itkvis5r8bp24zkxjx3m3y89cuhrktx	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3jqu:wDUxfMBrBIL1UuKnuBSx_35rOWwKm4Uc66olpuNjCZQ	2022-01-15 19:15:40.727297+00
vqg78045zx7q6ir2rq3z67ux0gfojjdq	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3jrX:c66Qb0f6NG2gCTTwpIdcuY0_opg9GvfgoFM8NibY9FU	2022-01-15 19:16:19.716137+00
i0pmyclgh052wq4xtl58ozmci5rexitl	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3jse:fKVGgmrTPtQNsEpztqeZBiKGf8cB1ZLa6ZszubdpBbY	2022-01-15 19:17:28.063988+00
g2zrkyr73v1gozhbvpgp5ncgfwnfp9gv	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3kEz:L7Tb5AGDjKsHdHnTunwlUkTJIwZEeM9dyf2jkoq1c9w	2022-01-15 19:40:33.477529+00
5yb9osq0q25nu2a74p1f29mbpqp0yb34	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3kH1:4e6vGk-4n2Gdshp5mLzaAmZC4hR6EZhvHRwvLXkUddk	2022-01-15 19:42:39.642777+00
xzej8lz3d5twacsfkkg829r79zjew7a5	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3kHG:HV1YpxOjTApOuPU2IN20B6CLRKpzFTG5wrzRfNbn8f8	2022-01-15 19:42:54.865269+00
ltmjfnv0b6imx9z38uokodqle7reni0s	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3kP5:c4tH_mnA1oq0MgsnbYpMVj2ogtlNnh5u7bZc_Ofv5X0	2022-01-15 19:50:59.823609+00
zn9e1a3m46w2fwb1x630mn5o3wujw5zu	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3kZi:u0T1WlTMZYbQTeUgIps-0s7Cch77v_ZbGNUgx65za3A	2022-01-15 20:01:58.067259+00
mk3kopxrtp0rcv2b14zcuzwl077rws05	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n3kbC:8-0RFQ8Pkm9UAqJAAjX0Jev6fvv1wPDrCadYvFZLgoU	2022-01-15 20:03:30.238528+00
h7jv8c7slesw85gyaxkzu11ecq3z60u9	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3kbp:BAc65FTh9DEgZDhx5CXNAv_unYveJXvWqbqZ0utnmE8	2022-01-15 20:04:09.798422+00
ox9a6ymd3buwmicsyz7265v7rvt0nl0l	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3kdb:DkDyiE--FINK1lsEV06aguA5oBLfq9CO3ZyIgFj693A	2022-01-15 20:05:59.549822+00
cgc9ple9nabzyrpfajzvztl3b57m1ijx	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3ked:a5X6XsY5d02h4gElHZ4r8hL_F1vyOGK_xDIhwVJ-YKs	2022-01-15 20:07:03.465419+00
rmhjob5uhekgfw30tzex0yhp2np8ug9w	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3kf4:MlLSzdsrAPxrZXerg2Dz7Pjcxep96IPpJSns6V2hWBk	2022-01-15 20:07:30.090004+00
ovefmlvnjlj8x9sxji26td2qxhy4caqt	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3kgC:Qjvj7OmlnZ_nwUytBeihi5s8wn3OrwBZaiSd066P-6c	2022-01-15 20:08:40.786983+00
p0tm9fckdsn5zyu4knyla4w4n4tehtdm	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3kiH:ZU2aEAi_rgjqNW6AbGYhXJO4NcHyzOn1U0u-eFRBy08	2022-01-15 20:10:49.576298+00
ua7a88xyorrhq06n2vbyfqxeootdhpt4	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3klE:2ryurxq0tovi-vMwXFkUUfDUzXNtKOBxwLd-YXlBVlo	2022-01-15 20:13:52.904948+00
62aah6i5pi7lb3wue0zk7go3jffj44xx	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3kls:ujvcaMxiphrtaiBUmfCQ8bJrap2A_twQUiAv-euEMkA	2022-01-15 20:14:32.662771+00
qex12fuz94grunhm9dmxyfdb8to5rvzh	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3koi:9qb4ugO3rKpEjFNZLVa__23GhGFkeszIZ4Y3DDcJ1bw	2022-01-15 20:17:28.19206+00
f8ck7tnevys13935g44g0cqbp67ogclx	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3koz:E2XvVLDBmnGC1V64Xb8tWigqpcm2gVvC6gaMuUnUOZY	2022-01-15 20:17:45.538577+00
2tdlgef4r8ft1mhjhbih2tjep0po9nwl	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3kr9:rZzFg8hnqhmzucpgojGMDj_bDMHlc2r8xlDmiGHUJtk	2022-01-15 20:19:59.575085+00
lia8i13fz24350i0b8s6ntkims2ml6k4	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3ktN:5JPNrOJB_mS29CubddLkR0rRNzfz7XRdYpiVog9KNk0	2022-01-15 20:22:17.131531+00
xkbmp67ip040xn4x6mmda3imyeuabkwi	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3kvy:G1SNhfsTXqdDkhNRewrlK6SyXv-vQZqMZJsgh_WlcRw	2022-01-15 20:24:58.507307+00
so7jxkek2kir3x967bfayauxsly7j5do	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3kwU:BL6VvjmnOWV1UNSrymPecgKFvuqeEI4wcnczekZAzB8	2022-01-15 20:25:30.4326+00
osxu7wqnmigogqwxgz7ca16j3dyyrvo2	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3l02:mibzhMhiaRM2iZdGz_spm8gAgOJVTmTpfyaT5x_5Vto	2022-01-15 20:29:10.989943+00
ek6pes7g366bqgpz7cd4odnc7b1y6yjk	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pHC:jfUTRsOA42lKDkZ8gF36be8xq-s9R0Fs9oG_WhDnzLY	2022-01-16 01:03:10.960129+00
neprzaqbsjaqkhdiq7zij7w8609loz3b	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3l4W:kplXTKg2vdTX_8Q14Qaq_i8Ns8mMP-N4WEvTNu2HnvM	2022-01-15 20:33:48.426196+00
6o09yn678wv9kxw90elyglz22nix6sqb	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3l9j:SSv4maXY8IdMvk9Xh8NA8P_dl68VILXtM2shtLvet9c	2022-01-15 20:39:11.44782+00
krif4bds8s51htguvdi0ds90su0ee6ro	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3lDI:qkJ9Z17haGjZrHb4uoBg9dd4ooZSs-ALUvoZCgofcQM	2022-01-15 20:42:52.714394+00
raz3cdgiojyxmm5a3n9h35sst4zf3bez	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3lDt:tsNR1AfKHrvT6b61m6l8HwW0It5K5FovzOEmPnl4p5s	2022-01-15 20:43:29.467529+00
qhxh7lyax05zkgola3rzwrdrueu0lm73	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3lGM:MKx-va2pryNqVi7F8zG4KhowKKD9AYuPgX6x-iUmlBQ	2022-01-15 20:46:02.824743+00
vpdagym5ca6wm0kfybyin4hjo8j9e7d0	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3lHT:-x_ViLVlgekvgbAzXmyHJdFYLyR-oKOECNhPBRzgjx8	2022-01-15 20:47:11.83681+00
d8jzm4z362fdzp54uvrrty4ns6dcs7ec	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3lSf:_SSpEg4z9S9EglCOa-3hUdiRBzkpF-H04Gpxfw7a7nA	2022-01-15 20:58:45.370195+00
bjo6qdnhzqgsbaqm0rkdtked6l642pcv	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3lZQ:A4oIUCowYArvY1GHTVLm9cXgJ1oAOkQYdzG0SsRsB_k	2022-01-15 21:05:44.955516+00
ctnfkj0vlwq2t8lu73bg7bbvjyzt3tty	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3lbk:92UuROK7OBg8GOX-Akis9_OWXh4v8iBKaVbn_eWTALQ	2022-01-15 21:08:08.574236+00
jto3rd2xyx9uax1u3h41lz45q5n8jjcy	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3lkp:FJL4C5QFkMaDw5RwXyEgdKcb5ZttwVH1A61yKzqQCk8	2022-01-15 21:17:31.988791+00
z2x94o3q5x09divh12icf6vhruljm4e1	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3lkq:i8_-3AWhgVsdektv933MlKs9_iQtQ6TzKQ9JL6LjhbU	2022-01-15 21:17:32.635981+00
2050d7exna74xkq33gtn5zlrjix5y74k	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3lmu:adnZF2k-6a7VsB5pMH6k6NsiQiPfKFzAKDgSdV-Bbio	2022-01-15 21:19:40.986376+00
yga4fbwbnb1424n31idge4hw5lzd48kc	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3lnZ:LNQDcGLmZYJlmEU-eXCsNzuYb2WxlimHDLHSr6QRQTI	2022-01-15 21:20:21.265265+00
4qipc4rmlrwpgbz7ir6oe0lcjkxqfpzb	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3loi:3drYR0HzGp9CG6tTXE2tEaGvBgyONqwNNpVdzRhv058	2022-01-15 21:21:32.551886+00
qanteiocryvhc2svrckq9xwufoeywlug	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3ncs:oJAhsxjolIGhXlgECJI7ItGb5UxGKXzyuPTC3qQoBbI	2022-01-15 23:17:26.558817+00
kmm9yzr8hppd0fguq6v8rgt6u8eqziui	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3nfE:C1G8trtUlgw-A6VRhWRPHZFKUsD98KurOkGtdU6iZ_Q	2022-01-15 23:19:52.051393+00
p44me2dtnjesji43a9scbs4rpkl8y7n1	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3ngu:HdGBF5_MRPEZLTZNdUtuOE5Sv5VP1AvEeWj5KzRHmnA	2022-01-15 23:21:36.325563+00
3fx6e9wy602pelbje778x6nrrp9a3srf	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3nlG:8YZZW0Oh9pWqlNYC0GNWqMRzRzLnuw2QCoCNbIz8X94	2022-01-15 23:26:06.925741+00
h0e07yguxdmht4hvq5p0oj5tmlfx1bdk	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3np7:YNJVD4yNbKsGP4TrvjDJ9-bXHpRetnvx500OGPvDIpk	2022-01-15 23:30:05.88198+00
e4tf757vl2ojmrm3ayeip1actnrvpspf	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3o65:d8n6n_GgWxh5nKz0YdKBAtTJ3EuCr9i8VYw__eKRJIw	2022-01-15 23:47:37.719345+00
lhu7vvdneishu6gt9tu2q214pzjwmhom	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3o7C:-zfi5af1oCyY-zAYvvN7ySLk6w0llscuYxv8YUh_O1k	2022-01-15 23:48:46.791898+00
49jvbxspyuhkogxs6puhjqmlne970sue	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3o7W:2vuDXInV3mA2MiwdewQhoKSxRplUcEziPn26zfFmOS8	2022-01-15 23:49:06.380265+00
ap0y339wdbrtym8vrvuncuoonvozi9ng	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3o88:9YR8kQkGELW4ZZVCkK5-6DkdX41pbkobF4l8YqgySwI	2022-01-15 23:49:44.163586+00
fbfxr6iwpvmcq7wqdwmvkd44ov90cvzu	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3o9B:KlPJv2WJfM8oQcwJNEeR1wWOPwGBGtQHDHzB8lZphZc	2022-01-15 23:50:49.893261+00
8nvw3uo03gjmf22kppqfl4sjru8grqxn	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3oA8:WRnoBW96O15897hx9Jq6WAsK2pmp5kDO5XUA0_3IFuU	2022-01-15 23:51:48.261186+00
ws50c6r2mf616yye3slwkr4j2cus9956	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3oIP:2pZgmITvSh6wF3O1dEudtn7OV4naJ121-OnwvdSVuZ4	2022-01-16 00:00:21.46964+00
anoihen5ucv7fd8mgkbi91h2ci24eyxv	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pHc:zWqmYWNrdppYv57Q3Eu_5qMOSqdCK5Kb9lUe23SWWBQ	2022-01-16 01:03:36.98204+00
2uv0nzyxxgyooa18s0smj194ojpazgug	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3oJ7:GvxlpPGpnn3ARir-zXHayQlZeO6I75Gs90bnmYU6eKc	2022-01-16 00:01:05.473706+00
crnj0p8sjdo8176b58v1ohppc2hcyghu	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pIJ:2xudxHQJWvYlJY2ht-mseddaFVs9ekUUOMtwigLSK_o	2022-01-16 01:04:19.652056+00
ep3bvnum2xtpx4zrs4rnn8i2cz06uxcn	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3oLv:uqlqNQLLqUO5oRbnHs53_vjXTI7x4DDilYH_5Zy54cU	2022-01-16 00:03:59.738651+00
ecbc4u9f08qudcft389t823nu6boyn2l	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pJ0:S6WATkesnCf3w6ujvADNEyyEMcAZAjWeJhTqFdISzOM	2022-01-16 01:05:02.862408+00
f6ofi5gbd4p5c8d4r7t2wk94mnm203bh	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3owE:ZQcAFyi7Woi8A4uPAx3zjRTekd5Z7OSSVS6qhH_KeD4	2022-01-16 00:41:30.29387+00
ps5urx2yzj3zyodjjp2efh876uh1ve8o	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pKn:IDpAw7seg9vmKld2DJBWiIB_-4SEJqFErjWwUviWLcA	2022-01-16 01:06:53.083975+00
vqbb4mxrn6tlzt5jgt1mh3a8c02shuvm	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3owS:0DEkx7hVG50jJjex4qvDXsiOlVfwIds4TvCkBbl2N6A	2022-01-16 00:41:44.957423+00
x9xvgviawz3jarofdpbxz596l4kgo1pa	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pOa:Ncg9n6-kQZMSIFaYVje9-0zwYDdfoipuyPBljCRxjEE	2022-01-16 01:10:48.21101+00
bybwj8vbauj1re65lp3j73go2uu5s00e	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3oxf:R4kOR1x5l2QTh11-zr-c6axfm5EUQMrm1FSyGW8a8Z4	2022-01-16 00:42:59.415757+00
sn84s0w88s18jcjv16lv18phnscg9lyf	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pOp:NwAc92ux9Axb0Zv5UnPHXtV1-vST6G_FEb3d1fM4scg	2022-01-16 01:11:03.027021+00
ve1bzknjczfz317yhlofzs0f7fb0fhgr	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3p4o:zxDRfkSmlPuJPNbtHVB_Zh7K591P0rZbZTZtRXOsKGg	2022-01-16 00:50:22.456707+00
492ohtq8kmb7pqyknaqlxv3a8b1lzysd	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pTl:Bl82ZMSm5izUejWfjUvqHSq2sU2KpmfjSOQdPkqv3I0	2022-01-16 01:16:09.189154+00
om10p2kapohk1twy9ik7tgj0cwgctsgz	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3p79:EBRxo0Vsc78OqdcbdqsaUUUgkJDiQH1LdfzbWi1ZQEg	2022-01-16 00:52:47.313772+00
f57s3z5ovn4refca77j08i3qgjgpupes	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pUc:O67X5YPg-CtOF5QxV67ZCkkJEY8tam5VO7LxtdYrzPc	2022-01-16 01:17:02.125075+00
3olxlz8d92jhx6vc7hgu4sw9wuog642f	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3p9F:KmxdWbVDAo0Q5i_iMaoU35ghyQzZzAMObkh8ftF9BZw	2022-01-16 00:54:57.19441+00
bj2r5fn0fuf4j18kupb34wkwwrsul5l9	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pd6:761Q8H8rWHVZqEI4wXbBSTX5FAgoLoghuP4SZlahWvQ	2022-01-16 01:25:48.026925+00
zulye0ngpd84lmioy90u4a5geu4fg8xz	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pAk:cFkFaDcRYlG0_4ycohJZw5Mt02uxElQ7e7iEUOb2Q8A	2022-01-16 00:56:30.355022+00
xjfx420vjs92b7jn0ke9w4p4vtuzpvie	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pdj:zyTo6gLr8Ua-lopOXLUcDFkTDdJE4hgpj3ssqsM8D-E	2022-01-16 01:26:27.232149+00
8y3szxnup95u4dq36jdimg67aogwa0y3	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3pnK:PawqXIjbGpLbcXDdnLNv3AJsVPYNZdZ8uOB_bh-8vY8	2022-01-16 01:36:22.959632+00
io5lv0m4dgiiz6bl2cvkkvjmu2yyhicl	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3ubX:b-kMGfTAjqQZitIVUFFRwBy4kuaA9Sd3qg3Uozf5lJQ	2022-01-16 06:44:31.109086+00
5d3hqj3n0leiv4jj4g1jpf1pqrvftc6f	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3ug9:-XYfxSnfo6mfYuWOAsBXdf8sL71k_E6ClWJoYdp3YDk	2022-01-16 06:49:17.014712+00
thd20d1w8evbr2msd4x1u3ip7z3o66pb	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3ugn:TxT0tLYQKC2sbb64UyKQkGdqTxQ2xDaq8U_PSvXEpmI	2022-01-16 06:49:57.393922+00
iypg6twta2frand115q9lsez759v1olu	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3ui6:yYwjQOtuAcNf7QV94T2IXQU-NhGb-kTj7jNjb1uk39Y	2022-01-16 06:51:18.881874+00
er75z1az0lwr94l74crxaybyplnoaq6u	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3ujc:yHL9nf07zYP0pfDPN1__3XM5_dbjc-Av2ruuPMNxqq8	2022-01-16 06:52:52.632813+00
fcru9k7xih07gbzgdzx0zf8x47vr9vzt	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n45kp:pGQU1S8idDDs_erpdx3hEbOQyymwohA8uLPixgBKxLc	2022-01-16 18:38:51.707009+00
oha9qb20kffzec0gvvw1qnkjanl791qm	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4RpS:gQVuS93QDNuu-5cysI3BIo6OT0MSTeKUmytowAwODuA	2022-01-17 18:13:06.502436+00
o3zl5cgoyftkdq83d8r08i14i63lstkt	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4Ryf:bGJyOBH695ZCb3ucGnaBNvtk3adLuplRoBoMxZGp1Ak	2022-01-17 18:22:37.531732+00
mhulfffzqde8cupeq91hnjxgmhgfly49	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4Trb:IcKD7q8JQiSuS8qd7xnn_hfiHgF6SQs8l2_Vw84of1E	2022-01-17 20:23:27.708451+00
s0qtu89zfoto114dfeoztvmskcxdvk7r	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4XD6:9Bp4Sbyn_lZqkxHWKeO8On9mMVFtbeGQxEk0l5ERxtA	2022-01-17 23:57:52.763075+00
zpsluet9gkkw1xsn6fh70al2kyfj19zv	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4WWM:aQECcHFXXhAE5jY9Xw1s-CM8uzwvgfVJOgNKM9njQfI	2022-01-17 23:13:42.756242+00
fog7mx2t89guflis5ggrj0y67gxubvm2	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4elb:YFG4Gb2XYAEFbVpYMBFXrnhAOE790n7EzS60ZOsKcyk	2022-01-18 08:01:59.934994+00
pdoro99k9qm8qpu3x1n5h4vy3hkt0lcl	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n5nsb:LWR7XLRAYmQDVbQ-ioXP1YrWHcXkJX-cuk4IrZfuzG4	2022-01-21 11:57:57.333185+00
y5udp9xdrxr2krnpqkvyjandzn7xbgnf	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4ft4:q9XbkDd3M94LMuMa6ZsExcsyGGzaJc5FqsTu39Nk6Dc	2022-01-18 09:13:46.314788+00
z5efn9orcilnwtq4q0cggm2v95thl9ta	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3uk8:6f8aDBJsLWbsz9lrFJ11siw-gL8WXTfe6XjJgDTJLiM	2022-01-16 06:53:24.524113+00
kytlvchl9m7vfshb0nnl7gn8bomhmuln	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n45lJ:r3_QtozKDnGBS8w1D2TzjxnosUIjX-8yr3bZo7uc6WI	2022-01-16 18:39:21.84131+00
e0ptjqaum2zplhlsupehzruikkuh5v8c	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4S8f:wiIE5GC9L6vf1B1toNV_RCM5IKg9SDMT2UAufWvSvcU	2022-01-17 18:32:57.119214+00
415maheabg0ay51m6xvfrfjvy8op09mw	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4RsJ:t6ecZ4hC-1i4ihhLY8WDSSc8ilM1Rj4mPa7ySdOUHy4	2022-01-17 18:16:03.963082+00
8ne4gq8ga3qrq4pyaqr8sp3khkacw1a0	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4XDc:n7LIOWumZiWm9aDwBQQFBWkTkCaqM5-5TtxF6dDjHl8	2022-01-17 23:58:24.520931+00
o8i8cj4vbgft9gdy9339ghhksvpahry7	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4TsR:rN4EA8mAdM-tTkChQfklmMbjTjabHT6uJR8PgJkooNg	2022-01-17 20:24:19.096085+00
qusa91vsmne8ro73uy2pniz9i89nwtlr	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n5nws:5pedZjGHJ9H8V163pEgDNsQPA4P673UD5z857GBudxk	2022-01-21 12:02:22.697136+00
55n8racmmydgasax7l3h68m2tawl2pxu	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4epW:va9pn57KOe57tQNhP4N080dUCFtYsXOaB-3Sh1Id56U	2022-01-18 08:06:02.279793+00
lu534an6sx5y4fzr3mmvabt7ufuqr3zo	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4fwJ:C7wpwJz64WSDenFghNzyeVyXtdnhNxO8RbrFmoYOZs8	2022-01-18 09:17:07.475135+00
i5ghooeihiof1123htax7mejn023a0vp	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3ukv:57DIZOXgUTaZ9yUf04IbymVUE4ACCjQAWDJj4MnW2ek	2022-01-16 06:54:13.425657+00
noj5yx5m2pyf4hja996u1hlopphgkv1c	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n45mf:WvJzqboAhCxxx9x9JmAchwdusb3Bl0pgFYaHwRaxR7o	2022-01-16 18:40:45.878038+00
780mgf51i44e7awuxol7z3eam7qymayg	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4S9w:W_qw1J0_Vsq5anKly8EnYOOWy_89O4qI6cduXTXxqu4	2022-01-17 18:34:16.130833+00
mezu9jdaqk7xgb5gtempm9ds3n135phd	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46BX:OOt4rPikSJ_zIVJ0lZGzLIhcPWnTlkcebAdjQFDJwiU	2022-01-16 19:06:27.835575+00
akhn8oeyqscf5isiatbe898fzx2dicx9	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4XE3:YQjSCaLHxfpRwCKr34YvSSguJE-w5qy0_57Nep0bY-g	2022-01-17 23:58:51.507222+00
u18xe0gl6h3gz34o7lzk5rlosbpdxxmt	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4KFf:bPkcqS4-_us6vkdPPildGDhk5IBIq6bmVpoQ2CH_yeY	2022-01-17 10:07:39.70096+00
1xx9910xmjo8wvjxbhuztrwdvgp8umue	.eJxVjEEOwiAQRe_C2pAy08Lg0r1nIDAMtmpoUtqV8e7apAvd_vfef6kQt3UMW5MlTFmdFfTq9DumyA-pO8n3WG-z5rmuy5T0ruiDNn2dszwvh_t3MMY2fmvriwcwTqIUJmEi6yl16GwBZjRC3A-GS0cOsU8Dd2yRQRAGLIZAvT8Jsze1:1n4MDT:HaMbEbUbO4s9h8VLxT_fOWAUyE6MVyhmpJfoZCqXQrQ	2022-01-17 12:13:31.009597+00
jlcs99be44lbv6isr3ehftgk2avjd3f9	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4epm:-TbsaI4qQ6WuN6Zg78U4aCWoUBsv7LzvO3aAERf1sQ8	2022-01-18 08:06:18.832136+00
nh6at1ppv5moocaklfq1fvit9wp6z113	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4Wkd:WFNQSPGVhotQj_01Bw_PR2fThNNLWaXhuxwkDIUy3sU	2022-01-17 23:28:27.796389+00
a5hqa73ahcvoelv8qscfob4hisby04yx	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4fzi:EBrvDkg3pfre-vVpKPvqSu5CHwDXj_8iLXkCGsYRl40	2022-01-18 09:20:38.039391+00
nw9m6akdhi9rqd2jch2ry3c5cki90dip	.eJxVjEEOwiAQRe_C2pAy08Lg0r1nIDAMtmpoUtqV8e7apAvd_vfef6kQt3UMW5MlTFmdFfTq9DumyA-pO8n3WG-z5rmuy5T0ruiDNn2dszwvh_t3MMY2fmvriwcwTqIUJmEi6yl16GwBZjRC3A-GS0cOsU8Dd2yRQRAGLIZAvT8Jsze1:1n5s3z:Wsvm7jNXsxRE38AVOLORHebwzwzb8VBrizi3GYR-l5U	2022-01-21 16:25:59.948156+00
m3h871v90fsfg3opz4sz3q3p6q8rl1oo	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3upB:DSYgS3kG6TT5kAnVTvE0B9a6wn0h1gwHdWx0_jaKUZI	2022-01-16 06:58:37.186159+00
rzvxzmqtket613s8ta4x1cjf7jea5xti	.eJxVjEEOwiAQRe_C2hAGSBlcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWRovT75giPXLbCd9ju3VJva3LnOSuyIMOee2cn5fD_TuocdRvrZPyRAkKsooFpoLZoXFg2aLXOWJR4NAp8M4Ck9GetZ9QMyChAiPeHwCxNyQ:1n5qWQ:ggEiWlQVDq9fboWjNJOMX6gk3luzIbSu4fFzfvUJ7SA	2022-01-21 14:47:14.943719+00
lfm61g0g8us4etqcirj4kauu9f0y9pl1	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n45ns:XIz362z65a0LzS5tJfgBkw4lCLGmEPsxma8x4UsbmB4	2022-01-16 18:42:00.364308+00
2dfupcpc7hh45v5apd3xa776bsobm4a6	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4SAM:t_utr3vsQl5h7Ogpjag_V3R3ABUXw9dYsNURVs_78Lw	2022-01-17 18:34:42.700177+00
1azekvb57uac2s8xagp6cjzot4nkxtnb	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46Db:bh8ot34TU459rWT4UOVifatvWoZmrVXKd7DftTZqfDw	2022-01-16 19:08:35.983442+00
0dbm6ardaxuurvnpz0wfxdjris88gai3	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4XFB:HrmDy9cpTzmQ_H5ia4AMD9ZshOWuUrON5MUj8-6pubk	2022-01-18 00:00:01.17204+00
7f3a9xbsj7a641i1anudyq8vmrbvwiep	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4KFi:I1qaZiatwapklK8Z3bFBd7l4ZN-j7X2MWAAtFK4LH24	2022-01-17 10:07:42.377449+00
6v58d4zd7w9qlhvnk8oeas4qxm2o4aog	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4Tss:9E6MWKu82USFCi4fOH5tSWc6BjDDC5SC2Xo-BJDNW9k	2022-01-17 20:24:46.064723+00
cts42sx65yyygp2ulmixi4de3c64d8pu	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4NNh:pRLVpiHjenJ-BumBjN7PsZ4wwZuHqFBI7wUlY4Fem1Y	2022-01-17 13:28:09.605829+00
ojw3owcbu1e7du6803nc7lf3eluut3iu	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4Wp7:H9kNXJwBkwodpMO6bR8x1wST3S7VviFEGHgARgntKP0	2022-01-17 23:33:05.909886+00
xfabqt2zbse3x2fq3vyrynfh9duzbpub	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4eqW:uE4m9Zeu1P_QEvf5OD0YaDLUvn1Ew1El9uz5Ljwnd2w	2022-01-18 08:07:04.131304+00
mdngcr5efgp1cobc0evlse2oakk3mtw9	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4g0g:9-8hekuDUykcUC9UfEwxdK0xjhSFyUbHHMFa8qzZm5s	2022-01-18 09:21:38.608535+00
iu2sd4sto97ydcxrwenqfi0ydw6wbf1j	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3uqR:2BT2RkvTo37__lrgtYjE9CoDjDnme7vHTQCt91cZLns	2022-01-16 06:59:55.041391+00
1kgmoalsmbr786h2weplesv3bvc6jy5a	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n45uN:T6wlHvQP53mxUXS2JHi8JCRS4wcVUrpl_fl9T19GXkM	2022-01-16 18:48:43.197546+00
vcw1zc1quk16immuvo4c2cj6oh0m59pb	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4SCP:_lamtuP-rQDuQWK_rAPyA9oFBBWEn3IaF0ljspyRLZY	2022-01-17 18:36:49.249794+00
mr0rc21hcrmnxs7i25g3pwpgk3kev1gr	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46Fw:DOinD6sfbltB-QvJDUM91RcfLg_V8pAkopQ0VVzDdxI	2022-01-16 19:11:00.588993+00
gqbjo218ocfy7v5557iqnnpbzdy5qklj	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4XM4:y-r7MO5P2KR0hJt9fPsZSRN13FUFKmCtH1Ym2zo6Uik	2022-01-18 00:07:08.17019+00
cksr91aoulv06rouxyye3s7gjdiw1uo6	.eJxVjEsOAiEQBe_C2hBo-YhL956BdDcgowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jlMRZaCMOvyMhP3LbSLpju3XJvS3zRHJT5E6HvPaUn5fd_TuoOOq3tgq0CqF4xKACJAZS5mSdy2DRQ0ZfFBimo3fGF_CJiZIiZp0JjdXi_QHvcDge:1n4KG8:HAC62q64zG4fE3uSyNb93Oe6yeeUX2yb4Xc_f2NOMcU	2022-01-17 10:08:08.29107+00
k6gftdu0595n6j65drafdg1af1yaz743	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4Tvt:FpXcrK8iEwPqLTUG63O0wP3D5B8W-UTmqQcDGq0ChUM	2022-01-17 20:27:53.847322+00
695ovmn92wjaplt235op9v0fy8yn6cki	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4NOP:uZXa7O5TsggKgaAyY5JXySy3giTSv7GnkRwOYeUKX_s	2022-01-17 13:28:53.593935+00
voyf5hwvq5ds36ciu19jcelypfgs24ge	.eJxVjEEOwiAQRe_C2hAGSBlcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWRovT75giPXLbCd9ju3VJva3LnOSuyIMOee2cn5fD_TuocdRvrZPyRAkKsooFpoLZoXFg2aLXOWJR4NAp8M4Ck9GetZ9QMyChAiPeHwCxNyQ:1n5rc2:hewAL9htFXuSdSXxqI4Xsxq-CFHmjnHvgLaa3BC_fiE	2022-01-21 15:57:06.766323+00
0g0vknkmokg7v6rd2qtf2qapslyhl0to	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4Wqs:zC8Nk2dbVTFdBpZCpDlumWexYGFl9817T4JGG0-BWuY	2022-01-17 23:34:54.696048+00
ybi10sids0msx6hztebwpr8g5uw0tkl7	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4erS:VZn0kFeVT2q54aDwIZphIez-7AhczBfUjxAzh-MHsn4	2022-01-18 08:08:02.270264+00
fbjjegt4ld6abgq1phtdvc4l660xhgu2	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4g1g:QOBYJpx-mUtCKInUYKIeAWkCdUPmByacUW-4ph3dtFM	2022-01-18 09:22:40.732421+00
b9y6xndj00nwrt1oh9oasbnfngt82h8m	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3ut6:iYgoRa2Hgx9VFocyaiHnergN4V1QsHlwp4F32u8o3yc	2022-01-16 07:02:40.89782+00
hvyuyqx3oaezorxbxjd8kj99hotcid58	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n463H:s7ZnQ4uq1PiW1KO55QDlbl9r8XmFrEswetsTOwJTGIc	2022-01-16 18:57:55.310154+00
ui2uvbequ4402tav4m8byvmnzhipbjvr	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4SCt:CItlJm64-ZdR6QwxOYUC9I4VcZGJBtLQPrrlLBdH62g	2022-01-17 18:37:19.385394+00
25s4x6npxsxm76h6fr1byhswmcuw3mu3	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46Gp:eL928sL3abcKGA7DxPQNDJa8fiVnO3xuvXgx7JZbrOQ	2022-01-16 19:11:55.69039+00
91k8eow23o82kh2do9fb8lcq1kgsgvyf	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4XRp:mRqOGwHZAjZcSDvw-y0akI1xwwT9qII-Im9XtgYfSVw	2022-01-18 00:13:05.138025+00
60bjh7s97yhv3z649xg3501nag0pqkpu	.eJxVjEsOAiEQBe_C2hBo-YhL956BdDcgowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jlMRZaCMOvyMhP3LbSLpju3XJvS3zRHJT5E6HvPaUn5fd_TuoOOq3tgq0CqF4xKACJAZS5mSdy2DRQ0ZfFBimo3fGF_CJiZIiZp0JjdXi_QHvcDge:1n4KH7:PVRkvLUcw3-ONrXtiXpUSnMmDemvyFveqCAGQ4IPnpo	2022-01-17 10:09:09.758861+00
y23j5bo1pvckq90wp4oopzlunkimkip5	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4Twe:p-rMXRBn3do4NvziPRCwg-4NTDP3yQV30rEv_bsuuzY	2022-01-17 20:28:40.479523+00
2eq6t23mmgvxqzz9ihckkk1kx3vfuwbc	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4NPu:iDDHRRhvMXgaqabhUsq3OOJZpt2yRO97CgNZkttXgQU	2022-01-17 13:30:26.20172+00
munoury4j7vx8hezzjvfo2dyfpka8kf6	.eJxVjDsOwjAQBe_iGln-rYMp6XMGa73r4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVFWC9Ov2NCeuS6E75jvTVJra7LnOSuyIN2OTbOz-vh_h0U7OVbk1VnwJCtVYm0TyHkTMk7ZD85tACTQQJAhd4BDwMREBmnlHFas9fi_QEZ2Tgc:1n5t6Z:0EXa8modVmTQK5H5My5CuVUWznZwu_ffskUbDdqJJzA	2022-01-21 17:32:43.185698+00
rb9ucha6g8bvqd3d4w38ky5fsyq3lomd	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4Wr0:R-pEnhtJNDWQJNZMn_17upq4ZGNP3lh6Y_oFWqaDES4	2022-01-17 23:35:02.094822+00
3z1cs52wrqu36poxepwyhlc8eqdl677e	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4erm:okAeQJCxClMw34_gBQzeYcbYfOG46LFKXW2c9YM3P-M	2022-01-18 08:08:22.463543+00
6u5ae78k4dcpeeconm4g2f5gv8c2v8jq	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4g23:W_7Qit2Cht5dS_9alj8YxjyLCgSeIOuJafL9aHjhXmg	2022-01-18 09:23:03.359644+00
u2t0j3e4p11hy37udqh6wque58elpa5l	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3uvb:ZK3-yiCLm9pPPP5v5Bj7lKdU5FD8fUOVBTszKDTo4Nc	2022-01-16 07:05:15.146151+00
9qqr6jxzfvkev5h8j3o2nwt4gc0rnerz	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n465Y:2FRNyq53CZXLeHrApGdCl9Pqbgil7jAR4DTS1xim1zg	2022-01-16 19:00:16.371354+00
ez5v05i7i7wzl40rtdlahf5raortv7m1	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4SDM:80IOueKst6t8q4I8rJiOKAEKpJlGFD4Krb5OSQHRR7o	2022-01-17 18:37:48.758736+00
564uzfwf0ldrrft79xwn49o5s5v1wq24	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46HK:A0TzCmpQdyYYUKFxr5IpbwfI_y-zg0Qbon6hXQvaLwQ	2022-01-16 19:12:26.226499+00
t14wdc4jfq5y3gdtiavh2dp8jee92bvl	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4cpY:eVw40-HDqrMdZ19Ks2bIAAjgN1xdDGxRIyLmb8NLh28	2022-01-18 05:57:56.044631+00
9v8q80uah574guzm210txi2n7olhhzx3	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4Kv0:um3RpOfoiVXFni7ktjJ6yWWoxiYzs7OfQGunWVYUblk	2022-01-17 10:50:22.689642+00
kiddu6gyic3yom1zgfre0wtm24pdlcsg	.eJxVjDEOwjAMRe-SGUUJobbLyM4ZIjtxSAG1UtNOiLtDpQ6w_vfef5nI61Lj2nSOQzZnE4I5_I7C6aHjRvKdx9tk0zQu8yB2U-xOm71OWZ-X3f07qNzqt3YnQXKQUBSxp2PwDqh4BlZ0lEoGJ9InwgAQlFQLOU1dByLQo2fz_gD2oTfx:1n4Twk:4hvnldK84zk-kBJqmEZkAiUW2WVpxudwCs9ZuRxQzR0	2022-01-17 20:28:46.845762+00
zcbfn1xjopphwwpysx69u0fdtvng2ois	.eJxVjEEOwiAQRe_C2pAy08Lg0r1nIDAMtmpoUtqV8e7apAvd_vfef6kQt3UMW5MlTFmdFfTq9DumyA-pO8n3WG-z5rmuy5T0ruiDNn2dszwvh_t3MMY2fmvriwcwTqIUJmEi6yl16GwBZjRC3A-GS0cOsU8Dd2yRQRAGLIZAvT8Jsze1:1n4Nam:SyEmF8LawOHH62pGC9eldM2sRPQnv_IikXI6E11EVNs	2022-01-17 13:41:40.06048+00
zv8iarwmjc5432hgx95wv5832ws24p78	.eJxVjDsOwjAQBe_iGln-rYMp6XMGa73r4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVFWC9Ov2NCeuS6E75jvTVJra7LnOSuyIN2OTbOz-vh_h0U7OVbk1VnwJCtVYm0TyHkTMk7ZD85tACTQQJAhd4BDwMREBmnlHFas9fi_QEZ2Tgc:1n5tDA:J42-jpBsv5qUIyTlgNvI3Du4bODUDNBCTLkLS6EArS8	2022-01-21 17:39:32.319073+00
cdvxfb82gz7kyzfiv4woc0io7f0h6iex	.eJxVjEEOwiAQRe_C2hAGSBlcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWRovT75giPXLbCd9ju3VJva3LnOSuyIMOee2cn5fD_TuocdRvrZPyRAkKsooFpoLZoXFg2aLXOWJR4NAp8M4Ck9GetZ9QMyChAiPeHwCxNyQ:1n4Wt5:oCB2Zz9yma9S-xJ9OmRwZMX-toNohljRkoidE7mIOis	2022-01-17 23:37:11.947156+00
snrnuk4n4ff9ox96itut3fxwv78p6rqk	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4esm:noNOFsD6v64AhPIC7Mq30hTjXzywAU_GNyw1UugVE5s	2022-01-18 08:09:24.799655+00
nkdi5c8yzggyo1g9hd7c22qlmim4spwf	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4g6F:cXbL47qdX0ITp-M3LHBSstL0lRDxmKRXfU4jr-5uoJM	2022-01-18 09:27:23.762245+00
5fpztamq6x3quop0n16c3k4bswpexkxv	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3uwD:QcNBH6heL8WqP1CT6i-wEu8AEfy25VmhuIYG3sEz6zI	2022-01-16 07:05:53.964188+00
auc5685y28j723e8utkyjghu7t378pvb	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n466p:QPZm9oPnNrcpWls3N3hYVtw8T8BAQutBeV2qe3_fQvQ	2022-01-16 19:01:35.533938+00
rbzg2uaqmn0wwccdh9ew1p0zzmtat1wd	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4SDU:xNh7pWLVhv4z03QqawIQWoMSgBFGmW_o3Etn4-umGlc	2022-01-17 18:37:56.274414+00
7osjsacipggng06z6jiodkkmgydk19xy	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46Hw:1SvsDfgLQRHx_TCVuecAX9k1Osxet5RsmV2n0Lv7MbM	2022-01-16 19:13:04.413919+00
kifmy4csxlsgwl2yvvqm6f4znsttoc19	.eJxVjEEOwiAQRe_C2hAGSBlcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWRovT75giPXLbCd9ju3VJva3LnOSuyIMOee2cn5fD_TuocdRvrZPyRAkKsooFpoLZoXFg2aLXOWJR4NAp8M4Ck9GetZ9QMyChAiPeHwCxNyQ:1n5urm:ufpUse0CYar0gruymD2tcCVcfR7fsasLbMvPY1XD6L0	2022-01-21 19:25:34.184956+00
bizpbllq437mqhjrbsa60iv1bf2z2mqm	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4TzN:rVf6SAfLsAk-KqmnQ0Ryd9p6WaTU9Q6luAk-Gf_EWBw	2022-01-17 20:31:29.755284+00
abr42wooly4vpxbzvhj288dq1l8sed2v	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4Wtp:IVqNvXTjuktfp5qyF3gYCwYIRoy9YNecxYUm0Qa0Rxo	2022-01-17 23:37:57.306281+00
7p7vc16m3wevyggzoyi73kfdywi18evt	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4NbX:mvQ3XaaMTsT6vXzWySVi0XzaClE_BmvXEjqR_kXutPQ	2022-01-17 13:42:27.645977+00
8sr2mpnqh1vddldw6duy4ml5sj4xedvs	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4Ncs:2Roff8lC4iOa0bSWurjlBjv5bEoEwLhzNWnWEwsJ6rw	2022-01-17 13:43:50.4383+00
dk2ilquec6wrq49m5ywkrxswicw1zw1n	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4etd:qA1dKN0W8JiEmbOto1_-ymKCnFUuyvTOWwLrFBRMWxE	2022-01-18 08:10:17.641436+00
21xe6zmfy42prknimzh80fvenzcbv7hv	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4g83:RdA3BW3onYKR2kitdoN4atpElqcJAXnCLbdzPJTIl4c	2022-01-18 09:29:15.777401+00
qfumbw39lf59l7jmq96899yw0itdsutn	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3uxO:oMrhhYOZgUctK1Pzk4wLKAPJSk7EgA-TD2QycDh9Q1o	2022-01-16 07:07:06.450292+00
z6bfw59uvt5dn7as7tqt5knnkw6vr5tt	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n467E:nGpwcN9PvFbBLEOj_1f163N-Tg0hDE2T7jAmYPotx4k	2022-01-16 19:02:00.179888+00
m9pvd4exhmprg8xtt02345tfah9aufy3	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4SII:r9oa1FEpectLkHmKvv1cjb4vp_vLTOiH3j2BKms0KY4	2022-01-17 18:42:54.296907+00
rfpgdc4kqgpxcjtflsyn4kn797uqm37z	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46KP:8lDHNxXP0PnH80Acv1jLoun3Gdo33d_XPJvhbZqgWJ0	2022-01-16 19:15:37.217269+00
iurmyxms2bgwe67oq6tj9pofryr2ktta	.eJxVjEEOwiAQRe_C2hAGSBlcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWRovT75giPXLbCd9ju3VJva3LnOSuyIMOee2cn5fD_TuocdRvrZPyRAkKsooFpoLZoXFg2aLXOWJR4NAp8M4Ck9GetZ9QMyChAiPeHwCxNyQ:1n4dQX:1SxGU8o57GoDsbEFrgd6iVenuJDaUCMH6uSLLAO4jCQ	2022-01-18 06:36:09.799865+00
b1u83lugoum2ngt161u5fzfa2kukcaji	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4LdN:VMmqzSaA0PXJckZd6wfQDHMRAM5s79tuxuqeBWsf5w0	2022-01-17 11:36:13.488335+00
gmzysta1qrhsm8rxyvnx49ypw3zr4tjl	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4Tzu:COJlX_DXS9c1l1Y5AmRn5vYY933QrQvld6kO4l6KEzE	2022-01-17 20:32:02.407159+00
veelze3s7v9fmj1mma86xl9l7sofb52r	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4NcW:9BY-97qiGAk_9HJm7ZdJ9GGZCTzmvQYhelxMnEAT0H8	2022-01-17 13:43:28.854987+00
2b3jzanfweoqeng37iyjwtv56bo7hq96	.eJxVjEEOwiAQRe_C2pABQcCl-56BzAwgVUOT0q6Md7dNutDtf-_9t4i4LjWuPc9xTOIqzkacfkdCfua2k_TAdp8kT22ZR5K7Ig_a5TCl_Lod7t9BxV632jiLCECgrNYKLCSntXOQkTyrYoNizlR8AkNsChmrAoSLYb2V2bP4fAHqbTeM:1n67Qm:POBWiqb2gG30xqlAcZD97CscoZQ7sEy9i0C-tXrVm9I	2022-01-22 08:50:32.675952+00
c00iiftldw126mvxvmelil3h725bs1zc	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4WvP:51lwUUWISzUYjbq7Kn6hykHlpLscxwIYN-C6en6YGOQ	2022-01-17 23:39:35.037608+00
h3kvs4exudbxqz0sy0igu5rias2rswth	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4etq:-6UtMEk0w5O3ncDLlXAELDAkBXqAOvh2AZxsNX8XoYg	2022-01-18 08:10:30.533778+00
nvz6wkdudgbvpahtuvbukmyv089hve3j	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4g9b:pzIS3cgsxxH1ZrQiP8WcW7KGvJM0KsgpilRWTP6v9JM	2022-01-18 09:30:51.232236+00
hsnx0n4rxkfwrp6229emi74lumfsh026	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3uyt:FDGEwO6B_EeULMhdVn8CEH9cRTcAbJh9AMIClBxkHLQ	2022-01-16 07:08:39.259473+00
th3al877sed963jk3vtmiral360ms5kh	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n467V:UPKsS35aM6QY-n_vg2N9GNujEbutvC9avQXcjf2DJ3w	2022-01-16 19:02:17.650554+00
luhc19rvilvk03hvfa786a9sbixu071r	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4SJ1:gidVrTzgeuHTF6HfsaGYhme1NJVsnd9NqV7QRZGxwgo	2022-01-17 18:43:39.769216+00
cy24fsr7runam3qkunp7f04scfzmew79	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46Ku:NQVeVf7V-lsDiIaRXqrNbyFWWd6xl1fzTdH6uSJlJTk	2022-01-16 19:16:08.453437+00
ld5tis4ugn5micw9z8bn1h8kgmw2ufns	.eJxVjEEOwiAQRe_C2hAGSBlcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWRovT75giPXLbCd9ju3VJva3LnOSuyIMOee2cn5fD_TuocdRvrZPyRAkKsooFpoLZoXFg2aLXOWJR4NAp8M4Ck9GetZ9QMyChAiPeHwCxNyQ:1n4dQZ:sS8B-qGltz30PFxHboB4M-0QUS8c9pjiOAbmdRJpiNY	2022-01-18 06:36:11.309154+00
t41i9eftoy3mdiw2uk9n7rf8mwo307k5	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4NdU:oTL964vJWksD1TTJ11fUhyRP6WH3-t2kjpmg9xnj898	2022-01-17 13:44:28.38794+00
oys1l0dh2sol6a7j2kte0z2yt0zbmjts	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4U1H:LspC3diShlIwwLdfGCWz0EPeZQWcAJ5aI386xnNtefQ	2022-01-17 20:33:27.787387+00
1n5xgifqgop3f0n7aoqhw63jaegvno24	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n7f0N:SvxDAVfLOaWUBhWRPI8LCJuIBncuLpP1JRwZIMKdv3o	2022-01-26 14:53:39.145446+00
sql9oxghfdku9gafofcauwk98bj35zia	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4WwW:PWWT_gu3nMyJ56x5Ru4rNWBr4DH1VDigSVXn5wgGhkk	2022-01-17 23:40:44.704861+00
71eakulchhkydk0slx14vqyzi0jn8rpq	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4evx:D-LuJSYEXlT7a5oduHr42I-CdNQTnCrkIU5_c26wK_Q	2022-01-18 08:12:41.853323+00
d73y3e7yn6j7d7oq65xxr8v0rm1ei3md	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4gDM:eMXdcM7jRkkpR2NuXiRKnTzROyyWP2bIosqEff5Zfuw	2022-01-18 09:34:44.346022+00
0vbup2cele68c0qp7vkmqg35vnk9to09	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3uzQ:OlM-QA1y70FG_rI8FUmnIx1tXaIGL2I3zvu1jBMCw-A	2022-01-16 07:09:12.267737+00
1372gix0s7wpsr76sv4izs780g0xfu1e	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n467z:ezBlXi7YRkMDhVtKbDFQoA4LIZpO-1MeuwG_xeG6_oQ	2022-01-16 19:02:47.269495+00
y6acyx8gpfgcl9nbjjgiyc9mjf20pp4f	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4SMh:grs2fb5W_fkmBdqza_L9MYxQSKEvZ13tIbW_AlR5NSg	2022-01-17 18:47:27.537631+00
dmsiaxc8xagq5wdase8lpd0u2h8cjnf6	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46O9:qyOOdOld9XTvSpQZnlWwz6Hefl2lHjeomGqDnHiLYkA	2022-01-16 19:19:29.747229+00
phcu4edgsa3pc0t57oyq8nq4121h975p	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4dR7:j3DM0zxsKfJHmUjCvttr8H3ecAC6sxLhb-hPMu1TpvY	2022-01-18 06:36:45.367335+00
o2ijj10s1203km9abzhrmhsol2a7vb37	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4Ne8:6FK7e5u2eXQMlbfall4OtnPz2mAqT9dDrSK9J7Nzzu8	2022-01-17 13:45:08.221754+00
m4bwd7hxvb71ib9vr26qxjonaoyygwld	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4U3C:yU0TJFGapEkUqNu222ByGITTnB44kL72ILTGR4VjzUw	2022-01-17 20:35:26.706628+00
2nbbr5kck4dhc90eqsruwus6kt4tx1jy	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n7f6w:ynmgC2LaDSwhqoN3kxj8MkobTXVaN6FZAIXcffxsFUw	2022-01-26 15:00:26.564666+00
82ozx9ogxqm1839v6xgu6x0mq821699f	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4X0Y:b5bai0HTQ52H0opfIgdwiQ_fue8s2ySIjknmuXMeox8	2022-01-17 23:44:54.863728+00
bgdzltozaerl3cw2fin2flj9z9ocluh5	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4ewf:sXoWRF0zPZlSo63yl22Yr1bZzkVtsgV1tbjwjWTNWZg	2022-01-18 08:13:25.792724+00
aikzc5wgyiancss2azt02ixchyq4g27c	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3v1i:AcTvneUgao2j5CC_HEPGHzfki5yvxYKJI3A2bSjWYVQ	2022-01-16 07:11:34.946303+00
5fuvmiw0xaru505i2rcf94hab8qb9j0m	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46QG:csjJodjHKl8uVX3iJRWmw9hw4vdh7NSJy91082b5eA0	2022-01-16 19:21:40.179788+00
593ag1pz8o4lzan3raforeymuln3wslw	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4SOp:Z98EaKuPLiFDdy7Ajes3MnVpE2xDE2Cz1bnppuP51SQ	2022-01-17 18:49:39.58933+00
nbomz3h24iloihhpcchtum2q4ljogq3w	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4NeW:4eI_9D2H8EXwiBzldQL4p-rStYcYpupw5zv5COzGJ1Y	2022-01-17 13:45:32.027135+00
a0pv36oik88v2toer9axfkcrt0424sxb	.eJxVjEEOwiAQRe_C2hAGSBlcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWRovT75giPXLbCd9ju3VJva3LnOSuyIMOee2cn5fD_TuocdRvrZPyRAkKsooFpoLZoXFg2aLXOWJR4NAp8M4Ck9GetZ9QMyChAiPeHwCxNyQ:1n4dSG:EqJMhzHK_Ji2aCQzVxohMixaaSXXbA1mabwxMlsDQsY	2022-01-18 06:37:56.824258+00
tq0jdzzgnbo2x1252p1t8hwregx319ct	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4U3N:MbDLnK5hvpLfNsJ3JyR_OFpEH0yw5CDogdzzUTzOCTk	2022-01-17 20:35:37.670086+00
0f783b6zee3hc4i8gnsm5t78yxtmk5s4	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n7f9E:vwvljLuOWh5tgPyBcneoj_IPp8zyW3D2hqxYQcGwcSE	2022-01-26 15:02:48.392867+00
njcmotc5irp4a0ep7i3iefgxr14060f7	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4exK:vaiNi-QxDW0Xg4Oj92Y7SIcyG1wqBdhvmROcAsOiJBs	2022-01-18 08:14:06.383041+00
w6fgkpt7xmpo023m3kp0eyksntbrze7f	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4gGW:4Z3Uxzkx3X6m0WK80kpyjjzc5TktAl3eIkbJ-ljilg8	2022-01-18 09:38:00.573903+00
ofjgxjlz05mh2iljzztmn4cwxrfba6ho	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3v2d:s1lfT6IQdpH2_B5ZZsb-pEG3Q6ymw95xYY6yM8umA9w	2022-01-16 07:12:31.755129+00
nmi4o5tdds4wmprga8auk5kpruh6iy4u	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46Ql:fVo5Cc5lJqxKXll34S0z_8eD8foMA1cQ3yzdjfrok3c	2022-01-16 19:22:11.929998+00
q8nrmza9rvtruwyjt0cd853bhwwblirm	.eJxVjEsOAiEQBe_C2hBo-YhL956BdDcgowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jlMRZaCMOvyMhP3LbSLpju3XJvS3zRHJT5E6HvPaUn5fd_TuoOOq3tgq0CqF4xKACJAZS5mSdy2DRQ0ZfFBimo3fGF_CJiZIiZp0JjdXi_QHvcDge:1n4SRv:knzvMRLhjuUZvy_Ju0L8zmhRk-EKBlbrWOjITpNeJu0	2022-01-17 18:52:51.161148+00
3rwaxxfakesrarbibinmacfdr0pat0lm	.eJxVjEEOwiAQRe_C2pAy08Lg0r1nIDAMtmpoUtqV8e7apAvd_vfef6kQt3UMW5MlTFmdFfTq9DumyA-pO8n3WG-z5rmuy5T0ruiDNn2dszwvh_t3MMY2fmvriwcwTqIUJmEi6yl16GwBZjRC3A-GS0cOsU8Dd2yRQRAGLIZAvT8Jsze1:1n4dVa:7KFZqwmI7_zS19qrfPxWLZbz-wvq7QzBH883n8pIrqI	2022-01-18 06:41:22.295541+00
2ponj7ikmqb62379wan7pwkxn3ca84hz	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4U6k:pTHXReAtfKva53r45JIuddapzqfvqVjgdkEXC5d7RUA	2022-01-17 20:39:06.866196+00
xuvcetuv0bppzjhw43nesjwu50aay8g3	.eJxVjEEOwiAQRe_C2pAy08Lg0r1nIDAMtmpoUtqV8e7apAvd_vfef6kQt3UMW5MlTFmdFfTq9DumyA-pO8n3WG-z5rmuy5T0ruiDNn2dszwvh_t3MMY2fmvriwcwTqIUJmEi6yl16GwBZjRC3A-GS0cOsU8Dd2yRQRAGLIZAvT8Jsze1:1n7fjw:rA9CqJy51nKvp6XS7tpQAl3QMC8UOd1U3v7ZHm6fTWw	2022-01-26 15:40:44.726514+00
1n0e81lluarobg9rwus5djzbv9d7sh59	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4X6J:vECDxoaED4RxBzTspThpZJYi6NVAp3q14Ijsxgf1yFs	2022-01-17 23:50:51.669659+00
rpsi8ylk6z1lwyrkru1o3xv6dcmvzxrj	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4f0R:yO7TINcnd2ms_vwDWEL7CLHuV3Czuy5O7g4zy-7BMOo	2022-01-18 08:17:19.141331+00
uf12uh1dns1hv1i218mxmwshim0fpegj	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4gJh:LIElmueLECL2Uhd_tkYPbYdgem65QQ5UBHd8VQyZjL4	2022-01-18 09:41:17.214852+00
h182dkgjy5zuk5q04x11s6gj7ctvsrij	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3v3q:WmZVn_FNrmEtJU8PVuX5UX-wK1D-uyidmXN7W9dowHA	2022-01-16 07:13:46.495145+00
apb9huep5myjst7qmmkwni10nigqeavo	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46RK:Pa335F1zxHg_8ymC9Qjz4Epk9AaS2lNYO0ADCK1nrQk	2022-01-16 19:22:46.981041+00
zd7l0a5322m3l5y032ayrx6ygm58w5gk	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4SXz:5DAiTFLT_50nMROAabJ31IAGPt-gPRNtFMQ7TbNfvcw	2022-01-17 18:59:07.002269+00
vuifnjj1866jh2914df9w87k1boilpxt	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4Nqn:lPF1tZUf7D-8oTiwmtZX-Ou6r4CwfI6NEuz7DnjAugU	2022-01-17 13:58:13.190094+00
l2o6ga1reds1m5rxiimswhlgtaxcc87s	.eJxVjDsOwjAQBe_iGln-rYMp6XMGa73r4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVFWC9Ov2NCeuS6E75jvTVJra7LnOSuyIN2OTbOz-vh_h0U7OVbk1VnwJCtVYm0TyHkTMk7ZD85tACTQQJAhd4BDwMREBmnlHFas9fi_QEZ2Tgc:1n7g2F:GEUR4dvwecslPUNEsakyQpq8we_Jtl1z8GdJCG9uj2w	2022-01-26 15:59:39.242063+00
kznmo7jkh3arhm1a6zxxbsl6mghfkjae	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4U8R:YA9SLJ3yKS2_2giiNnznJrfpDik0XSWDBN2HVRPu5S4	2022-01-17 20:40:51.707921+00
v6rz5gz56ywpz1o4m4fd1nvxbovlb8jo	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4XAC:kQroxYbKq5L4cwwuF35SIkqACnhX49jcdoZ_PmLN9Go	2022-01-17 23:54:52.366012+00
yicqmkl15r0lm8lhhk5m2nguvjhpowuh	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4f0u:2CsE80f5hxia0oxubSG0TE8zSW7FVfovyEOzeiTG0co	2022-01-18 08:17:48.628589+00
0lvbgvoxbr450dmjja0qala4fkvj5yp7	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4gMT:CmQ9BulGYImPWKEVe8I00KY-J-h2hp-FERKWrwiZrSQ	2022-01-18 09:44:09.363048+00
6dpk0kedjyv4hi0547ptovtoq7rgb0iu	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3v78:oODAS5JfEzTdK5VzhxZDHySkk4mJ7czxUpE8YSswr2g	2022-01-16 07:17:10.535219+00
4fuj9g0dr0zy287tp3yl5ntk7dog5kdj	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46Rb:XEEV1AtwwB1f4c7WHFDAdoWGdNq2-bRN34ka8z3cY1M	2022-01-16 19:23:03.324179+00
b3tt195704ntk2x29f1qdifaqhd9cgtj	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4SYV:7BPROv1lDsvxDSutx3dSmRIahhSxG_RYhSlpDTsnev8	2022-01-17 18:59:39.302029+00
kutvlyjulnv1bsip2sj9vcauif4hkv7b	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4O54:kgdZgn8HPKUY5K8gOutOncOUk_kic9d0Dw2a-i8AEyg	2022-01-17 14:12:58.391832+00
3c0inx9816jtsiv4j5ookka2dtrtvhvb	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4dd0:Les6JA5trv8vjiJ3knoEFHmOS2b95nKF-2UoIRKWifI	2022-01-18 06:49:02.981055+00
a3k3qqand1tijdu0pseaziw1o78n3nh0	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4U8o:k_MkMmAsi0bT7jBkFLbhRhgG2IR5i0g6N1JP_749dsw	2022-01-17 20:41:14.118661+00
0jd96eijprq1xay2p5p4o7cfgbm9q3sg	.eJxVjDEOwjAMRe-SGUUJobbLyM4ZIjtxSAG1UtNOiLtDpQ6w_vfef5nI61Lj2nSOQzZnE4I5_I7C6aHjRvKdx9tk0zQu8yB2U-xOm71OWZ-X3f07qNzqt3YnQXKQUBSxp2PwDqh4BlZ0lEoGJ9InwgAQlFQLOU1dByLQo2fz_gD2oTfx:1n7gec:bf_zuw7DO0nTRrNUxuXRpCK0mV0a9aqtT4PsbmLWuNA	2022-01-26 16:39:18.093484+00
y7c34vo6hmbf1ean49xk3ju76gsmij4m	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4XAK:3x-q_vJDLmRAPUue3mFWsdJrKc94PN-VLOGkTCbHmM8	2022-01-17 23:55:00.44463+00
7nzutznuqr8jx4svnpk764h2yltc058d	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4f14:cTAyRKaK9PmrtSSJt0hA3Kgm6-bLn-LNyPRSVuA1eT0	2022-01-18 08:17:58.403511+00
pmdmzdeynzsqzy7mdiuyzv6upq4e4n4i	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4gOG:BJ7fedGLA1WvXCkIdVKkluuUO8fSMMbSDbA6ceK1k5E	2022-01-18 09:46:00.982141+00
czix8833ruej0uqbvrdix8c51y1i1sjr	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3v8E:DrB6sswdOkxrRpqe3u9S1iXU4LHxrEF7pqMcUXI1bSI	2022-01-16 07:18:18.991952+00
cefa51nnyxun6zlmj3kj20nwy5e2tf9g	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46Ry:1_ySqT2KFmbnsGYuU4A4vbBEHGWLk9UDyg8JVZb7VhE	2022-01-16 19:23:26.865493+00
cmvmzr8kwd6nmri00aldtmcub4yh3bvp	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4SaE:AmlJT6r8geGhH8hDAr55C_CItfc4FObQKEhZVs6quWk	2022-01-17 19:01:26.484754+00
0wszuirmc67g15rxbwz8vhv6bxocg680	.eJxVjEsOAiEQBe_C2hBo-YhL956BdDcgowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jlMRZaCMOvyMhP3LbSLpju3XJvS3zRHJT5E6HvPaUn5fd_TuoOOq3tgq0CqF4xKACJAZS5mSdy2DRQ0ZfFBimo3fGF_CJiZIiZp0JjdXi_QHvcDge:1n4Pu8:V-5eFF7YNS7MAKZaEzjNFhdcYGR6TNmg8h7JLZdsErM	2022-01-17 16:09:48.723267+00
0k1hor116eiz7qit3beee5uw899bbgl7	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4den:QeBSu5M8j_oNq6gA7OHzW-rJZd-qx0Z2lkKQmho6X84	2022-01-18 06:50:53.514848+00
z1tocibv18avxc2za610pgsdt2oh4h63	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4UBj:s0uoMhTIjCzpjrpH10xWu7QLFTPkwsrYaq1gRmlThug	2022-01-17 20:44:15.59977+00
lvlkc4mbakdh8mb254vp0z544hvld88o	.eJxVjEEOwiAQRe_C2pABQcCl-56BzAwgVUOT0q6Md7dNutDtf-_9t4i4LjWuPc9xTOIqzkacfkdCfua2k_TAdp8kT22ZR5K7Ig_a5TCl_Lod7t9BxV632jiLCECgrNYKLCSntXOQkTyrYoNizlR8AkNsChmrAoSLYb2V2bP4fAHqbTeM:1n7hjw:0xPa-2_uvF4sgWy0fyCu4BjpW27QFyYBYBtTt_kcJHg	2022-01-26 17:48:52.253983+00
3fde23dpaopscd3pqvujeyf9nn4twzu3	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4f4W:V1S0jyiFLJRC_wyqQXco2TlO8leOT6zELZXCP6-NSqw	2022-01-18 08:21:32.065835+00
06mwq4wpyzfmp5eb97aphx879duweyyp	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3v8o:f1zCJwvJwfPtbdnz3qU-v5MkZh-ah2Dz2VPrv3A96AU	2022-01-16 07:18:54.357561+00
izkzvwulnm895ygjai9elkryeix10bzx	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n46S5:W57qDju4szCUodV9q00cMCdIzQKHq5ZpH3YWnh0S-9Q	2022-01-16 19:23:33.133095+00
2qgx8r5tha8w5dcvgb97nmccunu5aqit	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4SeP:nKmo1CgxQXVSQegHJpoBkKqZhAqe0jUJR_R2QgWci6c	2022-01-17 19:05:45.886471+00
3fhj91rh0eli9a3mympanjv6sbiqad25	.eJxVjEsOAiEQBe_C2hBo-YhL956BdDcgowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jlMRZaCMOvyMhP3LbSLpju3XJvS3zRHJT5E6HvPaUn5fd_TuoOOq3tgq0CqF4xKACJAZS5mSdy2DRQ0ZfFBimo3fGF_CJiZIiZp0JjdXi_QHvcDge:1n4Puw:TWynQb-b_XF_Qpbf9RncV_t9HfYkZoVvoSl5OyHT1A4	2022-01-17 16:10:38.915047+00
rz5w93y3qdsjupoz45qszk7cskme2zsi	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4df7:Az_z6w5A0aWWrQ6pH6na18jK_csN_QMWlNAbdiF1Gsg	2022-01-18 06:51:13.71622+00
tw665l3mfcx6r8moy7srpmg9ik4pjo5s	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4XBM:162bCSnFk6vjNxvtNiFhEGASzP6GfEM5Q-2pvzWdezI	2022-01-17 23:56:04.353988+00
kd1fobbi3kn7u1gg90tvex8okdmem1a4	.eJxVjEEOwiAQRe_C2pABQcCl-56BzAwgVUOT0q6Md7dNutDtf-_9t4i4LjWuPc9xTOIqzkacfkdCfua2k_TAdp8kT22ZR5K7Ig_a5TCl_Lod7t9BxV632jiLCECgrNYKLCSntXOQkTyrYoNizlR8AkNsChmrAoSLYb2V2bP4fAHqbTeM:1n7hr6:tFjNKTGYE-oVSt5bSsFzp2p8_4QOciNsspG_HPW7jPI	2022-01-26 17:56:16.275847+00
itwto8ik9leh9wy0hgr7hyxkmk2asymq	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4f4k:LuQP_DyMURypooOnoVvI8nqkIeQC5KNhbJpnwvIsLUM	2022-01-18 08:21:46.128507+00
iz5jbateq0eivigsmfnnft2lbm6vhjdo	.eJxVjEEOwiAQRe_C2hAGSBlcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWRovT75giPXLbCd9ju3VJva3LnOSuyIMOee2cn5fD_TuocdRvrZPyRAkKsooFpoLZoXFg2aLXOWJR4NAp8M4Ck9GetZ9QMyChAiPeHwCxNyQ:1n4gT6:lzZOziD1DYFiNw6xXZUfl7Tzu7sMVJTMvTeNpm3MDLc	2022-01-18 09:51:00.103934+00
vvk6t6z59g30lkupyczkucr5mb2m8rs3	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3vEE:1A4S3TwU2GstXmByR60z-bS6RGiYFMVubO1i0lZQbio	2022-01-16 07:24:30.058141+00
0tk1mednsf95lqzpdh75b906xted6kxn	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n46SH:GR6Yl4ozaS-mtQeh0jO4j1BWcEm3zg1EKcSewBrpRDs	2022-01-16 19:23:45.08657+00
rc6u8axwsj2re5wwne3jcuf4f3feuszy	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4Sgj:paaZCaPP0sby7LFZodnluyjM_sd0mpkv6iaS7UPyXrw	2022-01-17 19:08:09.198587+00
1f2ay3nhmteo7hbhykuggqtddbbjhu68	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4Q9E:gTndBoxwn4K0LG8q3EFmvn6oVjGGZKblA4ViJWrd-a4	2022-01-17 16:25:24.953776+00
9qj8kb2xemnjx5pzngv6fvcr3eekg5bp	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4dgq:0beoB5JHMQrGe1tIXHjPbzhnTYmY5AX-WwaYHOQWSfY	2022-01-18 06:53:00.903678+00
7bpl9dlwkb2qcfntm82t4ta64jovdexf	.eJxVjEEOwiAQRe_C2pABQcCl-56BzAwgVUOT0q6Md7dNutDtf-_9t4i4LjWuPc9xTOIqzkacfkdCfua2k_TAdp8kT22ZR5K7Ig_a5TCl_Lod7t9BxV632jiLCECgrNYKLCSntXOQkTyrYoNizlR8AkNsChmrAoSLYb2V2bP4fAHqbTeM:1n4UNN:uJDRCnXjBEpI8KUauRc9LBAiuuL7l5NRl1gkBIvVhwg	2022-01-17 20:56:17.288632+00
9e09rpq5apvyrhsdspkbv5ecckxvm5i3	.eJxVjDsOwjAQBe_iGln-rYMp6XMGa73r4ACypTipEHeHSCmgfTPzXiLitpa49bzEmcVFWC9Ov2NCeuS6E75jvTVJra7LnOSuyIN2OTbOz-vh_h0U7OVbk1VnwJCtVYm0TyHkTMk7ZD85tACTQQJAhd4BDwMREBmnlHFas9fi_QEZ2Tgc:1n7hvQ:6cak_hOoPX04d0fy3G-ABvZ3qiDSLnfjrjn1xxNUsA8	2022-01-26 18:00:44.594298+00
qbomxpdusa0rcconn0mo701u5twodvw6	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4f69:Qx4u5OSKuD5YusrDiCcbjylWwEpsJWlO9f3YpLOQH3w	2022-01-18 08:23:13.040446+00
gneoc81m47zl9n3yw8hmo4b9a0xbmsr2	.eJxVjDEOwjAMRe-SGUUJobbLyM4ZIjtxSAG1UtNOiLtDpQ6w_vfef5nI61Lj2nSOQzZnE4I5_I7C6aHjRvKdx9tk0zQu8yB2U-xOm71OWZ-X3f07qNzqt3YnQXKQUBSxp2PwDqh4BlZ0lEoGJ9InwgAQlFQLOU1dByLQo2fz_gD2oTfx:1n4gVg:92tjQroKzoZ8sgXNmhcbrqxGg8oIHLjYO0vGIgIedG8	2022-01-18 09:53:40.922209+00
9b3dyg7p4xkc915gvhc7zhqpsoyw86xy	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3vFr:q2mpqiOB3SqNBDLtAM0MdWdC-iNkJJ_4pFn_VyxF4pE	2022-01-16 07:26:11.40259+00
94na9b9zjzzlc9j1ziz8j1vxfdtjw59x	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46Sl:UQ7zUODN3HQrWKS25TlS_7uQizvYsJVHiUonOCzkZ4s	2022-01-16 19:24:15.856772+00
lsgcg3r0avx87pf4vc1l18kd4jps1na3	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4Srr:HP-G_UMcmojcWppLjyZTc8ntDwMRRL4IQ1P1K9b4Bec	2022-01-17 19:19:39.134737+00
bqi2lgzjgnzp47l7x75edkfwzibkbns3	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4QDk:e_b4AG3YpF44xsL2J2jo6vpFFV46UQoolZyyvMb4uMY	2022-01-17 16:30:04.112611+00
3oom942tds7bjx1uwpe4mn6b29nb3wne	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4dkt:oBPbNTI3MYEs_u3_-YCny2kurKcWWWURI_Ku86m3KQg	2022-01-18 06:57:11.795364+00
x1icdhs81cb5d8ss9bma9hf22v0et79b	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4USK:2Hy6DiiLeg3UB75R_uhcIE1KW0QSpD_p6jJ4jAei0K4	2022-01-17 21:01:24.274084+00
vkxnhixhxufun63fcvsznqobgwhlmvwf	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4f6I:8uDGnUa13SUkHUrktazd1l0tx16QT2ElUD0lQZZPwvI	2022-01-18 08:23:22.017864+00
6of6sjoljf6ze4wee9gkp0zhlps1a98t	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4gWg:Yw__f61UzvhhEca1NKc03XTuzHNGAXHR1oFdIRFxcGI	2022-01-18 09:54:42.698729+00
4b4jc2dwiqyg4kboz36yxkkphmk5h9vi	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3vOF:jfaX8Z7i4djIHqCB7pcgFMB4VqAVBlw85W_ZNZTaSmU	2022-01-16 07:34:51.587469+00
tn1l42cf3ehuvc7j57e4k5g1uga3lpsm	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n46Zj:zMZG63fJcF35WCE4xWJzrE-3RUpyFGlkSuUap68W3zc	2022-01-16 19:31:27.397425+00
41lngzs4qoqn5j9zwntc7zxvj5stux8a	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4SsR:Je_uDQ5JHDefT3rGqB_go0KJyIw9jaNErNjyn-0__jA	2022-01-17 19:20:15.55211+00
bgnb352zt53whyjo684kdfesn1qts7wv	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4QDm:jKRygH_v54br4lzWVrnTC72WEFI5JVznj7EPvE3iZNE	2022-01-17 16:30:06.49004+00
l602zyscnsepg92swnyur8dp4bixxhb9	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4e9u:pzW7iybqlARBn818Lmzf1hfd7BG2Ow8akQrJ5DcmdMk	2022-01-18 07:23:02.380923+00
7mrtbp25jzpushaolaphio9cx2fat03y	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4Ubh:AOt4wAtpCKgji5V79OJWUzRAvlWUDvEc2gCN8WqSo9U	2022-01-17 21:11:05.583131+00
cv6cq47c9lhqz4unqt24egiphkw8mf1t	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4f6U:fA-HsYW97yL6ryDpD2jf7gFwAq_l3dx6hRsn1E2Ry8Q	2022-01-18 08:23:34.215852+00
68l2wl717cftwupcu43h3wwsjya7k7vf	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4gWt:nMjfMVV0sCY9DsF2llX9f4E1_2pNEedBdm50jVdlkEQ	2022-01-18 09:54:55.727172+00
kp3v4tdayn4bbssl4gsz9vax9ms7yuxv	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3vXl:pNcTjOrYUTC-IbqDKTu35SkvAhv7bo-lAoQ6bINZRts	2022-01-16 07:44:41.569193+00
svhxuhes3zd9o1t584i0gsw9w3atzcev	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n46bX:HcDYhk2ctnCXcYO_B9tN_5WJqtLn19iOr92OEhs__qg	2022-01-16 19:33:19.324589+00
qyne4ivkt9xbtjjrh5iw22sx6rghip68	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4SuH:BzvpthXmIwwP765lIOo29ExtTAfnIiGDbaqi9Y4ZG5s	2022-01-17 19:22:09.012913+00
fh5kzqg3z3zmiw26j6w0glwv52tg5jv6	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4QFH:kW3ZncXsue6RfTxp2BnLeqQzCdSLHosfMwO-dp_ey2Y	2022-01-17 16:31:39.736949+00
cly6v2pug5v3842wdiipmryc5x3vl4wc	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eCN:gCtW3729gcQUWu_-CwmeLLLkvM2XtfVeI3hekS8u8rY	2022-01-18 07:25:35.692761+00
dqkzcwl9msl4su82pyizp1u0bfwcvy0k	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4Uga:9kKIyoQyd2hdHjZbHJGu7SaBxXbaf7fhuyYBPWZZRcY	2022-01-17 21:16:08.01162+00
uln6zc3242orsg4hvd090nzwbfir4u4v	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4f6j:kwBXuq16TNWJatBDi4qtBEZVDwgbH_qIC3PQYJ1Mmbo	2022-01-18 08:23:49.861272+00
n8ifm6an6vesh3qpqjdhw9nclag2lmdx	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4gb4:yFVcgKfJ103Ij9lq4DHApbTFcEnnkMQXrdtRaw_mvcE	2022-01-18 09:59:14.881373+00
tx3kmeochakh2eybvts1be489mzpqcel	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n3vYS:kuZ54MArm0DyBZdzJ2WVmarKE2BoRfZc-uJW96TOSN8	2022-01-16 07:45:24.756673+00
6jarv7yeffxvucwi3ppznvbheu5m1g4r	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n46lH:_sovZuaygiBOiMD5d6YN24FtdregQSPzfugGWDHROsA	2022-01-16 19:43:23.099441+00
tjb5c5mihdyux7o5p79ec9hhhkxn6tsm	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4SwJ:f9AqRopR1o5DN7ZPbvG3G4PdBTs2wLoKTr8_vVHclHk	2022-01-17 19:24:15.029777+00
avf3fdjuwt27q977e2pnjjr7nnukgnfy	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4QHl:2nInmRzbFyZv_Yd0VVEHVBSsR5bSk8M2QaRBAi9hXbE	2022-01-17 16:34:13.241117+00
6ml9s5k70urqofynr06z13e9r8jkhask	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eCk:6voJzxkqxkJaiJusrgDtf1q2LWMaAMaOZudIxGoXaqM	2022-01-18 07:25:58.202245+00
lwey4qvga3lf3mr84g6d26va31p8u6w2	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4Uhf:wDzIif2p6nzPfXdIHydDN1kAg16AOwccGQ0iNdpHspE	2022-01-17 21:17:15.79182+00
3qt4avfy4zyu4f78x5qz2idwkqirrio6	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4f7G:qDPe9csVzJ-IQwQz78Jzz2lPPmbijF1Rv0CCRFHQ-cA	2022-01-18 08:24:22.473307+00
tpcsq75ptujna9f0d3b3xukh0ei3alx6	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4gl6:g5V2j3oxk4u-WN9NJ3fGnfisDrRlThbiM1GwX8eHsTs	2022-01-18 10:09:36.813829+00
idltc1a57t4mqkyflrk7xh9ftycdfm2f	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3z9G:PhZQDYWEdoTMQzofnsEm2ZDZ1kN1QtwJoV81BIWWNtE	2022-01-16 11:35:38.546921+00
hyq0pq7wkd92qqxchwx8hmkks86h2q0n	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n46mA:-DwfovKpvQXX4WwnFru-10-dT2gwl1D8i_oi0SEbqdw	2022-01-16 19:44:18.500088+00
5xkdkxfb0ji0g7q236vg2aon5pmiiko7	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4Sxt:lgMNu0UNgT-x2BXlwd14nEadwoHtmuLN3CBb7QclOgM	2022-01-17 19:25:53.05601+00
arf3lr3qt47tiewffgzwo5dbsbu43uo7	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4QLa:Qpwkh84N0ve3E_4Zg45Kx5IOosLEzU6metCA0Yj9eVs	2022-01-17 16:38:10.964366+00
ekzkjso14t6zi7jjl3zk1w6k9t8bwg6u	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eEj:Lq6bdkHm1Pvz9i30arNbNV8Nb-oinjSC8y3fCh5wKak	2022-01-18 07:28:01.812773+00
tfg90rmfcolil761i9oshmx8trhd02ee	.eJxVjEEOwiAQRe_C2pABQcCl-56BzAwgVUOT0q6Md7dNutDtf-_9t4i4LjWuPc9xTOIqzkacfkdCfua2k_TAdp8kT22ZR5K7Ig_a5TCl_Lod7t9BxV632jiLCECgrNYKLCSntXOQkTyrYoNizlR8AkNsChmrAoSLYb2V2bP4fAHqbTeM:1n4Ukw:bSSzZhpCwvj21BDEKYCrwawkeBVqY-GXDdUtuLdQ3Xk	2022-01-17 21:20:38.235584+00
qy7rawcjh2t5qsucf595iar8j3e0d310	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4f7d:lyX8-eGbIqFSTRIZT0tsXsX4U4383GnDA31UP_kWsfs	2022-01-18 08:24:45.01306+00
pyq8tvo61fi9ylat1jdywzro9s47qqut	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4h1K:EHNCHoM6VZQDu6OHs7SWj_wH7pBMSGTW8WB6yaOrw2c	2022-01-18 10:26:22.467928+00
222scmlh47e8vs17ma0yslo9sespqi2d	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3zDk:kyCpaVou0kKxfujJlJXhsBvs-q3IQiluE9FWJcA03hQ	2022-01-16 11:40:16.102237+00
44v3pndk4up6kwiaqk27n6o8t3pfk7co	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n46nu:BHg1zcQS4rGq4DuYIsLezxlUlkr_UUnZZqjE4E6GX0Q	2022-01-16 19:46:06.670336+00
2r8e8spqq7shw9qu0lyg8hk17egnz6bl	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eIj:dqgKH8ocP2OKkedjx03jDmV3NnVZ3TRyBCDYa_ek8h0	2022-01-18 07:32:09.742391+00
3dr29onyqgedqahq7h9vc6dr0iw17x9j	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4QQK:p9nG2P7XGV4BywpOgm-U4bJHXRw4zbtcEMJiRp4KXJQ	2022-01-17 16:43:04.658873+00
77wpis0q028x8x1xuu75jarm5e44ht95	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4V4L:tNO1rFHXWT3hgmm3WS_t6Qg1Nus6GjNSQ4NSP7MKuhs	2022-01-17 21:40:41.657982+00
fw0m6jwg4bajk4phwb8wem4xm59jff97	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4f7o:mXjmVKMirEb7Q3mTP1YR949ONnOQhrS0NaysG6MRymE	2022-01-18 08:24:56.526394+00
w1fri12m36r7ks594bpixooo0s5k2kgm	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4h8a:KMNXey5Z8VOlLLk2NlXICe1IAJdZG2Z3X4cqSjAy53Q	2022-01-18 10:33:52.708998+00
z8lzeq4nrcvq887cgyj3r9u8zajcqsfk	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3zES:vnVhm5QELFTjlwEYh4_TIyL4IQXJEwZ3dnVXY6vpA0U	2022-01-16 11:41:00.433123+00
yqrbzb0q51bz5f0z7tvm24ot4g8fgdia	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n46ou:lWxTVmSBcyDUy8DxWIpr2B4pkYrG6t-RjdGK5zN1NAw	2022-01-16 19:47:08.41331+00
d3ao95th711e6xdwizsm62mbmiiez55w	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4T2k:hg83ftt33eVsKukhRSoExh2mQFnRQsE8aNac_W5iGxA	2022-01-17 19:30:54.717214+00
bqjtumrp6hdtaybe77kqmugatgi5obcr	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4QUc:-H0VwIKy9A0oF8jAKsJKXOGmZ73qYaDhUKXRyA-Z7cw	2022-01-17 16:47:30.684461+00
09lhp2awkdelueqry336n8mp71melorm	.eJxVjEsOAiEQBe_C2hBo-YhL956BdDcgowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jlMRZaCMOvyMhP3LbSLpju3XJvS3zRHJT5E6HvPaUn5fd_TuoOOq3tgq0CqF4xKACJAZS5mSdy2DRQ0ZfFBimo3fGF_CJiZIiZp0JjdXi_QHvcDge:1n4eIl:1K9YPGS_aYuA2S5sdtmmcXSSzOtqep2NZFQaMzQYaYk	2022-01-18 07:32:11.981703+00
l96bi9oadw6xcba7gl4cb6en0p12jj4l	.eJxVjEEOwiAQRe_C2pABQcCl-56BzAwgVUOT0q6Md7dNutDtf-_9t4i4LjWuPc9xTOIqzkacfkdCfua2k_TAdp8kT22ZR5K7Ig_a5TCl_Lod7t9BxV632jiLCECgrNYKLCSntXOQkTyrYoNizlR8AkNsChmrAoSLYb2V2bP4fAHqbTeM:1n4VKr:NfyqYWWrnt9QEtLDH3xbxYOQ8lPFQkuJcrKGviKyJBY	2022-01-17 21:57:45.548665+00
zv8huzmdq4khbegjj9erwqvmni5m7rc8	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4f8I:BLJrGjaOfDPvnOrXOfP-kVt05_kQqvUQSreLVCphL78	2022-01-18 08:25:26.157991+00
so31rc0d7jk6060rc82ax8ldy48llets	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4hAt:Uf2WekztQuhYT-QaI7W6kIbWGB1npOTd3Qp0WjRu38Y	2022-01-18 10:36:15.838931+00
39w3go2e0fgpd6onhix43i69td6pj55s	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3zK0:rvb4_x3V23iF7oiafHeXIWo0FRI8-avVxW3kDNM973U	2022-01-16 11:46:44.123231+00
nel3ws1ctwy902y7gkbcg39li2g7rbn7	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n46pu:sup_5cWdLLa3W02icAySkzFEVXX5764K2KI9Em7AaMQ	2022-01-16 19:48:10.404256+00
rz1spk2pk26px1oyjr2t8famo68taai5	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4T5F:DdsUpn9quSM7dFLapgawZfCKjr3t6kZNoz6wRjHx05w	2022-01-17 19:33:29.49835+00
wxnvndwub68efia4hbwk14gy9hq91fb1	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4QZs:_ws1gSFgmEBWhqfjb5GwxODizYwsAbRwV0-DJ2lB3E0	2022-01-17 16:52:56.955777+00
np17pgx253oszqgh722mzw6pmevmq9lg	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eMS:wZyOB_ztiX7m3SOHCzo6m_1I5vt3_CIqAexkHRFQHxg	2022-01-18 07:36:00.989882+00
d3dwpt0vp39lh9cmi7rr4ncde22ckipz	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4VUL:8xUiAYc1-F6ZQH_DGIrxAkGdRB_haP7TAGyZQc0jHDs	2022-01-17 22:07:33.448424+00
9rrfwxa1asypzyng5r0h0z3v4bt420nl	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4fAa:Nvn72RfHRaIzJLKwVfIZ1cjwmHghbcboCKwfyVl9xVY	2022-01-18 08:27:48.654112+00
ur406jwd9sxbbstugkvutai8dkqr1w4k	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4hCE:OsQd28HMr7eSVvysGYT7ivQC-m8A3fjQ-G7k_vEph1E	2022-01-18 10:37:38.59059+00
crbloirjmlc6ku1gjm0sgg1vzlewksef	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3zKI:fWsvSYjBsE0PNuDF8O44YesWoRjK1CX1tzL-pY5p7gY	2022-01-16 11:47:02.687885+00
ssy8oadqqwrgsyfps4jw9doq8ytcxk8q	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4IDq:Eyy8yzO6jJJtMtC8kPcCSJG_Cin_FE2mNVg6woxgsYw	2022-01-17 07:57:38.888905+00
zb8x1aakph8ur1ctc6hwjeol60dxwu62	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eO7:YN0Kj8AfkNr5UAhas8Ycg-vbOnXfsTo_dsTnxKS0ZNA	2022-01-18 07:37:43.132594+00
80jn79amknfoiftvccdy47m7lh66iytl	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4Qbq:O1riscNrrXkF-_GKkKUczlX_ahj6Djl03Zy0HzxvNa4	2022-01-17 16:54:58.418671+00
7jwv7zesx09cs39shhztcm4dety3vzmr	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4Vcm:TGxfLkjnmARSGlcNUy2TQusi6PnhHuOIbiebo4g_toI	2022-01-17 22:16:16.740187+00
a1732q1k26f2itozd1kkjwnfbiy92rrr	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4fAu:UcHA21cpq3jwHsbaB1GP1sexMhAfE4ngTRGrqp6dGiI	2022-01-18 08:28:08.479564+00
qhsegsywddipx5egfth4mg4jcjsfjdbb	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4hHT:XpaLqOO99uUhB_BCAIBk28z7pSPSGP4ohrtdll_R_7c	2022-01-18 10:43:03.491041+00
iwaevhbqo85uwtrtozmel9i2wq86ntsc	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3zKo:Jt3YahpQcptPmsabB3IXM1F0VhmrIuKO60IVkikPfCA	2022-01-16 11:47:34.95118+00
o1fgmr06sjhj7yfqycepc7gaahywhw1f	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4KBA:9v1RnkqlYyyobRGWXLdCqeOoA6dratolM12Z13ZT3tw	2022-01-17 10:03:00.631671+00
dzk3udup6b7845rstifjssmzexf22izx	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eRA:VWkSoEEGlZgrgf_Opb1Av-uuLVXi0NcJ9TlGzrhvboE	2022-01-18 07:40:52.736082+00
63fjm9yy6h98c32zddvnn92lugkkxsgu	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4QdM:HYJfqu1GREO2T5QafpW6EpAe41DchLWzNLqWOtOudNQ	2022-01-17 16:56:32.125794+00
3a0xwk29kg0lr8n1m4tsn5ygko60n10c	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4VeJ:q-vwwtWqUWHDKMmUcXIA3naycrEP06OwKk65HLP-J6U	2022-01-17 22:17:51.006335+00
19l9xtoh41x9sxn9zxe4t395yw8hgit5	.eJxVjDEOwjAMRe-SGUUJobbLyM4ZIjtxSAG1UtNOiLtDpQ6w_vfef5nI61Lj2nSOQzZnE4I5_I7C6aHjRvKdx9tk0zQu8yB2U-xOm71OWZ-X3f07qNzqt3YnQXKQUBSxp2PwDqh4BlZ0lEoGJ9InwgAQlFQLOU1dByLQo2fz_gD2oTfx:1n4fBG:hXeV5av8thMglqROVrSfrrpa8iZTAuFdeLTiIgvy6Gc	2022-01-18 08:28:30.397094+00
dy0qqixa3m4rs4wlm2by5tx0h60wqjcd	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4hmP:Gp5mo1Ia1mJuemwNGs3RrgUTR9MhHu7JVtZvSwrvwg4	2022-01-18 11:15:01.492041+00
osdqr1zvucsp0cdm52lq2d4am9m2ln3m	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3zN1:NosMVUjPM-l1ssYVDWAvH0BCcuPmxQwAdRWqpUZeIrk	2022-01-16 11:49:51.247781+00
fw0886eaf93ckqpoc6mbm441se8v45oi	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4KC0:TUh5bQayRfJqQD8NMBkp-U09XqfyfA7JAVYAeeBSFZ4	2022-01-17 10:03:52.747294+00
84j708vd8g9wz7ikvt7uitejz0p3wjfl	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4TAX:kgny9cPqG9kYUWWZH4zJvhMXEUQzNAkHApNYosEaGtg	2022-01-17 19:38:57.754099+00
c0acdz2hc8jmvxyjvae4tc9e92aco8f2	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4QgU:RMM6Ni0MOc8DaGFJCWEzTkzQFjfA_h920CGe5SDkNXw	2022-01-17 16:59:46.164644+00
tmmyuc8bvpv0pid055ig60sgqhs3wp6k	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eTS:Y2HbbWYF1PTHS2_GFVlpkVVyFZts3xc1wGImP3ggDkg	2022-01-18 07:43:14.905214+00
gkub5eg36r0znyv37qctsw3h6aal7o5x	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4Vf5:JE2Yj68ZH8wMWAUjSF2xzvEFi04rxeKOF32eIsDLuR8	2022-01-17 22:18:39.935704+00
tl8bup6u3yc3ottsp13fh1tekdekexpa	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4fBG:-rwMG2x-F4D17hs0u8TG_aYhTZBX_LGYOO6SnA3r-Zs	2022-01-18 08:28:30.507136+00
zgz3ma026zeh9z1xljakyjnanf57vvbr	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n5C7v:XwL5_W5onUPk3ibNNdlEEDHwjEAzFzHds3qV-pjIGRA	2022-01-19 19:39:15.406533+00
2rukj4wnw3lfprbjwtwbm0uzfhyj4q0p	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3zfN:sKqIDGbxaKXqsyGgoyGk1do6cEiOFKzoH0VvKkFmogg	2022-01-16 12:08:49.603039+00
o3u833wz4ajetzjg0o2zq2jwvd9wiw0c	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4Qim:duqZUGQf-Zvy0qhftX4uDgiGMO2m2lgPmtoS0DXTFAk	2022-01-17 17:02:08.314536+00
mtln3jm2a03naxefquoa35u1u0ads00p	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4TD0:FEs88XKS3J6hISWeAoQ1mIKGjL8uTIlIS3eE-TZHTg4	2022-01-17 19:41:30.430754+00
s9urcisnmxv3482q1xqskhjruyiss204	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eTp:vvej7XVA65yN34xj6AjJbnvqjA9VOpxJbQtmRbJIckM	2022-01-18 07:43:37.208182+00
cljnl3sdolb8f4jiwpt9dlkpy5zpslbi	.eJxVjEEOwiAQRe_C2pABQcCl-56BzAwgVUOT0q6Md7dNutDtf-_9t4i4LjWuPc9xTOIqzkacfkdCfua2k_TAdp8kT22ZR5K7Ig_a5TCl_Lod7t9BxV632jiLCECgrNYKLCSntXOQkTyrYoNizlR8AkNsChmrAoSLYb2V2bP4fAHqbTeM:1n4Vf6:3oX9fzgrGvDJeg1o4hNFg7wAnnI2WNCndwKxXcQ5wNY	2022-01-17 22:18:40.45315+00
epz8nfaapfkwk840x5v8iyrlnfkosa0j	.eJxVjEEOwiAQRe_C2hAGSBlcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWRovT75giPXLbCd9ju3VJva3LnOSuyIMOee2cn5fD_TuocdRvrZPyRAkKsooFpoLZoXFg2aLXOWJR4NAp8M4Ck9GetZ9QMyChAiPeHwCxNyQ:1n4fDE:mw6el6eJP3UEo3eNj0fcgKfCgBr4DUt4RzHOAffu514	2022-01-18 08:30:32.280212+00
wxijhxia83kr2cg4z9ki52z3jlq392f4	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n5CA4:VflPqNuK-l_TRFNqeFJqKhNmd8mDRMymYScgdsioBwU	2022-01-19 19:41:28.54706+00
xk35lnuqycwtipyosmvidy7bstnkout5	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3zfc:zJiFcKotUlDuS55behK0Kn9AkH6N5dk2NR0jTzIDUfk	2022-01-16 12:09:04.591115+00
dxi7siwyx1ob6zkr1d7r7k3pgfyvrpq5	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4QkQ:V--apsBiHwF-VB0il2NICEUufEItGr4Ec7p6rqyKQiM	2022-01-17 17:03:50.653222+00
ox9752psfwg3p8nolyc9l88b5d6wehxr	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4TEH:swh967f_E4KcNFsWWAy-06AttQv-1e2psCyDhvRO3Cg	2022-01-17 19:42:49.299237+00
huv1m7uh7npgd34i7630lr4d5jhy2oul	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eVb:ehW5Oo3rWpr-P-GiY0Xvplb6N-6115NTatLiz6cVVL4	2022-01-18 07:45:27.27718+00
hqsjycsxjhv5vgzb0wzeh3s47l53fk0l	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4Vfi:E7uo63fQcwzlqj7pXMX_QAPDKDhimL3GgqKk6VADQts	2022-01-17 22:19:18.5765+00
fo04eg17xrqr1ncuhhxtq44anaihkmwr	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4fF2:vRjQApkBw-eWn9WfTu4ylox0VUGmBXv_fh5Ieh9ZSDc	2022-01-18 08:32:24.018637+00
8aduc0ed6b9e84dm90gynjwoonlnxa84	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n5CDA:NyEF5FogCeQmRRO8Fy8Kfeh9dHp8Rm4C6GE8TS6-KzA	2022-01-19 19:44:40.681104+00
k63nrqa9mgig9ejjt6cxn5d072czzvm7	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4Qkq:MseD_Be--vJkg-Rt7wCgI77cd2UiE7wlJEuFMJSyCNU	2022-01-17 17:04:16.712616+00
24nlro345xpcalvb6086jutqeazs2c6t	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4TEn:TrrYmADcoOvdtvho9-TUl3NWUNVQ14wJo7T4sODVCuY	2022-01-17 19:43:21.720346+00
o4cyvs9ccvz9tevva3r7tglitfyntvtw	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eX6:vAxMowq9tAGKajVZDv1CzVhz6pZGDzdpCDDPLq3cr78	2022-01-18 07:47:00.915847+00
vnry9hcri7562ohbee87dqa5myy9k6ug	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4VgR:kOYVob5eyUKBVgV-6IC2VEJ_WJwJWfNfMpqfjgJLRXQ	2022-01-17 22:20:03.458618+00
a9zaunzsa0vpxs5xuq20onlzp2dp4l0d	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4fF9:5v5z77dCKUfBlSH_F1_-lSUz394V5egsTp2OIUYmNUc	2022-01-18 08:32:31.203843+00
2hwe9pfnpjp3l7hjh547j0cb8fbs8zcr	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n5CFs:aIyiTU0gvLl0U9HkMIwCHQfLOUhJCii6pXolEjar4fI	2022-01-19 19:47:28.382622+00
s76h7psar9bhax7gf09z4u7hj8r1daj6	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4QmM:tWI_706z798QB_sAbdPdHmnFsp90ac-F5DD-_lvAVdc	2022-01-17 17:05:50.746224+00
hq91c48pd5wrhu02phwfniryvcq964i7	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4TIV:vTF0QBW9KIAcdMLE_gV-d10TxGZVazRgq9QVzq-wb-A	2022-01-17 19:47:11.886203+00
y0oqekbe7cit7oi4emj12exdij4n9jex	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eYv:8bh25lP290wyfidvh40Ow_XCiTG7N3adYWG_8jiabGo	2022-01-18 07:48:53.285094+00
ioo9p4ynnrdzh55wy4774q7nlmn3tce8	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4Vh7:GmRdj14FUb-pave-lteKI1CcvMi21NE8gfDfRYEX5Nc	2022-01-17 22:20:45.624139+00
1e6ubo0ro8r5aounnok53fx5ofmwgzku	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4fPw:EgytTVc0rnGEMnygti6DGcbLvucX-WuipVjSgA-W7Mc	2022-01-18 08:43:40.583102+00
c0xm7ot7gt21fzysb4r0khvwxz3rf8l0	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n5V4P:NZ_eh-YOpWGSnnKN-rlM0iXWc32xuWpuP-uXM_I2iMI	2022-01-20 15:52:53.266257+00
lu2cluu2qxwlr27hm5fic00efnr0wm2z	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n3znS:e6h7WZeDPHdfJyM48Be6qN_ZXG0IPD9IFFCn6qbU3zQ	2022-01-16 12:17:10.487014+00
2zyioy0p420l2i7qzps4ik5yorcm9z4i	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4eaB:Gwz_JRQgyIlzQIMUIsaf2f09YYuHxmPpEZ8GdfBE5zE	2022-01-18 07:50:11.87628+00
jrb02c6uuydm81jako8621yjm3wrtuwb	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4Vl2:cinmlf4Zvl3025HfBAdoZ2iiGyXw5BMtciZkLGnop-I	2022-01-17 22:24:48.084419+00
p0a04hi6ixdxt9tkkzldd9fb9n00bzec	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4fQP:iOqSKXwCV6VOYUe-heY0OTqUQGNKQUsV2mX8b216a4Q	2022-01-18 08:44:09.124927+00
guyr3zjr61t2tna997na1f2suo2to17a	.eJxVjDEOwjAMRe-SGUUJobbLyM4ZIjtxSAG1UtNOiLtDpQ6w_vfef5nI61Lj2nSOQzZnE4I5_I7C6aHjRvKdx9tk0zQu8yB2U-xOm71OWZ-X3f07qNzqt3YnQXKQUBSxp2PwDqh4BlZ0lEoGJ9InwgAQlFQLOU1dByLQo2fz_gD2oTfx:1n5agz:WAWDGVHeF5_ix5XPv7sn-S9GOr303VT9F3cODjoLuYY	2022-01-20 21:53:05.596209+00
ixdnduprfgs5r8q37a7lruju9y3os57j	.eJxVjEEOwiAQRe_C2hCgpWVcuvcMZGYYpWogKe3KeHfbpAvd_vfef6uI65Lj2mSOU1JnZa06_Y6E_JSyk_TAcq-aa1nmifSu6IM2fa1JXpfD_TvI2PJWB4B-pM6OCdmQmA48efEDp3AbkCwF7MAyCTgEds4ZccEn64RwM3v1-QIN9jhZ:1n3zpv:xZ_SvAz-I1kmIEM8EV5MjwdiZNcgQ36_h5XvqeBs12A	2022-01-16 12:19:43.620264+00
2ik8psj9plcikt8ejb650k104zekz9so	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4QsO:3yMPFjInsOL7as6AnJokSbmQPknAwKIJxTvQaTRegIY	2022-01-17 17:12:04.945726+00
oce0lok7em2h1qbad3wpg3847wzgp78j	.eJxVjDEOwjAMRe-SGUUJobbLyM4ZIjtxSAG1UtNOiLtDpQ6w_vfef5nI61Lj2nSOQzZnE4I5_I7C6aHjRvKdx9tk0zQu8yB2U-xOm71OWZ-X3f07qNzqt3YnQXKQUBSxp2PwDqh4BlZ0lEoGJ9InwgAQlFQLOU1dByLQo2fz_gD2oTfx:1n4TLZ:c8d7PfC12x45K6Addj7KUJFiq9dSlRySK7Q5ZFTezos	2022-01-17 19:50:21.302149+00
71a97a9lu7sj6bu705trqrzp44c9c73u	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4edb:hgdVTClJa4Xrh8l4veJF_pRsF-lzyX_FHtV6x07XhUI	2022-01-18 07:53:43.535654+00
50yqimvjg75lbl1njgqrcvzs7n2oli8d	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4VnG:nRpwL5mkjUyVK63R4MyAvzYoiHELOdgmG2W2syy1xrw	2022-01-17 22:27:06.085756+00
2tgii0z35v6mlmrc68wvkiv1yo8zdisb	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4fSk:2cOfbN8hJeO7J6z9gsIuostctlk63YSKX6sGWgax1Ro	2022-01-18 08:46:34.238576+00
4raihip64u3wvlxge3w18i7btcwf08sm	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n5c6W:LCUW00l4Nv5mm2kepOSAnqsnTfvC34m0tYbH5EeNWhU	2022-01-20 23:23:32.075632+00
ojwr6ht35966ibln5afj8yzn1ko8vrht	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4Qtz:-YS_kciAqf84BA4BtemrjiI19cA3FXNGlz2oeZY0mzE	2022-01-17 17:13:43.429654+00
ncfu9o3jpn5xtqouq9a3dfjv7iqzoa2x	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4TZ2:4KQkJsC-RAs_-sdBDy7DMG85coBNARVhM4-ULZ5Sz30	2022-01-17 20:04:16.819831+00
6upap29otfopd3vkmhbwfb5pe8twu26w	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4eeT:BOKlec1E-NIi8femnf9YA6CXVDP7yaMf2O8QG-Al2w8	2022-01-18 07:54:37.501112+00
pw33ojre3q3u9kmyukwvh45hrwmcw7hj	.eJxVjEEOwiAQRe_C2hAGSBlcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWRovT75giPXLbCd9ju3VJva3LnOSuyIMOee2cn5fD_TuocdRvrZPyRAkKsooFpoLZoXFg2aLXOWJR4NAp8M4Ck9GetZ9QMyChAiPeHwCxNyQ:1n4fbJ:OixLpFjXDjFv9ekw5q9ugfCEOKN8V5-v13sYKOn0oH4	2022-01-18 08:55:25.29675+00
le3f8y4j41xc43hnih1jfdwn3udykh8j	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n5c7K:iFBUcaqz6UDX_QvWp2yz5ROGpo7ttPCN0qaH91bV0LM	2022-01-20 23:24:22.576622+00
u9hgu1ceowwyk7i15q8ckvqtqjc34c5f	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4Qx2:zLlvL8J2Xos_dV0BeshzPJ6oZET8mmnYQfkmeGpd7eQ	2022-01-17 17:16:52.980437+00
6ovuuk1xcs9rihmx49dcrud9bfbh3qwn	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4Tbk:ZS-SVk2lFRmTalBw-zfh8tFB0HErHDBSBYg8P4cOHLY	2022-01-17 20:07:04.188577+00
xiszgd3yvdaexplkk7v56dd2tz6lmmeq	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4eeu:4jLI4nC3FxBUKeQm6DA6cmM8jYPPIGtpFKHOnNhemOY	2022-01-18 07:55:04.252212+00
kauj5591kjox5oaeecn8unw8gqescuej	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4WQJ:t4ps-C4fESwMEXxQfIL50fRXYfFuU0z5n6iB6W_Zwg4	2022-01-17 23:07:27.968588+00
6ag8anr8k35br3vq37hhriay176l59dt	.eJxVjDEOwjAMRe-SGUUJobbLyM4ZIjtxSAG1UtNOiLtDpQ6w_vfef5nI61Lj2nSOQzZnE4I5_I7C6aHjRvKdx9tk0zQu8yB2U-xOm71OWZ-X3f07qNzqt3YnQXKQUBSxp2PwDqh4BlZ0lEoGJ9InwgAQlFQLOU1dByLQo2fz_gD2oTfx:1n4fc8:2SFKIx3WQrLSiITcGXwZ-su-hainITtSQ3nUdx_6Lp0	2022-01-18 08:56:16.314992+00
xvnqm765f4topvv6fjxl4m6f9p4x6iex	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n5cAz:mjCCPRhkL2Bl8MJtTU802PxMSw6Qya-kjmTbYP58yms	2022-01-20 23:28:09.827248+00
hhdtokzdrki4tm8vdfv3w6hd1l8nuup3	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n40wC:8sLZlPMK7DmfspSeciSg8coMkHcXr0LuACPBO8h8n1s	2022-01-16 13:30:16.21415+00
conk23qecu8yqs7ie3wpo5vruw7agra6	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4R3w:T8mcGGiX5CBTP14mpnNceiH-Z8CpyoGWJP_nhphqzxo	2022-01-17 17:24:00.649656+00
dlfki7ztzf9c200p0b4f09wmpqlujomd	.eJxVjEEOwiAQRe_C2hAGSBlcuvcMBGZAqgaS0q6Md9cmXej2v_f-S4S4rTVsIy9hZnEWRovT75giPXLbCd9ju3VJva3LnOSuyIMOee2cn5fD_TuocdRvrZPyRAkKsooFpoLZoXFg2aLXOWJR4NAp8M4Ck9GetZ9QMyChAiPeHwCxNyQ:1n4TcM:n6xvdicnejM6i0aDrlUt-fgz95VToaQFZT2gO1z9aDQ	2022-01-17 20:07:42.081942+00
qfmy9ck35skapkl0mzoa295w2d6uw84d	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4egE:UAG5KqsR30UPVhStdbC7_Gwio6bgVk_pmOQPEtSTctU	2022-01-18 07:56:26.803375+00
sadukb36m1uetayflbnia21kvcn3c63k	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4WQV:FmqXiAYUcjJM1t_BHsy2CW1oNU9SzShog5VdyGHNvjE	2022-01-17 23:07:39.836025+00
qnisuijnva05sp11f137ei9ujkhnvg97	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4ff7:ysSy8lljjdEuRzwc0nlE52EVFCqFz5LCkErxWhtol0c	2022-01-18 08:59:21.189527+00
g52f89jhcqg2yhuutr6oetejdpfcssl6	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n41I5:HadbgdZZKPKdQHb2andZfpZKtB90Sytw5k1JfRLes40	2022-01-16 13:52:53.343766+00
ou36expm6m8ak7eesk39gee8qk7yluz3	.eJxVjEsOAiEQBe_C2hBo-YhL956BdDcgowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jlMRZaCMOvyMhP3LbSLpju3XJvS3zRHJT5E6HvPaUn5fd_TuoOOq3tgq0CqF4xKACJAZS5mSdy2DRQ0ZfFBimo3fGF_CJiZIiZp0JjdXi_QHvcDge:1n4R4n:4g4yoZhh1irz5inB_R7ajE4vKWEDtO9vg1pDmh6P544	2022-01-17 17:24:53.647848+00
h2huwj4nonbp0nnzomzz8uuy35k43ayy	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4TiM:jVX2wjKH222buu8ggb-LUCWN0tus9DWL_oVzSrpEx2g	2022-01-17 20:13:54.626285+00
x9uph4pvy02z4ymqfk902kk8yths1s61	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4egY:sdYr1xVtyOk_VeZoBAKkw2cNK4pL84OxcZgcUrRI0E4	2022-01-18 07:56:46.696296+00
gpejt6cto0n53duljurbtht92teinxnz	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4WSd:OLOBVGoIc7hUDlDAGCxABRGMkEKgjNez2ERbeuAO4r8	2022-01-17 23:09:51.179644+00
b6occb300rcj2tn9x1pgt1yc0b176b2h	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4fid:11pTTxhp8jXOVT3FmZoGBijja2Fw2n3Ho5dMFUXyEFo	2022-01-18 09:02:59.076963+00
ng7bb4557xqlgnyphnumw8383knoy0al	.eJxVjEsOAiEQBe_C2hBo-YhL956BdDcgowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jlMRZaCMOvyMhP3LbSLpju3XJvS3zRHJT5E6HvPaUn5fd_TuoOOq3tgq0CqF4xKACJAZS5mSdy2DRQ0ZfFBimo3fGF_CJiZIiZp0JjdXi_QHvcDge:1n430w:Zg5YqWpRO_iav343hU_1t1SI14zDF1ZMVsG47enlYCI	2022-01-16 15:43:18.879788+00
63cm9wfi1pngvn8ftiwi3jh03azsvc9l	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4R5G:6AKUjhJjTcOfeoOTPYJOnsS31M6R37aJEyEhFRyuYhU	2022-01-17 17:25:22.367371+00
xslowu5rksd1qa6ttawcv49ahyhtof6u	.eJxVjDsOwjAQBe_iGlmx119Kes5grb0bHECOFCcV4u4QKQW0b2beSyTc1pq2zkuaSJwFiNPvlrE8uO2A7thusyxzW5cpy12RB-3yOhM_L4f7d1Cx12-tomMTrFYeQomByFlliuZoHcGgckCADIMvfsTgFLlA2RbrIppRs4_i_QG7ZDcv:1n4Tq1:MsI4Hg2o6QZUwqb68XG5M_7e-_X2iKSBClMqEvSSo7A	2022-01-17 20:21:49.396306+00
t0ugykem6ts4ezuc4tvow52uqzhbgrd1	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4ej9:4VFIAWAnw9Op781TbTyrbAY9IaO-QTQQx7CL9Hzq6Ik	2022-01-18 07:59:27.860511+00
m4sec09dhkpxms3blr8u2ioynigx068q	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4WTe:_IyjPBKR922J3ouPLM-alpnS4NkxzX5bvmwebACVoyI	2022-01-17 23:10:54.026+00
p4c7jrajcbf4afgtf1yvytayvd8rzvd2	.eJxVjEsOAiEQBe_C2hBo-YhL956BdDcgowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jlMRZaCMOvyMhP3LbSLpju3XJvS3zRHJT5E6HvPaUn5fd_TuoOOq3tgq0CqF4xKACJAZS5mSdy2DRQ0ZfFBimo3fGF_CJiZIiZp0JjdXi_QHvcDge:1n43P1:XLXmdR_bLyTHz3A9yGKEe4fur3TnQq-1wqdh2IX3dsk	2022-01-16 16:08:11.701855+00
rntpy8a2vg4rrlfb6hekueuahbd1aa24	.eJxVjEsOAiEQBe_C2hBo-YhL956BdDcgowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jlMRZaCMOvyMhP3LbSLpju3XJvS3zRHJT5E6HvPaUn5fd_TuoOOq3tgq0CqF4xKACJAZS5mSdy2DRQ0ZfFBimo3fGF_CJiZIiZp0JjdXi_QHvcDge:1n44fw:t6Kb4FbXzGD8u_2mk33anxxU3PQl1vUBj0Qzg4QjENg	2022-01-16 17:29:44.26691+00
nvlnxpgawtoc10frtisj5jh6s3o9szid	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4RIF:2YhcXs8rjemRh2AvlU1YSbdMe21MUL_7UYioMTKgu7Q	2022-01-17 17:38:47.272169+00
pd96g7jdosow97a62mp4bdhd0k5va89j	.eJxVjEsOAiEQBe_C2hBo-YhL956BdDcgowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jlMRZaCMOvyMhP3LbSLpju3XJvS3zRHJT5E6HvPaUn5fd_TuoOOq3tgq0CqF4xKACJAZS5mSdy2DRQ0ZfFBimo3fGF_CJiZIiZp0JjdXi_QHvcDge:1n44ls:AL_uDDDlhHdZilHTmz8i2F6idg7SZaVO0Qzumg1ORM4	2022-01-16 17:35:52.532412+00
uhiphgtxmw3u4q9vv2skfqx7dk5j8eh5	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n4TqN:fQ1-31JRXjKiMWS5kEY25MZqx4h8GcKr7yT96jS2y-s	2022-01-17 20:22:11.830379+00
bbjybzt7x44l3o8g1zg69opbv4e51eaz	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n44tk:QGK0WZbmBGq27rgsuksnfHDW_Jz0RrKYDxabjlUKz-E	2022-01-16 17:44:00.593875+00
ux4xa3cb15pn8z7patbg0xdst7w2yxp3	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n4elE:eH--jik7HlZf-ChBPSnhpPBd_v3pGybptcXGUDlqFYs	2022-01-18 08:01:36.169722+00
7qhe1y0j1zhost1dm8ngogubmrwbtw2b	.eJxVjEsOAiEQBe_C2hBo-YhL956BdDcgowaSYWZlvLtOMgvdvqp6LxFxXWpcR57jlMRZaCMOvyMhP3LbSLpju3XJvS3zRHJT5E6HvPaUn5fd_TuoOOq3tgq0CqF4xKACJAZS5mSdy2DRQ0ZfFBimo3fGF_CJiZIiZp0JjdXi_QHvcDge:1n45Gv:0ae4AqvKKrlZhy_6EfepTztkKt13epiFlxpFIDCM_xs	2022-01-16 18:07:57.214637+00
saf6lbzfm9qbzwvycjjseh47e2adteis	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4WU6:NcwEQQ9beSLO6PNzs8WiFeanGhS5WpuwojSNj0xJar4	2022-01-17 23:11:22.198761+00
b9tlef9shikgjbng2q15cs2zcdop7f2a	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n45KP:0dWDUSVXgR_aS8FftUmGe0fhGLrmgZd3nD0CnbgxlcU	2022-01-16 18:11:33.502574+00
o3jy5jc5no71tkbf4rgzax87vt22guqj	.eJxVjDEOwjAMRe-SGUVNcUzCyM4ZKtsxpIASqWknxN1ppQ6wvvf-f5uBljkPS9NpGJM5G28Ov4xJnlo2kR5U7tVKLfM0st0Su9tmrzXp67K3fweZWl7XR0V34uiBgwSOHTsiFo4RomAIfQdIyC44QmRS6FngJsqwEhDx5vMF6dI4Xw:1n45LD:rBtO3bNdyShLZdeP7fWO4jfCEcHvIbyHyiKivPRTezw	2022-01-16 18:12:23.568647+00
s3320jwaksnx6vrrbncjjpptn8taowfq	.eJxVjDsOwyAQRO9CHaG1jQGnTO8zWMvuEpxEIPlTRbl7sOQiqUZ682beasJ9S9O-yjLNrK7KqssvC0hPyUfBD8z3oqnkbZmDPhR9tqseC8vrdrp_BwnXVNfdgBwBOoIhQhNlEA4eSIwlRwZt01YArfTOeCe-Bvee0LFr2QhY9fkC-zs4PQ:1n4fsN:3UMTXXKreVdkwr50qMiH3Y_FPd_dEeDAe572ASO5Ik4	2022-01-18 09:13:03.894326+00
y9hzd1qs2h8j5f65w680iunpvqew5prk	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n45bg:gVPRo4koJFgvffhU2XWt0czRruGxz3igKib5-RVumDA	2022-01-16 18:29:24.4847+00
6ck6vhu7hxtbr0bbbdewqu44uj61tv3c	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n45c9:taQz2uw5UtyhFsti97vETEbXOe0WRzlHXawltRu8TKA	2022-01-16 18:29:53.043567+00
au8tp3vin6vwt6o6ptec6w304pirok8x	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n45ck:wM10pYMb2yxbZVa3hdVdRmqlkZGr4mB22K31uMMFpTM	2022-01-16 18:30:30.555599+00
4qtebj5lqu39xo7vwzy0bpf50q4izhmm	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n45dH:q59FT52-h6ZM90yD9rKJNtX4iFy2b7j8zNeAUUimQrQ	2022-01-16 18:31:03.075341+00
arwsllxv6bd5im72jhau84b6spw9vodh	.eJxVjEEOwiAQRe_C2hAG7Agu3XsGMjBTqRpISrsy3l2bdKHb_977LxVpXUpcu8xxYnVWMKjD75goP6RuhO9Ub03nVpd5SnpT9E67vjaW52V3_w4K9fKtnSAFDPl0DCTiwNrBJxCfvbE0JmSPJnlxlMS50YtFRgC0FsCAsFHvDwjDN8s:1n45gm:D94ZOyAXt83tAGANtBfKYYlrQMOot6hXtnvNsbSomyg	2022-01-16 18:34:40.992776+00
\.


--
-- Data for Name: post_application; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_application (id, status, applicant_type, event_post_id, user_id) FROM stdin;
1	inadeq	player	1	6
2	accepted	player	2	6
3	rejected	player	15	33
108	accepted	player	20	33
109	accepted	player	20	32
111	waiting	player	14	15
117	accepted	player	21	33
110	accepted	player	16	32
112	accepted	player	16	3
116	accepted	player	16	33
115	rejected	player	16	5
119	waiting	player	28	15
118	accepted	player	15	3
121	waiting	player	18	33
27	waiting	player	9	34
122	accepted	spectator	30	33
123	waiting	player	23	34
127	waiting	player	4	34
4	accepted	player	15	34
54	waiting	player	19	34
\.


--
-- Data for Name: post_badge; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_badge (id, name, description, "wikiId") FROM stdin;
1	enthusiastic	the trait of being overly enthusiastic	Q107261265
2	friendly	relationship between people who have mutual affection for each other	Q491
3	leader	someone with the authority to affect the conduct of others; who have the responsibility of leading	Q1251441
4	gifted	intellectual ability significantly higher than average	Q467677
5	loser	one who loses	Q20861252
6	competetive	trait of being competitive	Q107289411
\.


--
-- Data for Name: post_badgeownedbyuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_badgeownedbyuser (id, date_time, "isGivenBySystem", badge_id, owner_id) FROM stdin;
1	2022-01-01 21:09:38.703311+00	f	1	1
2	2022-01-01 21:11:03.436677+00	f	2	1
3	2022-01-03 19:34:46.856099+00	f	3	3
4	2022-01-03 19:38:32.945241+00	f	3	5
5	2022-01-03 22:37:05.506305+00	f	6	1
6	2022-01-03 22:38:47.022211+00	f	3	1
7	2022-01-03 22:39:03.583249+00	f	1	15
8	2022-01-03 22:42:22.457628+00	f	2	6
9	2022-01-03 23:18:42.938575+00	f	6	6
10	2022-01-03 23:18:52.522894+00	f	3	6
11	2022-01-03 23:35:46.056893+00	f	6	34
12	2022-01-04 08:39:04.535668+00	f	2	33
13	2022-01-04 10:38:28.845406+00	f	2	32
14	2022-01-04 10:38:49.806804+00	f	4	33
15	2022-01-09 06:59:12.72589+00	f	6	32
\.


--
-- Data for Name: post_equipmentcomment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_equipmentcomment (id, content, created_date, equipment_post_id, owner_id) FROM stdin;
\.


--
-- Data for Name: post_equipmentcommentactivitystream; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_equipmentcommentactivitystream (id, context, summary, type, actor_id, object_id) FROM stdin;
\.


--
-- Data for Name: post_equipmentpost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_equipmentpost (id, post_name, created_date, description, longitude, latitude, link, active, "pathToEquipmentPostImage", owner_id, sport_category_id) FROM stdin;
1	adidas bileklik	2022-01-01 23:13:40.63126+00	adadasdasdad	12.3450000000000006	34.5677999999999983	https://www.adidas.com.tr/tr	t		3	20
2	Adidas wristband	2022-01-04 03:02:31.549845+00	This wristband looks so cool. You should check it out before it becomes sold out!	\N	\N	https://www.adidas.com.tr/en/tennis-wristband-small/CF6279.html	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_2.jpg	6	20
3	Tupperware	2022-01-06 20:18:57.777694+00	Nice and strong water bottle! Might be good for running.	40.9630569999999992	29.0638889999999996	https://www.hepsiburada.com/tupperware-tupperware-tupperware-eko-sise-750ml-yavruagzi-p-HBV00000KN8TG	t		6	6
4	Surfboard Search Post	2022-01-06 20:24:50.055603+00	Hi everyone. I am looking for a surf board near caddebostan. Do you know any stores or can i buy it online? Please comment	40.9630569999999992	29.0638889999999996		t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_4.jpg	6	694
5	Fanciest Basketball	2022-01-06 20:38:31.929907+00	Guys I have found the fanciest basketball ever! Go get it before it is sold out.	40.9630569999999992	29.0638889999999996	https://www.decathlon.com.tr/p/basketbol-topu-7-numara-grafiti-desenli-r500/_/R-p-306407	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_5.jpg	6	16
6	tenis raketi	2022-01-07 01:29:46.078094+00	adidas tenis raketimi satiyorum	12.3450000000000006	34.5677999999999983	https://www.adidas.com.tr/tr	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_6.jpg	33	20
7	futbol ayakkabisi	2022-01-07 01:40:20.66625+00	az kullanilmis hali sahalar	29.3449999999999989	41.5677999999999983	https://www.adidas.com.tr/tr	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_7.jpg	33	34
8	basketbol topu	2022-01-07 01:42:32.321742+00	basketbol topumu yenileyecegim	27.3449999999999989	41.5677999999999983	https://www.adidas.com.tr/tr	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_8.jpg	33	16
9	futbol topu	2022-01-07 01:43:59.265673+00	biraz eski de olsa iyi bir top	28.3449999999999989	41.5677999999999983		t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_9.jpg	33	34
10	voleybol topu	2022-01-07 01:45:40.194352+00	gayet temiz kullandigim topu satiyorum	28.3449999999999989	41.5677999999999983		t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_10.jpg	33	695
11	bone	2022-01-07 01:46:55.266768+00	turuncu cok tatli bir bone :)	26.3449999999999989	40		t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_11.jpg	33	4
12	Football ball	2022-01-07 02:49:14.732405+00	A nice football ball	22.3449999999999989	54.5677999999999983	https://www.adidas.com.tr/tr/conext-21-pro-top/GK3488.html	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_12.jpg	15	34
13	Basketball ball	2022-01-07 02:51:12.9979+00	A nice basketball ball	32.3449999999999989	64.5678000000000054	https://www.decathlon.co.uk/p/size-7-basketball-nba-authentic/_/R-p-X8659028?mc=8659028&c=BLACK	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_13.jpg	15	16
14	Table tennis racket	2022-01-07 02:52:39.84809+00	I think it is a nice product, you can buy it!	41.0879555790967146	29.0463066101074254	https://www.decathlon.com.tr/p/masa-tenisi-seti-ppr-130-raket-3-top/_/R-p-156533?mc=8352108&c=S%C4%B0YAH	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_14.jpg	15	469
19	sports bag	2022-01-07 20:30:06.143349+00	This bag is very light and everything fits in. I highly recommend	29.0316806516178865	41.0001242493257934	https://www.enderspor.com/urun/speedo-duffel-canta-siyahpembe-8-091908860	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_19.jpg	32	634
20	leggings	2022-01-07 20:33:26.068077+00	This legging is the best one I have ever worn, it is so comfortable. I highly recommend	29.0316806516178865	41.0001242493257934	https://www.enderspor.com/urun/under-armour-hirise-kadin-kapri-tayt-1365335-001	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_20.jpg	32	29
16	swimming goggles	2022-01-07 20:01:02.184742+00	I have been using this for a long time and I really like it. I recommend it everyone who likes swimming	\N	\N	https://www.sportsdirect.com/slazenger-aero-goggles-adults-885029#colcode=88502903	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_16.jpg	32	4
15	basketball ball	2022-01-07 19:55:12.482231+00	this ball looks great you should check it out	\N	\N	https://www.adidas.com.tr/tr/all-court-2.0-basketbol-topu/GL3946.html	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_15.jpg	32	16
17	tennis racket	2022-01-07 20:08:14.236737+00	This racket is on sale I wanted to share	29.0316806516179007	41.0001242493258005	https://www.decathlon.com.tr/p/yetiskin-tenis-raketi-kirmizi-siyah-tr990-power-pro/_/R-p-333219?mc=8646121	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_17.jpg	32	20
18	sport shoes	2022-01-07 20:22:13.694839+00	These shoes are the best while running you should have a look	29.0316806516178865	41.0001242493257934	https://www.enderspor.com/urun/asics-jolt-3-kadin-kosu-ayakkabisi-1012a908-960	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_18.jpg	32	6
21	adidas football ball	2022-01-07 22:23:10.022925+00	this ball is very cheap check it out	\N	\N	https://www.adidas.com.tr/tr/ucl-mini-real-madrid-pyrostorm-top/GU0208.html?pr=product_rr&slot=8&rec=mt	f	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_21.jpg	32	34
22	Colorful Tennis Socks	2022-01-09 09:57:44.232204+00	Hi everybody. I like to wear colorful tennis socks but they are usually sold black or white. I've found this and if you know any other please comment.	40.9630569999999992	29.0638889999999996	https://www.decathlon.com.tr/p/tenis-corabi-kisa-konclu-unisex-3-cift-rs500/_/R-p-2400?mc=8579029	t	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EquipmentPost_22.jpg	6	20
\.


--
-- Data for Name: post_equipmentpostactivtystream; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_equipmentpostactivtystream (id, context, summary, type, actor_id, object_id) FROM stdin;
1	https://www.w3.org/ns/activitystreams	Furkan is creating an equipment post	Create	3	1
2	https://www.w3.org/ns/activitystreams	didem is creating an equipment post	Create	6	2
3	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
4	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
5	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
6	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
7	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
8	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
9	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
10	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
11	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
12	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
13	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
14	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
15	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
16	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
17	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
18	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
19	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	1
20	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
21	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
22	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
23	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
24	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
25	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
26	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
27	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
28	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
29	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
30	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
31	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
32	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
33	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
34	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
35	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
36	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
37	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
38	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
39	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
40	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
41	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
42	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
43	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
44	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	2
45	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
46	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	1
47	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
48	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
49	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
50	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
51	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
52	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
53	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
54	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
55	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	2
56	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
57	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
58	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
59	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
60	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
61	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
62	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
63	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
64	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
65	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
66	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
67	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
68	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
69	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
70	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
71	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
72	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
73	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
74	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
75	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
76	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
77	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
78	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
79	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
80	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
81	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
82	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
83	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
84	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
85	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
86	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
87	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
88	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
89	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
90	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
91	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
92	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
93	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
94	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
95	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
96	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
97	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
98	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
99	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
100	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
101	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
102	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
103	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
104	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
105	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
106	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
107	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
108	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
109	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
110	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
111	https://www.w3.org/ns/activitystreams	Didem is creating an equipment post	Create	6	3
112	https://www.w3.org/ns/activitystreams	Didem is creating an equipment post	Create	6	4
113	https://www.w3.org/ns/activitystreams	Didem is creating an equipment post	Create	6	5
114	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
115	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	4
116	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
117	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
118	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
119	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
120	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
121	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
122	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
123	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
124	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
125	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
126	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
127	https://www.w3.org/ns/activitystreams	Salih is creating an equipment post	Create	33	6
128	https://www.w3.org/ns/activitystreams	Salih is creating an equipment post	Create	33	7
129	https://www.w3.org/ns/activitystreams	Salih is creating an equipment post	Create	33	8
130	https://www.w3.org/ns/activitystreams	Salih is creating an equipment post	Create	33	9
131	https://www.w3.org/ns/activitystreams	Salih is creating an equipment post	Create	33	10
132	https://www.w3.org/ns/activitystreams	Salih is creating an equipment post	Create	33	11
133	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	6
134	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	7
135	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	8
136	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	9
137	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	10
138	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	4
139	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	6
140	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	6
141	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	6
142	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	6
143	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	6
144	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	6
145	https://www.w3.org/ns/activitystreams	Furkan is creating an equipment post	Create	15	12
146	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	6
147	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	6
148	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	12
149	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	12
150	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	12
151	https://www.w3.org/ns/activitystreams	Furkan is creating an equipment post	Create	15	13
152	https://www.w3.org/ns/activitystreams	Furkan is creating an equipment post	Create	15	14
153	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	12
154	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	14
155	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	14
156	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	13
157	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	13
158	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	12
159	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	12
160	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	12
161	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	12
162	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	12
163	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	12
164	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	7
165	https://www.w3.org/ns/activitystreams	Gözde is creating an equipment post	Create	32	15
166	https://www.w3.org/ns/activitystreams	Gözde is creating an equipment post	Create	32	16
167	https://www.w3.org/ns/activitystreams	Gözde is creating an equipment post	Create	32	17
168	https://www.w3.org/ns/activitystreams	Gozde updated an equipment post	Update	32	16
169	https://www.w3.org/ns/activitystreams	Gozde updated an equipment post	Update	32	15
170	https://www.w3.org/ns/activitystreams	Gozde updated an equipment post	Update	32	17
171	https://www.w3.org/ns/activitystreams	Gozde updated an equipment post	Update	32	17
172	https://www.w3.org/ns/activitystreams	Gözde is creating an equipment post	Create	32	18
173	https://www.w3.org/ns/activitystreams	Gözde is creating an equipment post	Create	32	19
174	https://www.w3.org/ns/activitystreams	Gözde is creating an equipment post	Create	32	20
175	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
176	https://www.w3.org/ns/activitystreams	Gözde is creating an equipment post	Create	32	21
177	https://www.w3.org/ns/activitystreams	Gozde updated an equipment post	Update	32	21
178	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
179	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	20
180	https://www.w3.org/ns/activitystreams	Gozde deleted an event post	Delete	32	21
181	https://www.w3.org/ns/activitystreams	Gozde read an event post	View	32	15
182	https://www.w3.org/ns/activitystreams	Gozde read an equipment post	View	32	15
183	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	14
184	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	14
185	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	14
186	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	14
187	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	14
188	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	14
189	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	14
190	https://www.w3.org/ns/activitystreams	Didem is creating an equipment post	Create	6	22
191	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	22
192	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	22
193	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	22
194	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	22
195	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	8
196	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	8
197	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	8
198	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	8
199	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	8
200	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	8
201	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	4
202	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	4
203	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	4
204	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	4
\.


--
-- Data for Name: post_eventcomment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_eventcomment (id, content, created_date, event_post_id, owner_id) FROM stdin;
1	heyhey	2022-01-03 20:48:41.065044+00	2	6
2	jnmnm	2022-01-04 01:53:17.669605+00	7	34
3	deneme	2022-01-04 10:44:37.059662+00	1	15
4	Kimler katilabilir?	2022-01-04 10:57:30.611415+00	1	3
5	I am waiting for a nice challenge!	2022-01-04 11:09:02.589336+00	16	6
6	I am open to bargain!	2022-01-04 11:16:32.761097+00	2	6
7	I am open to bargain!	2022-01-04 11:16:46.468305+00	2	6
8	It looks fun!	2022-01-04 11:58:40.001621+00	15	32
9	I am open to bargain ;)	2022-01-04 12:03:59.865191+00	2	6
10	I am open to bargain ;)	2022-01-04 12:04:50.158184+00	2	6
11	Can you explain a little bit?	2022-01-04 12:07:51.552318+00	18	6
12	It looks cool. I am interested in that product.	2022-01-04 12:18:25.836079+00	2	3
13	Is it safe	2022-01-04 12:19:08.049697+00	18	6
14	It looks cool. I am interested in that product.	2022-01-04 12:19:22.122841+00	2	3
15	Although only 2 people showed up, it was fun :)	2022-01-04 13:37:36.315917+00	20	6
16	I am so excited for this event!	2022-01-06 21:03:48.257934+00	21	6
17	Hi guys, forgot to mention that it is only 140 TL, such a fancy ball just for 9 euros! UNBELIEVABLE...	2022-01-06 21:05:54.655544+00	5	6
18	Hi guys, forgot to mention that it is only 140 TL, such a fancy ball just for 9 euros! UNBELIEVABLE...	2022-01-06 21:06:00.445976+00	5	6
19	Guys I bought the fanciest ball for this event. It was only 140 TL, just 9 euros! UNBELIEVABLE... You can check my post http://cmpe451-frontend.s3-website.us-east-2.amazonaws.com/equipmentDetail/5	2022-01-06 21:07:46.012701+00	15	6
20	I still couldn't anyone. Please apply for a nice challenge!!!!	2022-01-07 02:55:27.206253+00	34	15
21	Don't afraid, we are not that good :)	2022-01-07 02:56:13.342218+00	35	15
22	I forgot to mention, the place actually hard to go but I can take you with my car if you prefer :D	2022-01-07 02:56:52.014652+00	36	15
23	I really want to try that ball. If someone buys it, we can play football together.	2022-01-07 02:57:47.764622+00	12	15
24	I really want to try that ball. If someone buys it, we can play football together.	2022-01-07 02:57:50.836266+00	12	15
25	Hi Didem, it sounds interesting. I am applying for the event!	2022-01-07 02:58:32.827873+00	24	15
26	I really like tennis but I am a beginner. Is it okay to apply?	2022-01-07 02:59:30.768419+00	22	15
27	eglenceli arkadasim.	2022-01-07 03:00:28.333222+00	28	15
28	I really want to swim but I think weather is not that good. I will still apply. Let's see what will happen.	2022-01-07 03:01:57.513007+00	30	15
29	This looks both dangerous and fun! I am going to apply	2022-01-07 23:18:25.735543+00	25	32
30	I bought them too! They are very lightweight	2022-01-07 23:20:27.082777+00	14	32
31	I bought them too! They are very lightweight	2022-01-07 23:21:31.438818+00	14	32
32	I bought them too! They are very lightweight	2022-01-07 23:21:34.687476+00	14	32
33	merhaba	2022-01-12 18:59:51.528931+00	49	34
34	I know the place! :)	2022-01-12 20:02:50.782981+00	5	33
35	I would like to join but I don't have a bike. Can I borrow one of yours?	2022-01-12 21:01:34.34683+00	56	36
36	We are waiting for your apply!!	2022-01-12 21:01:56.414933+00	60	34
37	Cool! Just applied. Do you have enough balls? I can bring 3 new bottle of balls.	2022-01-12 21:03:49.331159+00	26	36
38	I am also so excited! Let's bring some fun to the field!	2022-01-12 21:04:58.528317+00	21	36
39	We are waiting only spectator. We are a team. We don't need any gamer.	2022-01-12 21:05:08.454439+00	61	34
40	I am world-class goalkeeper. If you compensate my HaliSaha fee I can apply	2022-01-12 21:05:48.037019+00	60	36
41	I don't have frisbee but still I want to join you. Can I apply?	2022-01-12 21:06:15.992669+00	57	34
42	masa tenisi maçları 1v1 mi oluyor 2v2 mi?	2022-01-12 21:07:00.657599+00	31	34
43	I think Bebek Havuz is closed now. I also applied in case it opens. Have fun	2022-01-12 21:07:02.289069+00	30	36
44	Perfect event mate! Just applied and very excited for the game.	2022-01-12 21:07:39.978191+00	23	36
45	It's really interesting. I am going to apply, too.	2022-01-12 21:07:41.17278+00	25	34
46	My arm is broken but I still want to apply this type of an event! So, I can be a spectator.	2022-01-12 21:09:39.470677+00	25	36
47	Interesting event. Is there a age limitation?	2022-01-12 21:10:39.572123+00	45	36
48	Sokak basketbolunu çok severim. Ayın 25. de orada olacağım!	2022-01-12 21:11:20.315739+00	32	34
49	Ben beginner seviyesindeyim. Henüz biri başvurmadıysa beraber oynayabiliriz.	2022-01-12 21:11:57.85424+00	4	34
\.


--
-- Data for Name: post_eventcommentactivitystream; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_eventcommentactivitystream (id, context, summary, type, actor_id, object_id) FROM stdin;
1	https://www.w3.org/ns/activitystreams	Salih is creating a comment	Create	33	34
\.


--
-- Data for Name: post_eventpost; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_eventpost (id, post_name, created_date, description, longitude, latitude, date_time, participant_limit, spectator_limit, rule, equipment_requirement, status, capacity, location_requirement, contact_info, "pathToEventImage", current_player, current_spectator, owner_id, skill_requirement_id, sport_category_id) FROM stdin;
1	Haftaya Hali Saha	2022-01-01 23:06:37.067944+00	we need 5 player to hali saha	12.3450000000000006	34.5677999999999983	2022-02-10 07:30:00+00	5	0	Be kind!	no equipment required	upcoming	open to applications		054155555		0	0	3	1	34
6	not tennis	2022-01-02 20:51:55.861224+00	this is not a tennis game	41.0863347532253655	29.0439774468541181	2021-12-31 02:19:00+00	20	50	come as you are	tennis sopasi	cancelled	cancelled		05006007080	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_6.jpg	0	0	5	2	20
3	Tennis buddy	2022-01-01 23:10:09.53276+00	benimle tennis oynayacak buddy aranıyor	12.3450000000000006	34.5677999999999983	2022-02-17 07:30:00+00	1	0	Be kind!	tennis racket	upcoming	open to applications		054155555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_3.jpg	0	0	5	1	20
4	Tennis buddy	2022-01-01 23:12:24.247778+00	benimle tennis oynayacak buddy aranıyor	12.3450000000000006	34.5677999999999983	2022-02-10 07:30:00+00	1	0	Be kind!	tennis racket	upcoming	open to applications		054155555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_4.jpg	0	0	5	1	20
5	Tennis buddy	2022-01-01 23:12:24.247778+00	benimle tennis oynayacak buddy aranıyor	12.3450000000000006	34.5677999999999983	2022-02-17 07:30:00+00	1	0	Be kind!	tennis racket	upcoming	open to applications		054155555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_5.jpg	0	0	5	1	20
22	Tennis Tournament	2022-01-04 12:17:33.351138+00	16 people 4 rounds	41.0855751194832877	29.0401197597384488	2022-01-08 23:00:00+00	16	4	Show up if you applied!	tennis racket	upcoming	open to applications		05556667788	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_22.jpg	0	0	5	2	20
8	not tennis	2022-01-02 20:52:34.434741+00	this is not a tennis game	41.0863347532253655	29.0439774468541181	2021-12-31 02:19:00+00	20	50	come as you are	tennis sopasi	cancelled	cancelled		05006007080	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_8.jpg	0	0	5	2	20
9	not tennis	2022-01-02 20:52:34.434741+00	this is not a tennis game	41.0863347532253655	29.0439774468541181	2022-01-07 02:19:00+00	20	50	come as you are	tennis sopasi	cancelled	cancelled		05006007080	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_9.jpg	0	0	5	2	20
10	ben	2022-01-02 21:09:00.955487+00	evet ben	41.0830014979819893	29.0550573170185089	2022-01-10 02:36:00+00	1	0	sadece ben		cancelled	cancelled		05556667788	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_10.jpg	0	0	5	5	34
11	ben	2022-01-02 21:09:00.955487+00	evet ben	41.0830014979819893	29.0550573170185089	2022-01-17 02:36:00+00	1	0	sadece ben		cancelled	cancelled		05556667788	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_11.jpg	0	0	5	5	34
12	kahve masasi	2022-01-03 20:10:01.719775+00	koltuk yani	41.0830133756889992	29.0550747513771057	2022-01-10 07:03:00+00	2	1	be kind	sopa	cancelled	cancelled		05556667788	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_12.jpg	0	0	5	1	4
19	kemal	2022-01-04 00:32:57.945477+00	ekaml	41.0888961148487581	29.0483849868178368	2022-01-09 07:38:00+00	10	2	beb king	dasdas	cancelled	cancelled		sdasda	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_19.jpg	0	0	5	1	16
14	Hali Saha	2022-01-03 23:03:54.340495+00	Finallerden sonra hadi bir mac yapalim	29.0520999999999994	41.0833999999999975	2022-01-20 19:30:00+00	12	0	Be kind!	no equipment required	upcoming	open to applications		05416963537	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_14.jpg	0	0	33	1	34
2	Tennis buddy	2022-01-01 23:10:09.53276+00	benimle tennis oynayacak buddy aranıyor	12.3450000000000006	34.5677999999999983	2022-02-10 07:30:00+00	1	0	Be kind!	tennis racket	upcoming	full		054155555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_2.jpg	1	0	5	1	20
17	Haydi Rulete	2022-01-03 23:41:36.087765+00	Mermi Getirin	61.616100000000003	109.108999999999995	2022-02-10 07:30:00+00	12	7	Be kind!	no equipment required	upcoming	open to applications		059955555		0	0	24	1	56
18	Haydi Rulete	2022-01-03 23:41:36.087765+00	Mermi Getirin	61.616100000000003	109.108999999999995	2022-02-17 07:30:00+00	12	7	Be kind!	no equipment required	upcoming	open to applications		059955555		0	0	24	1	56
21	Volleyball game!	2022-01-04 02:34:11.126962+00	If you like playing volleyball don't hesitate to apply! We will have so much fun	40.9862559999999974	29.0403529999999996	2022-02-10 07:30:00+00	12	5	If you are planning to be a player in the game, keep in your mind that you can't quit until the game ends.	no equipment is required	upcoming	open to applications	no location requirement	05415555555x	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_21.jpg	1	0	32	1	24
45	kite activity	2022-01-07 19:41:53.066782+00	I am looking for a player who can fly kites with me	29.0378420000000013	40.9795659999999984	2022-01-25 15:30:00+00	5	5	No rules	bring your own kite	upcoming	open to applications		05553333333	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_45.jpg	0	0	32	1	58
16	I need a tennis partner	2022-01-03 23:16:20.748909+00	No one can beat me! I am waiting at Bebek Parki!!	29.0438569000000015	41.0757644199999987	2022-01-07 10:30:00+00	3	0	Just have fun!!	bring your tennis equipment	upcoming	full		05415555555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_16.jpg	3	0	6	1	20
13	Gözde's volleyball game	2022-01-03 23:02:12.836168+00	If you like playing volleyball don't hesitate to apply! We will have so much fun	40.9747709999999969	29.0626250000000006	2022-02-10 18:30:00+00	10	0	Be kind!	no equipment is required	upcoming	open to applications		054155555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_13.jpg	0	0	32	1	24
20	Didem's basketball game	2022-01-04 02:24:22.006507+00	Apply to my game if you love basketball! We are going to have so much fun	40.9752250000000018	29.0459090000000018	2021-12-12 08:30:00+00	10	0	Be there on time!	no equipment required	passed	cancelled	no location requirement	0555555555x	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_20.jpg	2	0	6	1	16
7	not tennis	2022-01-02 20:51:55.861224+00	this is not a tennis game	41.0863347532253655	29.0439774468541181	2022-01-07 02:19:00+00	20	50	come as you are	tennis sopasi	cancelled	cancelled		05006007080	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_7.jpg	0	0	5	2	20
23	Streetball in south campus	2022-01-04 13:44:51.500708+00	Streetball in the south campus court	41.083380319962906	29.0533537790179288	2022-01-14 03:30:00+00	12	4	Show up if you accepted please		upcoming	open to applications		05556667788	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_23.jpg	0	0	5	2	631
48	Camide güreş	2022-01-07 19:56:29.642838+00	Cüze geçenler ile elifte kalanlar arasında olacaktır,	61.3449999999999989	34.5677999999999983	2022-02-10 07:30:00+00	5	0	Kokan çoraplarla gelmeyin	tesbih	upcoming	open to applications		054155555		0	0	24	1	179
24	Caddebostan 5K Winter Run	2022-01-06 20:21:43.301191+00	Lets run in Caddebostan sahil in a freezing cold Sunday morning!	40.9630569999999992	29.0638889999999996	2022-01-07 05:00:00+00	20	0	Do not leave the group	no equipment required, do not forget to bring water.	upcoming	open to applications		05305300000	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_24.jpg	0	0	6	1	6
25	Istanbul Parkour	2022-01-06 20:45:10.620598+00	Hi guys! I wanted to create a parkour event because there was not any. I do not now any locations, I am tagging Şile for now but if you know a better place please comment.	41.1651919999999976	29.6421780000000012	2022-01-31 10:00:00+00	10	0		Better bring knee pads	upcoming	open to applications		05305300000	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_25.jpg	0	0	6	1	231
26	1-1 Tennis Challenge	2022-01-06 20:55:56.026977+00	I have been playing tennis for 2 years and I am looking for someone to challenge me.	40.9820119999999974	29.0473110000000005	2022-02-02 13:00:00+00	1	0		I have 2 rackets but you can bring your own if you wish	upcoming	open to applications	a nice court in Feneryolu	05305300000	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_26.jpg	0	0	6	3	20
27	Hadi bir mac yapalim	2022-01-07 01:50:34.868756+00	I need a good team :)	29.3000000000000007	41	2022-01-18 19:30:00+00	6	0	Be kind!	no equipment required	upcoming	open to applications		054155555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_27.jpg	0	0	33	1	34
28	Basket oynayacak var mii	2022-01-07 01:52:43.745637+00	Eglenceli arkadaslar ariyorum	29.5	40	2022-01-10 15:30:00+00	3	10	streetball kurallari	no equipment required	upcoming	open to applications		054155555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_28.jpg	0	0	33	1	16
29	tenis maci	2022-01-07 01:54:20.869317+00	teniste iddialiyimdir	29.5	40	2025-12-13 07:00:00+00	1	0	no rules extra		cancelled	cancelled		054155555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_29.jpg	0	0	33	1	20
31	masa tenisi	2022-01-07 01:58:18.235364+00	masa tenisi turnuvasi duzenliyorum	26.5	38.8999999999999986	2022-01-18 12:30:00+00	12	20	no rules extra		upcoming	open to applications		054155555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_31.jpg	0	0	33	1	20
32	sokak basketbolu	2022-01-07 01:59:57.860808+00	sokak basketbol turnuvasi var haydi gelin !!	28.8000000000000007	38.8999999999999986	2022-01-25 12:30:00+00	12	20	no rules extra		upcoming	open to applications		054155555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_32.jpg	0	0	33	1	16
33	futbol maci	2022-01-07 02:02:00.058442+00	guney kampuste futbol oynayacagiz siz de katilin	28.8999999999999986	41	2022-01-26 11:30:00+00	8	10	no rules extra		upcoming	open to applications		054155555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_33.jpg	0	0	33	1	34
34	Hisarustu 1vs1 Basketball	2022-01-07 02:39:37.254514+00	I want to play 1vs1 basketball with someone talented	41.0879555790967146	29.0463066101074254	2022-01-08 05:00:00+00	2	0	Be talented ;)	no equipment required, I already have a ball.	upcoming	open to applications		05433716407	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_34.jpg	0	0	15	5	16
35	Football Game (Hali saha)	2022-01-07 02:44:00.343357+00	We already have a team. we are looking for an opponent team consist of 7 people	41.0879555790967146	29.0463066101074254	2022-01-09 05:00:00+00	7	0	No rule	no equipment required, we already have a ball.	upcoming	open to applications		05433716407	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_35.jpg	0	0	15	3	34
36	Table Tennis	2022-01-07 02:46:34.872583+00	I am looking for one person who is beginner	21.0879555790967146	19.0463066101074254	2022-01-10 05:00:00+00	1	10	No rule	One racket please!	upcoming	open to applications		05433716407	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_36.jpg	0	0	15	1	469
37	Haftaya Hali Saha	2022-01-07 19:26:09.16939+00	we need 5 player to hali saha	12.3450000000000006	34.5677999999999983	2022-02-10 07:30:00+00	5	0	Be kind!	no equipment required	upcoming	open to applications		054155555		0	0	24	1	34
38	Let's play basketball!	2022-01-07 19:31:18.870785+00	Join if you like playing basketball!	29.0342120000000001	40.9685399999999973	2022-02-10 15:30:00+00	10	5	Apply to the generic basketball rules	no equipment required	upcoming	open to applications	no location requirement	05550000000	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_38.jpg	0	0	32	1	16
39	Let's cycle!	2022-01-07 19:32:53.72752+00	I am going to cycle on the roads join me if you like cycling too!	29.0421079999999989	40.9680219999999977	2022-02-11 15:30:00+00	5	0	No rules	bring your bicycle	upcoming	open to applications		05550000000	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_39.jpg	0	0	32	3	1
40	swimming activity	2022-01-07 19:34:06.097929+00	If the weather allows I am planning to swim join me if you like swimming too	29.0283489991456456	41.0185023192971343	2022-02-13 15:30:00+00	5	0	no rules	no equipment required	upcoming	open to applications		05550000000	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_40.jpg	0	0	32	2	4
41	run forest run	2022-01-07 19:35:37.047246+00	I am looking for a company to run because it would be more fun!	29.0588450000000016	40.9648570000000021	2022-01-21 09:30:00+00	3	0	no rules	no equipment required	upcoming	open to applications	no location requirement	05550000000	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_41.jpg	0	0	32	1	6
42	my tennis game	2022-01-07 19:38:17.225924+00	I am looking for a player who can play tennis with me	29.0329578115960025	40.9868381963203916	2022-01-28 15:30:00+00	1	0	No rules	no requirement	upcoming	open to applications		05550000000	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_42.jpg	0	0	32	3	20
43	Let's play badminton	2022-01-07 19:40:10.860531+00	I am a beginner in this sport so it would be nice to practice my skills with another badminton lover	29.0534630000000007	41.0184330000000017	2022-03-10 15:30:00+00	1	0	no rules	no equipment required	upcoming	open to applications	no location requirement	05550000000	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_43.jpg	0	0	32	2	40
44	2 Haftaya Hali Saha	2022-01-07 19:41:08.248419+00	we need 5 player to hali saha	61.3449999999999989	34.5677999999999983	2022-02-10 07:30:00+00	5	0	Be a man!	dabanca	upcoming	open to applications		054155555		0	0	24	1	34
46	Yarışalım	2022-01-07 19:45:48.904577+00	3 Koşu olacak ona göre	61.3449999999999989	34.5677999999999983	2022-02-10 07:30:00+00	5	0	Ata vurmak yok!	at getirin	upcoming	open to applications		054155555		0	0	24	1	5
47	Önce av sonra mangal	2022-01-07 19:48:38.526597+00	Av köpeği getirmeyin hoşlanmıyorum	61.3449999999999989	34.5677999999999983	2022-02-10 07:30:00+00	5	0	Birbirimizi vurmak yok	mermi, tüfek	upcoming	open to applications		054155555		0	0	24	1	11
49	Çal keke Çal	2022-01-07 20:09:50.084448+00	Canım sıkıldı bıçak fırlatalım	61.3449999999999989	34.5677999999999983	2022-02-10 07:30:00+00	5	0	Bıçağın boyu serçe parmağınızı geçmesin	Sürmene bıçağı	upcoming	open to applications		054155555		0	0	24	1	440
15	Basketball in South Campus	2022-01-03 23:12:29.809912+00	Let's play basketball in south campus!	29.0520999999999994	41.0833999999999975	2022-01-15 14:30:00+00	6	0	Be kind!	no equipment required	upcoming	open to applications		05415555555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_15.jpg	2	0	6	1	16
50	Gözde's basketball game	2022-01-07 22:46:43.635175+00	If you think you are good at basketball let's have a match!	29.0534630000000007	41.0184330000000017	2022-03-15 15:30:00+00	10	5	generic basketball rules	no equipment required	upcoming	open to applications	no location requirement	05550000000	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_50.jpg	0	0	32	5	16
51	AL ULAN MOTİVASYON	2022-01-12 18:40:58.066629+00	basıyoruz baba	61.3449999999999989	34.5677999999999983	2022-02-10 07:30:00+00	5	0	hayvan olma	havlu	upcoming	open to applications		054155555		0	0	24	1	12
52	Yüksek Dağlara Doğru	2022-01-12 18:43:13.592376+00	Tırmanış sonu mangal için 70tl getirin	61.3449999999999989	34.5677999999999983	2022-02-10 07:30:00+00	5	0	alkol sigara yok	parliament night blue	upcoming	open to applications		054155555		0	0	24	1	19
30	yuzme etkinligi	2022-01-07 01:56:00.090336+00	bebek havuzda yuzmeye arkadaslari bekliyorum	27.5	41.1000000000000014	2022-01-15 10:30:00+00	20	10	no rules extra		upcoming	open to applications		054155555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_30.jpg	0	1	33	1	4
53	Riding in Kilyos	2022-01-12 20:37:09.778628+00	Let's enjoy this weekend at the near of sea and feel the wind!	41.2444037804577519	29.0196431055664981	2022-01-17 05:14:00+00	3	0	Be kind to the horses!	Boat, Jacket	upcoming	open to applications		05370547500	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_53.jpg	0	0	36	3	696
54	Hunger Games!	2022-01-12 20:39:29.091655+00	If you trust yourself, we would like to see in the arena.	41.0899407457090362	29.0467813611030543	2022-01-22 05:40:00+00	10	2	No Rules	Gloves	upcoming	open to applications		05319384004	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_54.jpg	0	0	36	5	54
55	Soccer Game Cmpe vs IE	2022-01-12 20:44:10.726455+00	If you are a student of CMPE or IE you can apply to the event!	41.0862470647487257	29.0441702306270599	2022-01-16 07:45:00+00	12	1	Be kind to other footballers	Short, t-shirt	upcoming	open to applications		05555905950	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_55.jpg	0	0	36	2	9
56	Cycling in Cayirbasi	2022-01-12 20:47:20.050909+00	If you love bikes, you are expected to join this event!	41.1699579527510267	29.0588231384754181	2022-01-19 05:40:00+00	100	0	Don't be aggressive, use bike roads.	Bike	upcoming	open to applications		05245837373	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_56.jpg	0	0	36	1	681
57	Frisbee in South Campus	2022-01-12 20:49:22.378694+00	Lets bring joy to the South campus!	41.0849729152367757	29.0522128343582153	2022-01-15 05:24:00+00	3	0	Protest the rector!!	Frisbee	upcoming	open to applications		05378883878	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_57.jpg	0	0	36	3	61
58	Ever played tennis on the sea?	2022-01-12 20:52:02.125798+00	Let's play tennis on the Marmara Sea, near Halic	41.049750418495627	28.9369563013315201	2022-01-17 05:50:00+00	4	0	Don't jump to the sea!	tennis racket	upcoming	open to applications		05552454223	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_58.jpg	0	0	36	3	20
59	professional tennis match	2022-01-12 20:53:44.381066+00	i need someone who are Expert on tennis. I want to play with him/her	41.0932615204273191	29.0454043820500374	2022-01-17 09:00:00+00	2	10	Expert level	ball and racket	upcoming	open to applications		05435555555	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_59.jpg	0	0	34	5	20
60	soccer match - goolkeaper	2022-01-12 21:00:28.776233+00	we are a soccer team but we dont have goolkeaper. therefore, we need a goolkeaper	41.0809539513861566	29.0427255257964099	2022-01-23 05:00:00+00	1	25	kind, polite	goolkeaper glove	upcoming	open to applications		05431111111	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_60.jpg	0	0	34	2	9
61	basketball game	2022-01-12 21:04:09.290495+00	we have univercity basketball match. we can be spectator	41.0870928619772826	29.0514085069298744	2022-01-17 06:02:00+00	0	100	kind	no requirements	upcoming	open to applications		05422222222	https://nzftk20rg4.execute-api.eu-central-1.amazonaws.com/v1/lodobucket451?file=EventPost_61.jpg	0	0	34	1	16
\.


--
-- Data for Name: post_eventpostactivitystream; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_eventpostactivitystream (id, context, summary, type, actor_id, object_id) FROM stdin;
1	https://www.w3.org/ns/activitystreams	Furkan is creating an event post	Create	3	1
2	https://www.w3.org/ns/activitystreams	Tennis buddy aranıyor	Create	5	2
3	https://www.w3.org/ns/activitystreams	Tennis buddy aranıyor	Create	5	3
4	https://www.w3.org/ns/activitystreams	Tennis buddy aranıyor	Create	5	4
5	https://www.w3.org/ns/activitystreams	Tennis buddy aranıyor	Create	5	5
6	https://www.w3.org/ns/activitystreams	berkay is creating an event post	Create	5	6
7	https://www.w3.org/ns/activitystreams	berkay is creating an event post	Create	5	7
8	https://www.w3.org/ns/activitystreams	berkay is creating an event post	Create	5	8
9	https://www.w3.org/ns/activitystreams	berkay is creating an event post	Create	5	9
10	https://www.w3.org/ns/activitystreams	berkay is creating an event post	Create	5	10
11	https://www.w3.org/ns/activitystreams	berkay is creating an event post	Create	5	11
12	https://www.w3.org/ns/activitystreams	berkay is creating an event post	Create	5	12
13	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
14	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
15	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
16	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
17	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
18	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
19	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
20	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
21	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
22	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
23	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
24	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
25	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
26	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
27	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
28	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
29	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
30	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
31	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
32	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
33	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
34	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
35	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
36	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
37	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
38	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
39	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
40	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
41	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
42	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
43	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
44	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
45	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
46	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
47	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
48	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
49	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
50	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
51	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
52	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
53	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
54	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
55	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
56	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
57	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
58	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
59	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
60	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
61	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
62	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
63	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
64	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
65	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
66	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
67	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
68	https://www.w3.org/ns/activitystreams	Didem applied to an event	Application	6	1
69	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
70	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
71	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
72	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
73	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
74	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
75	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
76	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
77	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
78	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
79	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
80	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
81	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
82	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
83	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
84	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
85	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
86	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
87	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
88	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
89	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
90	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
91	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
92	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
93	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
94	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
95	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
96	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
97	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
98	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
99	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
100	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
101	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
102	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
103	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
104	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
105	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
106	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
107	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
108	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	1
109	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
110	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
111	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
112	https://www.w3.org/ns/activitystreams	Didem applied to an event	Application	6	2
113	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
114	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
115	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
116	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
117	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
118	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
119	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
120	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
121	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
122	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
123	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
124	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
125	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
126	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
127	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
128	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
129	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
130	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
131	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
132	https://www.w3.org/ns/activitystreams	Gozde is creating an event post	Create	32	13
133	https://www.w3.org/ns/activitystreams	Salih is creating an event post2	Create	33	14
134	https://www.w3.org/ns/activitystreams	Didem is creating an event post	Create	6	15
135	https://www.w3.org/ns/activitystreams	Didem is creating an event post	Create	6	16
136	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
137	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
138	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
139	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
140	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
141	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
142	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
143	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
144	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
145	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
146	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
147	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
148	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
149	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
150	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
151	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
152	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
153	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
154	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
155	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
156	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
157	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
158	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
159	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
160	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
161	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
162	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
163	https://www.w3.org/ns/activitystreams	berkay accepted an application	Accept	6	2
164	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
165	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
166	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
167	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
168	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
169	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
170	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
171	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
172	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	3
173	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	3
174	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	3
175	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	3
176	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
177	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
178	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
179	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
180	https://www.w3.org/ns/activitystreams	Salih applied to an event	Application	33	15
181	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
182	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	2
183	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
184	https://www.w3.org/ns/activitystreams	didem rejected an application	Reject	33	15
185	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
186	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
187	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
188	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
189	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
190	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	12
191	https://www.w3.org/ns/activitystreams	Sally is creating an event post2	Create	24	17
192	https://www.w3.org/ns/activitystreams	Sally is creating an event post2	Create	24	18
193	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
194	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
195	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
196	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
197	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
198	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
199	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
200	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
201	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
202	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
203	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
204	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
205	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
206	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
207	https://www.w3.org/ns/activitystreams	berkay is creating an event post	Create	5	19
208	https://www.w3.org/ns/activitystreams	Sally read an event post	View	5	17
209	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	11
210	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	11
211	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	11
212	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	11
213	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	11
214	https://www.w3.org/ns/activitystreams	Sally read an event post	View	5	17
215	https://www.w3.org/ns/activitystreams	Sally read an event post	View	5	17
216	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	11
217	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	9
218	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	10
219	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	10
220	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	10
221	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	10
222	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	10
223	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	10
224	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	10
225	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	10
226	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	10
227	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	10
228	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	10
229	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	10
230	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
231	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
232	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
233	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
234	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
235	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
236	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
237	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
238	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
239	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
240	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
241	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
242	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
243	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
244	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
245	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
246	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
247	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
248	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
249	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
250	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
251	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
252	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
253	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
254	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
255	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
256	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
257	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
258	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
259	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	8
260	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
261	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	1
262	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
263	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
264	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
265	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
266	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
267	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
268	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
269	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
270	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
271	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
272	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
273	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
274	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
275	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
276	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
277	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
278	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
279	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
280	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
281	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
282	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
283	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
284	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	8
285	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	8
286	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
287	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
288	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	8
289	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
290	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	8
291	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
292	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
293	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	3
294	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	4
295	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	5
296	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	6
297	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	7
298	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	8
299	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	8
300	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	9
301	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	3
302	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	4
303	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	5
304	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
305	https://www.w3.org/ns/activitystreams	Umut rejected an application	Application	34	15
306	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	8
307	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
308	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
309	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
310	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
311	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
312	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
313	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
314	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
315	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
316	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
317	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
318	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
319	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
320	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
321	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
322	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
323	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
324	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
325	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
326	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
327	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
328	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
329	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
330	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
331	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
332	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
333	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	15
334	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	17
335	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	18
336	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
337	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
338	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
339	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
340	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
341	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
342	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
343	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
344	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
345	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
346	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
347	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
348	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
349	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
350	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
351	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
352	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
353	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
354	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
355	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
356	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
357	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
358	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
359	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
360	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
361	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
362	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
363	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	11
364	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	11
365	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
366	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
367	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	16
368	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
369	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
370	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	16
371	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
372	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	9
373	https://www.w3.org/ns/activitystreams	Umut rejected an application	Application	34	9
374	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
375	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
376	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
377	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
378	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	7
379	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	7
380	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	7
381	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	12
382	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	12
383	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	12
384	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	19
385	https://www.w3.org/ns/activitystreams	Umut rejected an application	Application	34	19
386	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
387	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
388	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	1
389	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	11
390	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
391	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	14
392	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	11
393	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	4
394	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	1
395	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
396	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
397	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
398	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
399	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	13
400	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
401	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
402	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
403	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	11
404	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
405	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
406	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	3
407	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	4
408	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	4
409	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
410	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	12
411	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	5
412	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	6
413	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	6
414	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	6
415	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	6
416	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	7
417	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	7
418	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	8
419	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	8
420	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	9
421	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	9
422	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	10
423	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	10
424	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
425	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
426	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
427	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
428	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
429	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
430	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	17
431	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	17
432	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
433	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
434	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
435	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
436	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	15
437	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
438	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
439	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
440	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
441	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
442	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
443	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
444	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
445	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
446	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
447	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
448	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
449	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
450	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	17
451	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
452	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
453	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
454	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
455	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
456	https://www.w3.org/ns/activitystreams	didem accepted an application	Accept	34	15
457	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
458	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	12
459	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	5
460	https://www.w3.org/ns/activitystreams	Didem is creating an event post	Create	6	20
461	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
462	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
463	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
464	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
465	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
466	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
467	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
468	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
469	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
470	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
471	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
472	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
473	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
474	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
475	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
476	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
477	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
478	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
479	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
480	https://www.w3.org/ns/activitystreams	Gozde is creating an event post	Create	32	21
481	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
482	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
483	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
484	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
485	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	2
486	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
487	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
488	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
489	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
490	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
491	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
492	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
493	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
494	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
495	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
496	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	20
497	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
498	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
499	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
500	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
501	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
502	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
503	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
504	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
505	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
506	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
507	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
508	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
509	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
510	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
511	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
512	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
513	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	2
514	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
515	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	20
516	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
517	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
518	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
519	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
520	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
521	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
522	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
523	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
524	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
525	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
526	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
527	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
528	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
529	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
530	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
531	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
532	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
533	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
534	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
535	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
536	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	2
537	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
538	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
539	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
540	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	1
541	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	1
542	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
543	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
544	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
545	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
546	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
547	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
548	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
549	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
550	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	20
551	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
552	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	6
553	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
554	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	8
555	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
556	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
557	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	1
558	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	1
559	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	1
560	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	1
561	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	11
562	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
563	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	11
564	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	12
565	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	10
566	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	2
567	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
568	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
569	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	6
570	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
571	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	10
572	https://www.w3.org/ns/activitystreams	Gozde is updating event post	Update	32	13
573	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	8
574	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	20
575	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
576	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
577	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
578	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	15
579	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	15
580	https://www.w3.org/ns/activitystreams	didem is updating event post	Update	6	20
581	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
582	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
583	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
584	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	6
585	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
586	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
587	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	8
588	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	8
589	https://www.w3.org/ns/activitystreams	kmlkml read an event post	View	14	8
590	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
591	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
592	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	3
593	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	17
594	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	13
595	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
596	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
597	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
598	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
599	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
600	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
601	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
602	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	1
603	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
604	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
605	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	9
606	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	9
607	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
608	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
609	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
610	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
611	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
612	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
613	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
614	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
615	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
616	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	9
617	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
618	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
619	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
620	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
621	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
622	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
623	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
624	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
625	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
626	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
627	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
628	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
629	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
630	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
631	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
632	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
633	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
634	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
635	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
636	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
637	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
638	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
639	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	6
640	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
641	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
642	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
643	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
644	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
645	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
646	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
647	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
648	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
649	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
650	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
651	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
652	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
653	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	6
654	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
655	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
656	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
657	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
658	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
659	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
660	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
661	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	1
662	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	17
663	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	5
664	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	18
665	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
666	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
667	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
668	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
669	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
670	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
671	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
672	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
673	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
674	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
675	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	12
676	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
677	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
678	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	4
679	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
680	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
681	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
682	https://www.w3.org/ns/activitystreams	didem is updating event post	Update	6	20
683	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
684	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
685	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	20
686	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
687	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
688	https://www.w3.org/ns/activitystreams	Salih applied to an event	Application	33	20
689	https://www.w3.org/ns/activitystreams	Gozde applied to an event	Application	32	20
690	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
691	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
692	https://www.w3.org/ns/activitystreams	didem accepted an application	Accept	33	20
693	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
694	https://www.w3.org/ns/activitystreams	didem accepted an application	Accept	32	20
695	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
696	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
697	https://www.w3.org/ns/activitystreams	didem is updating event post	Update	6	20
698	https://www.w3.org/ns/activitystreams	Gozde applied to an event	Application	32	16
699	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
700	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
701	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
702	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
703	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
704	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
705	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
706	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
707	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
708	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
709	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
710	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
711	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
712	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
713	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
714	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
715	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
716	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
717	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
718	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
719	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
720	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
721	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
722	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	14
723	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	14
724	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	9
725	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	7
726	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	16
727	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	19
728	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	10
729	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	12
730	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	15
731	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	11
732	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	14
733	https://www.w3.org/ns/activitystreams	atasoy rejected an application	Application	15	14
734	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	6	14
735	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
736	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
737	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
738	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
739	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	13
740	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	13
741	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	14
742	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	13
743	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	7
744	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	7
745	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	15
746	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	15
747	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	15
748	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	15
749	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	15
750	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
751	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	15
752	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
753	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	15
754	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
755	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	15
756	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
757	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
758	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
759	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
760	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
761	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	15
762	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
763	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
764	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
765	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
766	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
767	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
768	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
769	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
770	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
771	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
772	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
773	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	11
774	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
775	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
776	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
777	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	12
778	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	10
779	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	19
780	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
781	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	9
782	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
783	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	6
784	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	8
785	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
786	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
787	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
788	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
789	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
790	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
791	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
792	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
793	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
794	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
795	https://www.w3.org/ns/activitystreams	salo_bedo deleted an event post	Delete	32	6
796	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
797	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
798	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
799	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
800	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
801	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
802	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
803	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
804	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	13
805	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	13
806	https://www.w3.org/ns/activitystreams	berkay is creating an event post	Create	5	22
807	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	22
808	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
809	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
810	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
811	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
812	https://www.w3.org/ns/activitystreams	salo_bedo deleted an event post	Delete	32	7
813	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
814	https://www.w3.org/ns/activitystreams	salo_bedo deleted an event post	Delete	32	8
815	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
816	https://www.w3.org/ns/activitystreams	salo_bedo deleted an event post	Delete	32	9
817	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	13
818	https://www.w3.org/ns/activitystreams	salo_bedo deleted an event post	Delete	32	10
819	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	13
820	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	13
821	https://www.w3.org/ns/activitystreams	salo_bedo deleted an event post	Delete	32	11
822	https://www.w3.org/ns/activitystreams	salo_bedo deleted an event post	Delete	32	12
823	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
824	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
825	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	15
826	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
827	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	15
828	https://www.w3.org/ns/activitystreams	salo_bedo deleted an event post	Delete	32	19
829	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	22
830	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	22
831	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
832	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
833	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	16
834	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
835	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	16
836	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
837	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
838	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
839	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
840	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
841	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
842	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
843	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
844	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
845	https://www.w3.org/ns/activitystreams	Furkan rejected an application	Application	3	16
846	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	16
847	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
848	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	16
849	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
850	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
851	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
852	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
853	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
854	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
855	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
856	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
857	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
858	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	16
859	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
860	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
861	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	3
862	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	3
863	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	16
864	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	22
865	https://www.w3.org/ns/activitystreams	berkay is reading an event post.	View	5	16
866	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
867	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
868	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
869	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
870	https://www.w3.org/ns/activitystreams	berkay rejected an application	Application	5	16
871	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
872	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
873	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
874	https://www.w3.org/ns/activitystreams	Salih rejected an application	Application	33	16
875	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
876	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
877	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
878	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	16
879	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
880	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
881	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	16
882	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	16
883	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	16
884	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
885	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
886	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
887	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	16
888	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	16
889	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
890	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
891	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
892	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
893	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
894	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
895	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
896	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
897	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
898	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	16
899	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
900	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
901	https://www.w3.org/ns/activitystreams	Salih is reading an event post.	View	33	16
902	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	22
903	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	22
904	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
905	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	6
906	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	7
907	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	15
908	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	1
909	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	5
910	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
911	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
912	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
913	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
914	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
915	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
916	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
917	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
918	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	15
919	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	15
920	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
921	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
922	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	15
923	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	13
924	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	13
925	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
926	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
927	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
928	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
929	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
930	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
931	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	6
932	https://www.w3.org/ns/activitystreams	kmlkml read an event post	View	14	22
933	https://www.w3.org/ns/activitystreams	kmlkml read an event post	View	14	14
934	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
935	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
936	https://www.w3.org/ns/activitystreams	kmlkml read an event post	View	14	1
937	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
938	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
939	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
940	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
941	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
942	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
943	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
944	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	13
945	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	13
946	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	13
947	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	13
948	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
949	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
950	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
951	https://www.w3.org/ns/activitystreams	Salih applied to an event	Application	33	21
952	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	22
953	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	6
954	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	15
955	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
956	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
957	https://www.w3.org/ns/activitystreams	Gozde accepted an application	Accept	33	21
958	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
959	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
960	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	21
961	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
962	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
963	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
964	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
965	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
966	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
967	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
968	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
969	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
970	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
971	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
972	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	22
973	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	22
974	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	22
975	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
976	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
977	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	2
978	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	20
979	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	20
980	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	20
981	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	16
982	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
983	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
984	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
985	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	15
986	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
987	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
988	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
989	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
990	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
991	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
992	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
993	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
994	https://www.w3.org/ns/activitystreams	didem accepted an application	Accept	32	16
995	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
996	https://www.w3.org/ns/activitystreams	didem accepted an application	Accept	3	16
997	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
998	https://www.w3.org/ns/activitystreams	didem accepted an application	Accept	33	16
999	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1000	https://www.w3.org/ns/activitystreams	didem rejected an application	Reject	5	16
1001	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1002	https://www.w3.org/ns/activitystreams	berkay is creating an event post	Create	5	23
1003	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	23
1004	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	15
1005	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
1006	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
1007	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
1008	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	23
1009	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
1010	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
1011	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
1012	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
1013	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1014	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1015	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1016	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1017	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1018	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1019	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1020	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1021	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1022	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1023	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1024	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1025	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	22
1026	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	22
1027	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1028	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	14
1029	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
1030	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
1031	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
1032	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1033	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1034	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1035	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
1036	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	1
1037	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	6
1038	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	20
1039	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
1040	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	15
1041	https://www.w3.org/ns/activitystreams	Furkan rejected an application	Application	3	15
1042	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1043	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1044	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
1045	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
1046	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	1
1047	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
1048	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
1049	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
1050	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	16
1051	https://www.w3.org/ns/activitystreams	Didem is creating an event post	Create	6	24
1052	https://www.w3.org/ns/activitystreams	Didem is creating an event post	Create	6	25
1053	https://www.w3.org/ns/activitystreams	Didem is creating an event post	Create	6	26
1054	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	24
1055	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	24
1056	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	26
1057	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	26
1058	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	25
1059	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	25
1060	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	24
1061	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
1062	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
1063	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
1064	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
1065	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
1066	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1067	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1068	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1069	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1070	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1071	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	22
1072	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	22
1073	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	22
1074	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	20
1075	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	20
1076	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	20
1077	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	20
1078	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	20
1079	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	20
1080	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	20
1081	https://www.w3.org/ns/activitystreams	Salih is creating an event post	Create	33	27
1082	https://www.w3.org/ns/activitystreams	Salih is creating an event post	Create	33	28
1083	https://www.w3.org/ns/activitystreams	Salih is creating an event post	Create	33	29
1084	https://www.w3.org/ns/activitystreams	Salih is creating an event post	Create	33	30
1085	https://www.w3.org/ns/activitystreams	Salih is creating an event post	Create	33	31
1086	https://www.w3.org/ns/activitystreams	Salih is creating an event post	Create	33	32
1087	https://www.w3.org/ns/activitystreams	Salih is creating an event post	Create	33	33
1088	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	24
1089	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	22
1090	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	28
1091	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	24
1092	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	24
1093	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	24
1094	https://www.w3.org/ns/activitystreams	Furkan is creating an event post	Create	15	34
1095	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	34
1096	https://www.w3.org/ns/activitystreams	Furkan is creating an event post	Create	15	35
1097	https://www.w3.org/ns/activitystreams	Furkan is creating an event post	Create	15	36
1098	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	34
1099	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	34
1100	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	34
1101	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	35
1102	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	35
1103	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	35
1104	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	36
1105	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	36
1106	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	34
1107	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	34
1108	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	34
1109	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	36
1110	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	34
1111	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	35
1112	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	35
1113	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	35
1114	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	36
1115	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	36
1116	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	36
1117	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	36
1118	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	24
1119	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	24
1120	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	24
1121	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	24
1122	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	36
1123	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	24
1124	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	24
1125	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	22
1126	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	22
1127	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	22
1128	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	36
1129	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	22
1130	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	36
1131	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	28
1132	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	28
1133	https://www.w3.org/ns/activitystreams	atasoy rejected an application	Application	15	28
1134	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	28
1135	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	28
1136	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	36
1137	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	28
1138	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	35
1139	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	30
1140	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	30
1141	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	36
1142	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	30
1143	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	30
1144	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	36
1145	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	30
1146	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	30
1147	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	36
1148	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	36
1149	https://www.w3.org/ns/activitystreams	Furkan is reading an event post.	View	3	36
1150	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	34
1151	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	35
1152	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	28
1153	https://www.w3.org/ns/activitystreams	atasoy is reading an event post.	View	15	28
1154	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	33
1155	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	33
1156	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	33
1157	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	24
1158	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	24
1159	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	21
1160	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
1161	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	18
1162	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	35
1163	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	22
1164	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	24
1165	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	35
1166	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	30
1167	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	30
1168	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	22
1169	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	30
1170	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	30
1171	https://www.w3.org/ns/activitystreams	Sally is creating an event post2	Create	24	37
1172	https://www.w3.org/ns/activitystreams	Gözde is creating an event post	Create	32	38
1173	https://www.w3.org/ns/activitystreams	Gözde is creating an event post	Create	32	39
1174	https://www.w3.org/ns/activitystreams	Gözde is creating an event post	Create	32	40
1175	https://www.w3.org/ns/activitystreams	Gözde is creating an event post	Create	32	41
1176	https://www.w3.org/ns/activitystreams	Gözde is creating an event post	Create	32	42
1177	https://www.w3.org/ns/activitystreams	Gözde is creating an event post	Create	32	43
1178	https://www.w3.org/ns/activitystreams	Sally is creating an event post2	Create	24	44
1179	https://www.w3.org/ns/activitystreams	Gözde is creating an event post	Create	32	45
1180	https://www.w3.org/ns/activitystreams	Sally is creating an event post2	Create	24	46
1181	https://www.w3.org/ns/activitystreams	Sally is creating an event post2	Create	24	47
1182	https://www.w3.org/ns/activitystreams	Sally is creating an event post2	Create	24	48
1183	https://www.w3.org/ns/activitystreams	Sally is creating an event post2	Create	24	49
1184	https://www.w3.org/ns/activitystreams	Kemal read an event post	View	36	15
1185	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	30
1186	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	36
1187	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	36
1188	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	41
1189	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	41
1190	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	41
1191	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	33
1192	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	33
1193	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	33
1194	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	33
1195	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	33
1196	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1197	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1198	https://www.w3.org/ns/activitystreams	didem accepted an application	Accept	3	15
1199	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1200	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1201	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1202	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1203	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1204	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1205	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1206	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1207	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1208	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1209	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	24
1210	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	24
1211	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1212	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1213	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1214	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1215	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1216	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1217	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1218	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	45
1219	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	45
1220	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	45
1221	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	45
1222	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	45
1223	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	38
1224	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	38
1225	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	38
1226	https://www.w3.org/ns/activitystreams	Gozde is updating event post	Update	32	45
1227	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	38
1228	https://www.w3.org/ns/activitystreams	Gözde is creating an event post	Create	32	50
1229	https://www.w3.org/ns/activitystreams	Gozde read an event post	View	32	45
1230	https://www.w3.org/ns/activitystreams	Gozde viewed event post analytics	View	32	45
1231	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	25
1232	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	25
1233	https://www.w3.org/ns/activitystreams	Gozde is reading an event post.	View	32	25
1234	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	50
1235	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	50
1236	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1237	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1238	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1239	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1240	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	20
1241	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	24
1242	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	24
1243	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	25
1244	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	25
1245	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	26
1246	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	26
1247	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1248	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1249	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1250	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	15
1251	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1252	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1253	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1254	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1255	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1256	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1257	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1258	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1259	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1260	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	33
1261	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	33
1262	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	33
1263	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	33
1264	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1265	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1266	https://www.w3.org/ns/activitystreams	didem is reading an event post.	View	6	16
1267	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	22
1268	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	24
1269	https://www.w3.org/ns/activitystreams	berkay read an event post	View	5	34
1270	https://www.w3.org/ns/activitystreams	Sally is creating an event post2	Create	24	51
1271	https://www.w3.org/ns/activitystreams	Sally is creating an event post2	Create	24	52
1272	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	49
1273	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	49
1274	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	49
1275	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	49
1276	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	49
1277	https://www.w3.org/ns/activitystreams	Kemal read an event post	View	36	24
1278	https://www.w3.org/ns/activitystreams	Kemal read an event post	View	36	24
1279	https://www.w3.org/ns/activitystreams	Salih applied to an event	Application	33	18
1280	https://www.w3.org/ns/activitystreams	Salih spectates to an event	Spectate	33	30
1281	https://www.w3.org/ns/activitystreams	Salih postponed an event	Postpone	33	29
1282	https://www.w3.org/ns/activitystreams	Salih deleted an event post	Delete	33	29
1283	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	23
1284	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	23
1285	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	23
1286	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	23
1287	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	23
1288	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	23
1289	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	23
1290	https://www.w3.org/ns/activitystreams	Umut rejected an application	Application	34	23
1291	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
1292	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
1293	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
1294	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
1295	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
1296	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
1297	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	15
1298	https://www.w3.org/ns/activitystreams	Kemal is creating an event post	Create	36	53
1299	https://www.w3.org/ns/activitystreams	Kemal is creating an event post	Create	36	54
1300	https://www.w3.org/ns/activitystreams	Kemal is creating an event post	Create	36	55
1301	https://www.w3.org/ns/activitystreams	Kemal is creating an event post	Create	36	56
1302	https://www.w3.org/ns/activitystreams	Kemal is creating an event post	Create	36	57
1303	https://www.w3.org/ns/activitystreams	Kemal is creating an event post	Create	36	58
1304	https://www.w3.org/ns/activitystreams	Umut is creating an event post	Create	34	59
1305	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	59
1306	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	59
1307	https://www.w3.org/ns/activitystreams	Umut read an event post	View	34	57
1308	https://www.w3.org/ns/activitystreams	Umut read an event post	View	34	22
1309	https://www.w3.org/ns/activitystreams	Umut is creating an event post	Create	34	60
1310	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	56
1311	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	60
1312	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	56
1313	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	60
1314	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	27
1315	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	26
1316	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	26
1317	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	21
1318	https://www.w3.org/ns/activitystreams	Umut is creating an event post	Create	34	61
1319	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	60
1320	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	61
1321	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	21
1322	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	61
1323	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	60
1324	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	57
1325	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	60
1326	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	41
1327	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	42
1328	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	57
1329	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	30
1330	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	31
1331	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	31
1332	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	30
1333	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	23
1334	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	25
1335	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	23
1336	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	25
1337	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	52
1338	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	17
1339	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	25
1340	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	25
1341	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	58
1342	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	58
1343	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	45
1344	https://www.w3.org/ns/activitystreams	Kemal is reading an event post.	View	36	45
1345	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	32
1346	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	32
1347	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	4
1348	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	4
1349	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	4
1350	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	58
1351	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	26
1352	https://www.w3.org/ns/activitystreams	Umut is reading an event post.	View	34	4
1353	https://www.w3.org/ns/activitystreams	Umut rejected an application	Application	34	4
\.


--
-- Data for Name: post_skilllevel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_skilllevel (id, level_name) FROM stdin;
1	beginner
2	average
3	skilled
4	specialist
5	expert
\.


--
-- Data for Name: post_sport; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.post_sport (id, sport_name, is_custom) FROM stdin;
1	road cycling	f
2	hybrid biking	f
3	mountain biking	f
4	swimming	f
5	horse competition	f
6	running	f
7	skiing	f
8	horseback riding	f
9	soccer	f
10	bmx	f
11	hunting	f
12	fitness	f
13	surfing	f
14	scooter	f
15	horseback western riding	f
16	basketball	f
17	sledding	f
18	standup paddleboarding	f
19	climbing	f
20	tennis	f
21	aquafit	f
22	inline skating	f
23	canoeing	f
24	volleyball	f
25	mountaineering	f
26	snowboarding	f
27	handball	f
28	skateboarding	f
29	yoga	f
30	underwater diving	f
31	fishing	f
32	rugby	f
33	hockey	f
34	football	f
35	baseball	f
36	cricket	f
37	lacrosse	f
38	netball	f
39	water polo	f
40	badminton	f
41	squash	f
42	padel	f
43	boxing	f
44	racquetball	f
45	speedball	f
46	track cycling	f
47	nordic skiing	f
48	dance	f
49	orienteering	f
50	peteca	f
51	ice skating	f
52	windsurfing	f
53	power kite	f
54	archery	f
55	slacklining	f
56	shooting	f
57	spelunking	f
58	kite	f
59	darts	f
60	water skiing	f
61	frisbee	f
62	fencing	f
63	boomerang	f
64	contemporary dance	f
65	free-diving	f
66	scuba diving	f
67	cardio training	f
68	snorkeling	f
69	touring sup	f
70	baby gymnastics	f
71	horse show jumping	f
72	golf	f
73	rhythmic gymnastics	f
74	horseback trail riding	f
75	rugby sevens	f
76	floorball	f
77	weight training	f
78	beach rugby	f
79	surf kayaking	f
80	surf sup	f
81	speed badminton	f
82	kite landboarding	f
83	snowkite	f
84	marathon swimming	f
85	paralympic swimming	f
86	flippa ball	f
87	surf polo	f
88	inner tube water polo	f
89	5k run	f
90	adventure running	f
91	ekiden	f
92	fell running	f
93	middle-distance running	f
94	paralympic running	f
95	snowshoe running	f
96	steeplechase	f
97	tower running	f
98	ultramarathon	f
99	wheelchair running	f
100	discus throw	f
101	hammer throw	f
102	javelin throw	f
103	shot put	f
104	high jump	f
105	long jump	f
106	pole vault	f
107	triple jump	f
108	brannboll	f
109	british baseball	f
110	corkball	f
111	crocker	f
112	fuzzball	f
113	oina	f
114	over-the-line	f
115	pesapallo	f
116	rounders	f
117	stickball	f
118	t-ball	f
119	town ball	f
120	vitilla	f
121	wiffle ball	f
122	wireball	f
123	blind cricket	f
124	french cricket	f
125	indoor cricket	f
126	kilikiti	f
127	jumping	f
128	sprinting	f
129	all-mountain snowboarding	f
130	freestyle kiteboarding	f
131	casterboarding	f
132	body surfing	f
133	wakeboarding	f
134	cruiserboarding	f
135	freestyle scooter	f
136	triathlon	f
137	aquadance	f
138	aquajogging	f
139	ski touring	f
140	beach volleyball	f
141	freeride kiteboarding	f
142	curling	f
143	walking	f
144	kwik cricket	f
145	stoolball	f
146	vigoro	f
147	matball	f
148	pole climbing	f
149	aizkora proba (wood chopping)	f
150	giza-abere probak (dragging games)	f
151	harri jasotzea (stone lifting)	f
152	harri zulaketa (hole drilling)	f
153	ingude altxatzea (anvil lifting)	f
154	lasto altxatzea (bale lifting)	f
155	lasto botatzea (bale tossing)	f
156	lokotx biltzea (cob gathering)	f
157	ontzi eramatea (churn carrying)	f
158	orga jokoa (cart game)	f
159	sega jokoa (scything)	f
160	sokatira (tug-of-war)	f
161	trontza (sawing)	f
162	txinga eramatea (weight carrying)	f
163	zaku eramatea (sack carrying)	f
164	caber toss	f
165	logrolling	f
166	sawing	f
167	wood chopping	f
168	evala	f
169	accuracy	f
170	aussie round	f
171	consecutive catch	f
172	endurance	f
173	long distance	f
174	mta 100	f
175	trick catch/doubling	f
176	ultimate	f
177	wheelchair ultimate	f
178	wheelchair fencing	f
179	freestyle wrestling	f
180	pradal serey	f
181	gouren	f
182	greco-roman wrestling	f
183	mongolian wrestling	f
184	mud wrestling	f
185	schwingen	f
186	shuai jiao	f
187	shoot-boxing	f
188	lethwei	f
189	ski orienteering	f
190	fox hunting	f
191	trapping	f
192	dog hiking	f
193	llama hiking	f
194	22 long rifle shooting	f
195	turkey hunting	f
196	foot orienteering	f
197	foil fencing	f
198	lake fishing	f
199	bowhunting	f
200	sabre fencing	f
201	big-game hunting	f
202	mountain bike orienteering	f
203	soft tip darts	f
204	epee fencing	f
205	angling	f
206	canoe sailing	f
207	glamping	f
208	rving	f
209	adaptive rowing	f
210	coastal rowing	f
211	sweep	f
212	extreme racing	f
213	aerobic gymnastics	f
214	playboating	f
215	snow boating	f
216	surf skiing	f
217	canoe marathon	f
218	lumberjack sports	f
219	carom billiards	f
220	martial arts	f
221	mixed martial arts	f
222	danish longball	f
223	kickball	f
224	basque rural sports	f
225	canoe polo	f
226	canoe slalom	f
227	paracanoe	f
228	squirt boating	f
229	wildwater canoeing	f
230	freestyle bmx	f
231	parkour	f
232	track paracycling	f
233	road paracycling	f
234	motor-paced cycling	f
235	keirin	f
236	cycle speedway	f
237	tumbling	f
238	jazz	f
239	latin	f
240	foxtrot	f
241	swing	f
242	tango	f
243	10m diving	f
244	1m diving	f
245	3m diving	f
246	cliff diving	f
247	high diving	f
248	synchronized diving	f
249	cave diving	f
250	ice diving	f
251	combined driving	f
252	endurance riding	f
253	polo	f
254	tent pegging	f
255	para-equestrianism	f
256	vaulting	f
257	reining	f
258	tae bo	f
259	calisthenics	f
260	circuit training	f
261	kettlebell lifting	f
262	olympic weightlifting	f
263	powerlifting	f
264	strongman	f
265	hip-hop	f
266	arena football	f
267	sprint kayak	f
268	free solo climbing	f
269	creeking	f
270	backpacking	f
271	rock climbing	f
272	deep diving	f
273	cyclocross	f
274	zumba	f
275	krav maga	f
276	flag football	f
277	six-man football	f
278	touch football	f
279	wheelchair football	f
280	flag rugby	f
281	wheelchair rugby	f
282	bubble soccer	f
283	jorkyball	f
284	paralympic soccer	f
285	power soccer	f
286	roller soccer	f
287	unicycle hockey	f
288	swamp soccer	f
289	18 holes golf	f
290	9 holes golf	f
291	beach golf	f
292	hickory golf	f
293	indoor golf	f
294	long drive	f
295	pitch and putt	f
296	shotgun start	f
297	snow golf	f
298	speed golf	f
299	artistic cycling	f
300	paracycling	f
301	floor hockey	f
302	golfcross	f
303	crossfit	f
304	cheerleading	f
305	minigolf	f
306	beach basketball	f
307	deaf basketball	f
308	rezball	f
309	water basketball	f
310	wheelchair basketball	f
311	fast5 netball	f
312	indoor netball	f
313	wheelchair netball	f
314	long track speed skating	f
315	box lacrosse	f
316	field lacrosse	f
317	intercrosse	f
318	women's lacrosse	f
319	bossaball	f
320	footbag net	f
321	jokgu	f
322	biribol	f
323	fistball	f
324	newcomb ball	f
325	paralympic volleyball	f
326	throwball	f
327	short track speed skating	f
328	vert skating	f
329	grass skiing	f
330	para-alpine skiing	f
331	slalom	f
332	speed skiing	f
333	super-g	f
334	aerial skiing	f
335	big air	f
336	half-pipe skiing	f
337	mogul	f
338	ski ballet	f
339	skiboarding	f
340	slopestyle	f
341	ball badminton	f
342	glade skiing	f
343	canadian football	f
344	mini rugby	f
345	3x3 basketball	f
346	park golf	f
347	extreme skiing	f
348	street soccer	f
349	ski jumping	f
350	skijoring	f
351	telemark skiing	f
352	highlining	f
353	slackline yoga	f
354	tightrope walking	f
355	tricklining	f
356	urbanlining	f
357	windlining	f
358	street luging	f
359	extreme sledding	f
360	riverboarding	f
361	kite skating	f
362	big wave	f
363	dirtsurfing	f
364	flowriding	f
365	kneeboarding	f
366	lake surfing	f
367	river surfing	f
368	skysurfing	f
369	tow-in surfing	f
370	taistelupetankki	f
371	mountainboarding	f
372	slalom skateboarding	f
373	snow skating	f
374	street skateboarding	f
375	vert skateboarding	f
376	freestyle	f
377	snowboard cross	f
378	snowboard racing	f
379	sledge hockey	f
380	ringette	f
381	underwater hockey	f
382	roller skating	f
383	biathlon	f
384	bobsleigh	f
385	sandboarding	f
386	sepak takraw	f
387	korfball	f
388	cestoball	f
389	urban golf	f
390	basque bowls	f
391	bocce	f
392	bocce volo	f
393	boccia	f
394	bolas criollas	f
395	bolo palma	f
396	bowling	f
397	lawn bowling	f
398	bunnock	f
399	fowling	f
400	gorodki	f
401	kubb	f
402	molkky	f
403	dart golf	f
404	dartball	f
405	lawn darts	f
406	3d archery	f
407	archery tag	f
408	crossbow	f
409	para archery	f
410	scenario paintball	f
411	woodsball	f
412	benchrest	f
413	bullseye shooting	f
414	roller skiing	f
415	american darts	f
416	ski marathon	f
417	cricket darts	f
418	target archery	f
419	long range	f
420	metallic silhouette	f
421	muzzleloading	f
422	paralympic shooting	f
423	plinking	f
424	running target	f
425	cowboy action shooting	f
426	paratriathlon	f
427	chakras	f
428	kundalini	f
429	yoga korunta	f
430	mantra yoga	f
431	prenatal yoga	f
432	restorative yoga	f
433	yoga hybrids	f
434	base jumping	f
435	wingsuit flying	f
436	skittles	f
437	microlight	f
438	parachuting	f
439	paragliding	f
440	knife throwing	f
441	axe throwing	f
442	paintball	f
443	lasertag	f
444	aquathlon	f
445	swimrun	f
446	aerobatics	f
447	aeromodeling	f
448	ballooning	f
449	multi-day trekking	f
450	beach handball	f
451	czech handball	f
452	field handball	f
453	classic cross-country skiing	f
454	freestyle cross-country skiing	f
455	slamball	f
456	air racing	f
457	ski mountaineering	f
458	acroyoga	f
459	mountain hiking	f
460	trail running	f
461	spearfishing	f
462	winter triathlon	f
463	kiteboard racing	f
464	field shooting	f
465	beach tennis	f
466	pickleball	f
467	frescobol	f
468	petanque	f
469	table tennis	f
470	ashtanga vinyasa yoga	f
471	bhakti yoga	f
472	bikram yoga	f
473	hatha yoga	f
474	hot yoga	f
475	power yoga	f
476	raja yoga	f
477	yin yoga	f
478	nidra yoga	f
479	vinyasa	f
480	lifesaving	f
481	shuffleboard	f
482	footvolley	f
483	meditation	f
484	boules	f
485	towed tubing	f
486	blackball	f
487	grappling	f
488	rowing	f
489	finnish skittles	f
490	throwing	f
491	rafting	f
492	dragon boat	f
493	ringball	f
494	bandy	f
495	airsoft	f
496	fatbike	f
497	skurfing	f
498	snowshoeing	f
499	gliding	f
500	helicopter	f
501	trampolining	f
502	lapta	f
503	diving	f
504	luge	f
505	skeleton	f
506	sit-down hydrofoil	f
507	kayaking	f
508	hang gliding	f
509	spinning	f
510	freeride skiing	f
511	freestyle skiing	f
512	5 a side soccer	f
513	karate	f
514	camping	f
515	ice hockey	f
516	power walking	f
517	tai chi	f
518	pool	f
519	kiteboarding	f
520	field hockey	f
521	stretching	f
522	crayfish trapping	f
523	sailing	f
524	ball hockey	f
525	formula windsurfing	f
526	jogging	f
527	air rifle shooting	f
528	bike and run	f
529	fitness inline skating	f
530	backcountry	f
531	beach soccer	f
532	aikido	f
533	freeriding	f
534	steel tip darts	f
535	fly fishing	f
536	aqualearning	f
537	carp fishing	f
538	cross-training	f
539	wave riding kiteboarding	f
540	10k run	f
541	natural bait trout fishing	f
542	freestyle slacklining	f
543	trail orienteering	f
544	frontenis	f
545	muay thai	f
546	air yoga	f
547	ice climbing	f
548	catamaran	f
549	figure skating	f
550	gravel cycling	f
551	kung fu	f
552	duathlon	f
553	half marathon	f
554	clay shooting	f
555	rugby league	f
556	mountain running	f
557	freeride windsurfing	f
558	run archery	f
559	sambo	f
560	speed hiking	f
561	street dance	f
562	long-distance running	f
563	deer hunting	f
564	futsal	f
565	urban kick scooter	f
566	eight-man football	f
567	american pool	f
568	yacht sailing	f
569	cross-country cycling	f
570	touch rugby	f
571	cruise yacht sailing	f
572	cross-country skiing	f
573	regatta	f
574	big-game fishing	f
575	half-pipe	f
576	freestyle skateboarding	f
577	canoe racing	f
578	bodyboarding	f
579	ski cross	f
580	practical shooting	f
581	trout fishing	f
582	bear hunting	f
583	finswimming	f
584	cross triathlon	f
585	skimboarding	f
586	nine-man football	f
587	open water swimming	f
588	acrobatic gymnastics	f
589	bodypump	f
590	bodybuilding	f
591	plyometrics	f
592	trail riding	f
593	sprint football	f
594	cross duathlon	f
595	inline hockey	f
596	pilates	f
597	freestyle snowboarding	f
598	roller derby	f
599	giant slalom	f
600	competitive swimming	f
601	roller hockey	f
602	canoe orienteering	f
603	step aerobics	f
604	field archery	f
605	waterfowl hunting	f
606	skyrunning	f
607	canoe camping	f
608	longboarding	f
609	judo	f
610	extreme inline skating	f
611	high-intensity interval training	f
612	street workout	f
613	acro dance	f
614	cross country running	f
615	indoor soccer	f
616	iyengar yoga	f
617	kickboxing	f
618	ballet	f
619	goat yoga	f
620	sup yoga	f
621	hiit	f
622	flow yoga	f
623	nature hiking	f
624	track & field	f
625	road bicycle racing	f
626	indoor climbing	f
627	bouldering	f
628	horse dressage	f
629	downhill skiing	f
630	dead minnow fishing	f
631	streetball	f
632	sea quiver tip fishing	f
633	nordic walking	f
634	gymnastics	f
635	snow hiking	f
636	salt water float fishing	f
637	softball	f
638	stunt kite	f
639	race walking	f
640	english pool	f
641	salt water fishing	f
642	glacier hiking	f
643	hiking	f
644	aqua cycling	f
645	road running	f
646	jigging	f
647	dead bait fishing	f
648	catfish fishing	f
649	marathon	f
650	surf fishing	f
651	match fishing	f
652	bolognese fishing	f
653	slip bobber fishing	f
654	wrestling	f
655	taekwondo	f
656	big wall climbing	f
657	ice fishing	f
658	squid fishing	f
659	synchronized swimming	f
660	trolling	f
661	kendo	f
662	capoeira	f
663	savate	f
664	lure fishing	f
665	jujutsu	f
666	canyoning	f
667	bottom fishing	f
668	still fishing	f
669	indoor running	f
670	hurdling	f
671	relay race	f
672	snooker	f
673	single line kite	f
674	predator fishing	f
675	multi-pitch climbing	f
676	swedish gymnastics	f
677	equestrian mounted games	f
678	horseball	f
679	flamenco	f
680	street hockey	f
681	cycling	f
682	kayak racing	f
683	city biking	f
684	inline speed skating	f
685	horse eventing	f
686	11 a side soccer	f
687	fitness dance	f
688	artistic gymnastics	f
689	rugby union	f
690	touring kayaking	f
691	artistic roller skating	f
692	voluntary gymnastics	f
693	race sup	f
694	sufring	t
695	valleyball	t
696	riding	t
\.


--
-- Data for Name: register_follow; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.register_follow (id, follower_id, following_id) FROM stdin;
1	6	1
2	6	3
7	24	6
8	24	33
9	6	24
13	3	6
16	6	32
17	6	33
18	32	6
19	32	33
20	6	34
\.


--
-- Data for Name: register_interestlevel; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.register_interestlevel (id, owner_of_interest_id, skill_level_id, sport_name_id) FROM stdin;
1	2	5	4
2	2	5	6
3	3	5	34
4	3	1	24
5	5	1	16
6	5	1	20
7	6	1	6
8	6	3	13
9	10	1	4
10	10	1	34
11	11	1	4
12	11	1	20
13	13	1	16
14	13	1	34
15	14	1	16
16	14	1	34
17	15	2	8
18	15	5	13
19	24	2	34
20	24	1	24
21	31	5	34
22	31	1	16
23	32	5	34
24	32	1	24
25	33	5	34
26	33	1	16
27	34	2	9
28	34	1	13
29	36	1	16
30	36	1	34
\.


--
-- Data for Name: register_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.register_user (last_login, is_superuser, first_name, last_name, email, is_staff, is_active, date_joined, "Id", name, surname, username, password, mail, is_email_verified, location) FROM stdin;
\N	t			admin@gmail.com	t	t	2022-01-01 17:15:15.863479+00	1	\N	\N	admin3	pbkdf2_sha256$260000$EmkvdyQqaHjSFhsVzWFJRD$PisiW99/6VUT3wYak3q0Iooq0UYYEp7qK/SlhS+J+v4=		f	\N
\N	f				f	t	2022-01-01 17:31:16.901335+00	2	berkay	bör	b1234567890	pbkdf2_sha256$260000$ebQ78Qthxh5x0kmnr0QJN8$i4cbMKdY8StO7XPdcV7FsHyy6U0M3IiKIIxF0mqS7cY=	berkay.bor090@gmail.com	f	\N
\N	f				f	t	2022-01-02 15:40:28.349525+00	12	kkk	ekkk	bbbbbbbb	!5s4ZQce4qkUOaqXSRuiBpQhQNJkuYNLQXhGyr7bN	kemal@kemal.com	f	\N
\N	f				f	t	2022-01-02 15:41:39.970112+00	13	kemalkemal	cagincagin	kemalkemal	pbkdf2_sha256$260000$mDcYp7HDGSTohKsY7OKyps$dn6uQjztZnASu70/BwBwrzoevJKkjMvI2/hZ07vwHUA=	kemal1@kemal1.com	f	\N
\N	f				f	t	2022-01-02 12:17:55.500231+00	10	ber	bor	berkaybor00	pbkdf2_sha256$260000$sRDlRpmfZjIerFb98PMZcE$FUjSZb2ysCFmEEnfc9seyu5Saavg8+RArbfcO9/RTF0=	berkay.bor@boun.edu.tr	t	\N
2022-01-12 16:39:17.894835+00	f				f	t	2022-01-03 19:49:40.553784+00	33	Salih	Eker	salo_bedo2	pbkdf2_sha256$260000$Kov9YHZ1q0tDH5iNGqoApw$erpctIjPM7aq1NlDTt4DmDwcZ6v6j3YOSwwhOIeyxXE=	salihbedirhaneker@gmail.com	t	\N
2022-01-12 17:56:16.060031+00	f				f	t	2022-01-03 20:55:44.861597+00	34	Umut	Gün	umutgun17	pbkdf2_sha256$260000$KZTrVs7G6N8AD3khL5dZdV$I1xrYPbIZGqlPpj+PyuwU0Wbj0gHrDJbPQfcv+HsjYg=	umutgun17@gmail.com	t	\N
2022-01-12 18:00:44.394809+00	f				f	t	2022-01-07 17:32:02.446297+00	36	Kemal	Sertkaya	kmlcgn12	pbkdf2_sha256$260000$nKpdIvmpVxLTr9cLWqRu45$A8vcnCIvsn1W1jVs0V1zdRnTNrXnvhDiyOshYM6u+gk=	kmlcgn@protonmail.com	t	\N
\N	f				f	t	2022-01-03 19:45:01.291318+00	31	Salih	Eker	salo_bedo	pbkdf2_sha256$260000$ygofKPeA2azlTX6csUOhV8$NDBQagH8/KZDT1/zmIe8RKRKgQR7MYu0S03YxezMRK0=	salih.bediran@gmail.com	f	\N
\N	f				f	t	2022-01-03 12:06:40.22765+00	23	Serhat	Bayraktar	yesiltepeli	!1xsug7cHfcPUq2ppGb7oKIV3kSbjakRSi2qSoZtb	mehmet.fatih.reis@hotmail.com	f	\N
2022-01-02 12:24:14.550878+00	f				f	t	2022-01-02 12:19:13.074516+00	11	Berkay	Bör	berbor42	pbkdf2_sha256$260000$6Qy4554bqQI3weiZxSyhwo$GEnCQQnotDMuwCeOpg55x/rhtFiltih82K1kOjudN6U=	berkay.bor@hotmail.com.tr	t	\N
2022-01-07 19:25:33.968523+00	f				f	t	2022-01-03 19:46:11.820094+00	32	Gozde	Unver	gozde_unver	pbkdf2_sha256$260000$Ah0e7HE5y2T8sa4WcGmrN8$2g1ghjnUhg/kqK1pRcGHu8Wj0bW00wHM2mEHFqrw9x4=	somethingblue0@outlook.com	t	\N
2022-01-05 19:47:28.181811+00	f				f	t	2022-01-01 18:00:37.656241+00	3	Furkan	Atasoy	atasoy65	pbkdf2_sha256$260000$pBxmViNFO4PRmcF0yAHJKr$EEYltK9cpENJArCEFB6WDbJhhf083xfRSH/B2xPd5TI=	furkanatasoy65@gmail.com	t	\N
2022-01-06 15:52:53.067361+00	f				f	t	2022-01-01 19:39:21.105929+00	6	didem	aytac	didemaytac	pbkdf2_sha256$260000$sbmAomzAiqPsKSRS7fA7ld$YuvPBKJYTOOR08QCDbJ0b1YgE5LUuUrcxq/5mGkzaR8=	zdaytac@gmail.com	t	\N
2022-01-12 15:02:48.190323+00	f				f	t	2022-01-01 19:09:24.909892+00	5	berkay	bor	berkay00	pbkdf2_sha256$260000$N6ugpOKd9SJx6EHetSWnri$lHluiDDSebujbTn0Nj/os+ycmrFlUqjtzG3/EixbMtY=	berkay.bor07@gmail.com	t	\N
2022-01-12 15:40:44.526893+00	f				f	t	2022-01-03 12:12:52.692355+00	24	Serhat	Bayraktar	erdodulu611	pbkdf2_sha256$260000$sOJWZN1BND0k9GqBCurcNo$9VRNRrjH29Q+eNStaDiLLGJRzNekGIW3cnh9f/3WZiI=	mehmet.fatih.aksoy@hotmail.com	t	\N
\N	f				f	t	2022-01-12 15:55:53.521643+00	37	kemal	kemal	kemalekmal	!s1NVaD7AmMbR1RUanP3njZpSFUNLPfTlKaagbHio	kemal@lkemal.com	f	\N
2022-01-06 23:28:09.628557+00	f				f	t	2022-01-02 18:28:46.803828+00	15	atasoy	furkan	atasoy123	pbkdf2_sha256$260000$gsfi3FljOiKgQjqXwxlaDR$9GmOR9z1Z6OBrHBqF+fjAtTqYXm5N77kN2fM2CceYfo=	atasoyfurkan99@gmail.com	t	\N
2022-01-04 09:50:39.335458+00	f				f	t	2022-01-02 15:42:45.98578+00	14	kmlkml	kmlkml	kmlkmlkml	pbkdf2_sha256$260000$e6DkwUG1G2puSQkBnGTNrL$Q7b0p/3xiFC309kAlL8nYlBFjq6ruXYZUjLQIV7DR2o=	cagin24@gmail.com	t	\N
\.


--
-- Data for Name: register_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.register_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: register_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.register_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 84, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 21, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 22, true);


--
-- Name: post_application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_application_id_seq', 127, true);


--
-- Name: post_badge_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_badge_id_seq', 6, true);


--
-- Name: post_badgeownedbyuser_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_badgeownedbyuser_id_seq', 15, true);


--
-- Name: post_equipmentcomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_equipmentcomment_id_seq', 1, false);


--
-- Name: post_equipmentcommentactivitystream_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_equipmentcommentactivitystream_id_seq', 1, false);


--
-- Name: post_equipmentpost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_equipmentpost_id_seq', 22, true);


--
-- Name: post_equipmentpostactivtystream_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_equipmentpostactivtystream_id_seq', 204, true);


--
-- Name: post_eventcomment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_eventcomment_id_seq', 49, true);


--
-- Name: post_eventcommentactivitystream_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_eventcommentactivitystream_id_seq', 1, true);


--
-- Name: post_eventpost_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_eventpost_id_seq', 61, true);


--
-- Name: post_eventpostactivitystream_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_eventpostactivitystream_id_seq', 1353, true);


--
-- Name: post_skilllevel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_skilllevel_id_seq', 5, true);


--
-- Name: post_sport_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.post_sport_id_seq', 696, true);


--
-- Name: register_follow_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.register_follow_id_seq', 20, true);


--
-- Name: register_interestlevel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.register_interestlevel_id_seq', 30, true);


--
-- Name: register_user_Id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."register_user_Id_seq"', 37, true);


--
-- Name: register_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.register_user_groups_id_seq', 1, false);


--
-- Name: register_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.register_user_user_permissions_id_seq', 1, false);


--
-- Name: register_follow a user follows another user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_follow
    ADD CONSTRAINT "a user follows another user" UNIQUE (follower_id, following_id);


--
-- Name: post_application application to an event post per user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_application
    ADD CONSTRAINT "application to an event post per user" UNIQUE (user_id, event_post_id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: post_badgeownedbyuser badge owned by a user; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_badgeownedbyuser
    ADD CONSTRAINT "badge owned by a user" UNIQUE (owner_id, badge_id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: post_application post_application_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_application
    ADD CONSTRAINT post_application_pkey PRIMARY KEY (id);


--
-- Name: post_badge post_badge_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_badge
    ADD CONSTRAINT post_badge_pkey PRIMARY KEY (id);


--
-- Name: post_badgeownedbyuser post_badgeownedbyuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_badgeownedbyuser
    ADD CONSTRAINT post_badgeownedbyuser_pkey PRIMARY KEY (id);


--
-- Name: post_equipmentcomment post_equipmentcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentcomment
    ADD CONSTRAINT post_equipmentcomment_pkey PRIMARY KEY (id);


--
-- Name: post_equipmentcommentactivitystream post_equipmentcommentactivitystream_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentcommentactivitystream
    ADD CONSTRAINT post_equipmentcommentactivitystream_pkey PRIMARY KEY (id);


--
-- Name: post_equipmentpost post_equipmentpost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentpost
    ADD CONSTRAINT post_equipmentpost_pkey PRIMARY KEY (id);


--
-- Name: post_equipmentpostactivtystream post_equipmentpostactivtystream_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentpostactivtystream
    ADD CONSTRAINT post_equipmentpostactivtystream_pkey PRIMARY KEY (id);


--
-- Name: post_eventcomment post_eventcomment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventcomment
    ADD CONSTRAINT post_eventcomment_pkey PRIMARY KEY (id);


--
-- Name: post_eventcommentactivitystream post_eventcommentactivitystream_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventcommentactivitystream
    ADD CONSTRAINT post_eventcommentactivitystream_pkey PRIMARY KEY (id);


--
-- Name: post_eventpost post_eventpost_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventpost
    ADD CONSTRAINT post_eventpost_pkey PRIMARY KEY (id);


--
-- Name: post_eventpostactivitystream post_eventpostactivitystream_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventpostactivitystream
    ADD CONSTRAINT post_eventpostactivitystream_pkey PRIMARY KEY (id);


--
-- Name: post_skilllevel post_skilllevel_level_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_skilllevel
    ADD CONSTRAINT post_skilllevel_level_name_key UNIQUE (level_name);


--
-- Name: post_skilllevel post_skilllevel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_skilllevel
    ADD CONSTRAINT post_skilllevel_pkey PRIMARY KEY (id);


--
-- Name: post_sport post_sport_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_sport
    ADD CONSTRAINT post_sport_pkey PRIMARY KEY (id);


--
-- Name: post_sport post_sport_sport_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_sport
    ADD CONSTRAINT post_sport_sport_name_key UNIQUE (sport_name);


--
-- Name: register_follow register_follow_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_follow
    ADD CONSTRAINT register_follow_pkey PRIMARY KEY (id);


--
-- Name: register_interestlevel register_interestlevel_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_interestlevel
    ADD CONSTRAINT register_interestlevel_pkey PRIMARY KEY (id);


--
-- Name: register_user_groups register_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user_groups
    ADD CONSTRAINT register_user_groups_pkey PRIMARY KEY (id);


--
-- Name: register_user_groups register_user_groups_user_id_group_id_29c2490d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user_groups
    ADD CONSTRAINT register_user_groups_user_id_group_id_29c2490d_uniq UNIQUE (user_id, group_id);


--
-- Name: register_user register_user_mail_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user
    ADD CONSTRAINT register_user_mail_key UNIQUE (mail);


--
-- Name: register_user register_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user
    ADD CONSTRAINT register_user_pkey PRIMARY KEY ("Id");


--
-- Name: register_user_user_permissions register_user_user_permi_user_id_permission_id_b0bd979f_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user_user_permissions
    ADD CONSTRAINT register_user_user_permi_user_id_permission_id_b0bd979f_uniq UNIQUE (user_id, permission_id);


--
-- Name: register_user_user_permissions register_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user_user_permissions
    ADD CONSTRAINT register_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: register_user register_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user
    ADD CONSTRAINT register_user_username_key UNIQUE (username);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: post_application_event_post_id_8f4bcb1a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_application_event_post_id_8f4bcb1a ON public.post_application USING btree (event_post_id);


--
-- Name: post_application_user_id_f8a57d3d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_application_user_id_f8a57d3d ON public.post_application USING btree (user_id);


--
-- Name: post_badgeownedbyuser_badge_id_7c7c0451; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_badgeownedbyuser_badge_id_7c7c0451 ON public.post_badgeownedbyuser USING btree (badge_id);


--
-- Name: post_badgeownedbyuser_owner_id_c08775e9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_badgeownedbyuser_owner_id_c08775e9 ON public.post_badgeownedbyuser USING btree (owner_id);


--
-- Name: post_equipmentcomment_equipment_post_id_eca395ee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_equipmentcomment_equipment_post_id_eca395ee ON public.post_equipmentcomment USING btree (equipment_post_id);


--
-- Name: post_equipmentcomment_owner_id_7914e2cb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_equipmentcomment_owner_id_7914e2cb ON public.post_equipmentcomment USING btree (owner_id);


--
-- Name: post_equipmentcommentactivitystream_actor_id_99d5662e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_equipmentcommentactivitystream_actor_id_99d5662e ON public.post_equipmentcommentactivitystream USING btree (actor_id);


--
-- Name: post_equipmentcommentactivitystream_object_id_9bad9d7f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_equipmentcommentactivitystream_object_id_9bad9d7f ON public.post_equipmentcommentactivitystream USING btree (object_id);


--
-- Name: post_equipmentpost_owner_id_4dfb6051; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_equipmentpost_owner_id_4dfb6051 ON public.post_equipmentpost USING btree (owner_id);


--
-- Name: post_equipmentpost_sport_category_id_d1e0fefd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_equipmentpost_sport_category_id_d1e0fefd ON public.post_equipmentpost USING btree (sport_category_id);


--
-- Name: post_equipmentpostactivtystream_actor_id_99f36bfe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_equipmentpostactivtystream_actor_id_99f36bfe ON public.post_equipmentpostactivtystream USING btree (actor_id);


--
-- Name: post_equipmentpostactivtystream_object_id_b3fb51fc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_equipmentpostactivtystream_object_id_b3fb51fc ON public.post_equipmentpostactivtystream USING btree (object_id);


--
-- Name: post_eventcomment_event_post_id_1f2e5631; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_eventcomment_event_post_id_1f2e5631 ON public.post_eventcomment USING btree (event_post_id);


--
-- Name: post_eventcomment_owner_id_b10566e0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_eventcomment_owner_id_b10566e0 ON public.post_eventcomment USING btree (owner_id);


--
-- Name: post_eventcommentactivitystream_actor_id_ec370ef0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_eventcommentactivitystream_actor_id_ec370ef0 ON public.post_eventcommentactivitystream USING btree (actor_id);


--
-- Name: post_eventcommentactivitystream_object_id_deb13376; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_eventcommentactivitystream_object_id_deb13376 ON public.post_eventcommentactivitystream USING btree (object_id);


--
-- Name: post_eventpost_owner_id_98ccafb8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_eventpost_owner_id_98ccafb8 ON public.post_eventpost USING btree (owner_id);


--
-- Name: post_eventpost_skill_requirement_id_1e97a60d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_eventpost_skill_requirement_id_1e97a60d ON public.post_eventpost USING btree (skill_requirement_id);


--
-- Name: post_eventpost_sport_category_id_21ba423e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_eventpost_sport_category_id_21ba423e ON public.post_eventpost USING btree (sport_category_id);


--
-- Name: post_eventpostactivitystream_actor_id_77a2c4bc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_eventpostactivitystream_actor_id_77a2c4bc ON public.post_eventpostactivitystream USING btree (actor_id);


--
-- Name: post_eventpostactivitystream_object_id_3b11ba76; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_eventpostactivitystream_object_id_3b11ba76 ON public.post_eventpostactivitystream USING btree (object_id);


--
-- Name: post_skilllevel_level_name_c9872de6_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_skilllevel_level_name_c9872de6_like ON public.post_skilllevel USING btree (level_name varchar_pattern_ops);


--
-- Name: post_sport_sport_name_ca1418c1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX post_sport_sport_name_ca1418c1_like ON public.post_sport USING btree (sport_name varchar_pattern_ops);


--
-- Name: register_follow_follower_id_e9ea1f32; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX register_follow_follower_id_e9ea1f32 ON public.register_follow USING btree (follower_id);


--
-- Name: register_follow_following_id_9a20cbde; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX register_follow_following_id_9a20cbde ON public.register_follow USING btree (following_id);


--
-- Name: register_interestlevel_owner_of_interest_id_703375e1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX register_interestlevel_owner_of_interest_id_703375e1 ON public.register_interestlevel USING btree (owner_of_interest_id);


--
-- Name: register_interestlevel_skill_level_id_17e287d8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX register_interestlevel_skill_level_id_17e287d8 ON public.register_interestlevel USING btree (skill_level_id);


--
-- Name: register_interestlevel_sport_name_id_99905113; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX register_interestlevel_sport_name_id_99905113 ON public.register_interestlevel USING btree (sport_name_id);


--
-- Name: register_user_groups_group_id_ca93437c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX register_user_groups_group_id_ca93437c ON public.register_user_groups USING btree (group_id);


--
-- Name: register_user_groups_user_id_c02a1648; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX register_user_groups_user_id_c02a1648 ON public.register_user_groups USING btree (user_id);


--
-- Name: register_user_mail_9f4ae4f1_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX register_user_mail_9f4ae4f1_like ON public.register_user USING btree (mail varchar_pattern_ops);


--
-- Name: register_user_user_permissions_permission_id_4888970d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX register_user_user_permissions_permission_id_4888970d ON public.register_user_user_permissions USING btree (permission_id);


--
-- Name: register_user_user_permissions_user_id_091bc010; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX register_user_user_permissions_user_id_091bc010 ON public.register_user_user_permissions USING btree (user_id);


--
-- Name: register_user_username_ade3e965_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX register_user_username_ade3e965_like ON public.register_user USING btree (username varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_register_user_Id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT "django_admin_log_user_id_c564eba6_fk_register_user_Id" FOREIGN KEY (user_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_application post_application_event_post_id_8f4bcb1a_fk_post_eventpost_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_application
    ADD CONSTRAINT post_application_event_post_id_8f4bcb1a_fk_post_eventpost_id FOREIGN KEY (event_post_id) REFERENCES public.post_eventpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_application post_application_user_id_f8a57d3d_fk_register_user_Id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_application
    ADD CONSTRAINT "post_application_user_id_f8a57d3d_fk_register_user_Id" FOREIGN KEY (user_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_badgeownedbyuser post_badgeownedbyuser_badge_id_7c7c0451_fk_post_badge_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_badgeownedbyuser
    ADD CONSTRAINT post_badgeownedbyuser_badge_id_7c7c0451_fk_post_badge_id FOREIGN KEY (badge_id) REFERENCES public.post_badge(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_badgeownedbyuser post_badgeownedbyuser_owner_id_c08775e9_fk_register_user_Id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_badgeownedbyuser
    ADD CONSTRAINT "post_badgeownedbyuser_owner_id_c08775e9_fk_register_user_Id" FOREIGN KEY (owner_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_equipmentcommentactivitystream post_equipmentcommen_actor_id_99d5662e_fk_register_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentcommentactivitystream
    ADD CONSTRAINT post_equipmentcommen_actor_id_99d5662e_fk_register_ FOREIGN KEY (actor_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_equipmentcomment post_equipmentcommen_equipment_post_id_eca395ee_fk_post_equi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentcomment
    ADD CONSTRAINT post_equipmentcommen_equipment_post_id_eca395ee_fk_post_equi FOREIGN KEY (equipment_post_id) REFERENCES public.post_equipmentpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_equipmentcommentactivitystream post_equipmentcommen_object_id_9bad9d7f_fk_post_equi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentcommentactivitystream
    ADD CONSTRAINT post_equipmentcommen_object_id_9bad9d7f_fk_post_equi FOREIGN KEY (object_id) REFERENCES public.post_equipmentcomment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_equipmentcomment post_equipmentcomment_owner_id_7914e2cb_fk_register_user_Id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentcomment
    ADD CONSTRAINT "post_equipmentcomment_owner_id_7914e2cb_fk_register_user_Id" FOREIGN KEY (owner_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_equipmentpost post_equipmentpost_owner_id_4dfb6051_fk_register_user_Id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentpost
    ADD CONSTRAINT "post_equipmentpost_owner_id_4dfb6051_fk_register_user_Id" FOREIGN KEY (owner_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_equipmentpost post_equipmentpost_sport_category_id_d1e0fefd_fk_post_sport_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentpost
    ADD CONSTRAINT post_equipmentpost_sport_category_id_d1e0fefd_fk_post_sport_id FOREIGN KEY (sport_category_id) REFERENCES public.post_sport(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_equipmentpostactivtystream post_equipmentpostac_actor_id_99f36bfe_fk_register_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentpostactivtystream
    ADD CONSTRAINT post_equipmentpostac_actor_id_99f36bfe_fk_register_ FOREIGN KEY (actor_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_equipmentpostactivtystream post_equipmentpostac_object_id_b3fb51fc_fk_post_equi; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_equipmentpostactivtystream
    ADD CONSTRAINT post_equipmentpostac_object_id_b3fb51fc_fk_post_equi FOREIGN KEY (object_id) REFERENCES public.post_equipmentpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_eventcomment post_eventcomment_event_post_id_1f2e5631_fk_post_eventpost_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventcomment
    ADD CONSTRAINT post_eventcomment_event_post_id_1f2e5631_fk_post_eventpost_id FOREIGN KEY (event_post_id) REFERENCES public.post_eventpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_eventcomment post_eventcomment_owner_id_b10566e0_fk_register_user_Id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventcomment
    ADD CONSTRAINT "post_eventcomment_owner_id_b10566e0_fk_register_user_Id" FOREIGN KEY (owner_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_eventcommentactivitystream post_eventcommentact_actor_id_ec370ef0_fk_register_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventcommentactivitystream
    ADD CONSTRAINT post_eventcommentact_actor_id_ec370ef0_fk_register_ FOREIGN KEY (actor_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_eventcommentactivitystream post_eventcommentact_object_id_deb13376_fk_post_even; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventcommentactivitystream
    ADD CONSTRAINT post_eventcommentact_object_id_deb13376_fk_post_even FOREIGN KEY (object_id) REFERENCES public.post_eventcomment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_eventpost post_eventpost_owner_id_98ccafb8_fk_register_user_Id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventpost
    ADD CONSTRAINT "post_eventpost_owner_id_98ccafb8_fk_register_user_Id" FOREIGN KEY (owner_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_eventpost post_eventpost_skill_requirement_id_1e97a60d_fk_post_skil; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventpost
    ADD CONSTRAINT post_eventpost_skill_requirement_id_1e97a60d_fk_post_skil FOREIGN KEY (skill_requirement_id) REFERENCES public.post_skilllevel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_eventpost post_eventpost_sport_category_id_21ba423e_fk_post_sport_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventpost
    ADD CONSTRAINT post_eventpost_sport_category_id_21ba423e_fk_post_sport_id FOREIGN KEY (sport_category_id) REFERENCES public.post_sport(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_eventpostactivitystream post_eventpostactivi_actor_id_77a2c4bc_fk_register_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventpostactivitystream
    ADD CONSTRAINT post_eventpostactivi_actor_id_77a2c4bc_fk_register_ FOREIGN KEY (actor_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_eventpostactivitystream post_eventpostactivi_object_id_3b11ba76_fk_post_even; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.post_eventpostactivitystream
    ADD CONSTRAINT post_eventpostactivi_object_id_3b11ba76_fk_post_even FOREIGN KEY (object_id) REFERENCES public.post_eventpost(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_follow register_follow_follower_id_e9ea1f32_fk_register_user_Id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_follow
    ADD CONSTRAINT "register_follow_follower_id_e9ea1f32_fk_register_user_Id" FOREIGN KEY (follower_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_follow register_follow_following_id_9a20cbde_fk_register_user_Id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_follow
    ADD CONSTRAINT "register_follow_following_id_9a20cbde_fk_register_user_Id" FOREIGN KEY (following_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_interestlevel register_interestlev_owner_of_interest_id_703375e1_fk_register_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_interestlevel
    ADD CONSTRAINT register_interestlev_owner_of_interest_id_703375e1_fk_register_ FOREIGN KEY (owner_of_interest_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_interestlevel register_interestlev_skill_level_id_17e287d8_fk_post_skil; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_interestlevel
    ADD CONSTRAINT register_interestlev_skill_level_id_17e287d8_fk_post_skil FOREIGN KEY (skill_level_id) REFERENCES public.post_skilllevel(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_interestlevel register_interestlevel_sport_name_id_99905113_fk_post_sport_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_interestlevel
    ADD CONSTRAINT register_interestlevel_sport_name_id_99905113_fk_post_sport_id FOREIGN KEY (sport_name_id) REFERENCES public.post_sport(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_user_groups register_user_groups_group_id_ca93437c_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user_groups
    ADD CONSTRAINT register_user_groups_group_id_ca93437c_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_user_groups register_user_groups_user_id_c02a1648_fk_register_user_Id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user_groups
    ADD CONSTRAINT "register_user_groups_user_id_c02a1648_fk_register_user_Id" FOREIGN KEY (user_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_user_user_permissions register_user_user_p_permission_id_4888970d_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user_user_permissions
    ADD CONSTRAINT register_user_user_p_permission_id_4888970d_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: register_user_user_permissions register_user_user_p_user_id_091bc010_fk_register_; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.register_user_user_permissions
    ADD CONSTRAINT register_user_user_p_user_id_091bc010_fk_register_ FOREIGN KEY (user_id) REFERENCES public.register_user("Id") DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database dump
--

-- Dumped from database version 11.14 (Debian 11.14-1.pgdg90+1)
-- Dumped by pg_dump version 11.14 (Debian 11.14-1.pgdg90+1)

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

DROP DATABASE postgres;
--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.utf8' LC_CTYPE = 'en_US.utf8';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

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
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- PostgreSQL database dump complete
--

--
-- PostgreSQL database cluster dump complete
--

