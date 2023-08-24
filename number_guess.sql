--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 12, 3);
INSERT INTO public.games VALUES (2, 166, 5);
INSERT INTO public.games VALUES (3, 776, 5);
INSERT INTO public.games VALUES (4, 85, 6);
INSERT INTO public.games VALUES (5, 139, 6);
INSERT INTO public.games VALUES (6, 342, 5);
INSERT INTO public.games VALUES (7, 445, 5);
INSERT INTO public.games VALUES (8, 730, 5);
INSERT INTO public.games VALUES (9, 704, 7);
INSERT INTO public.games VALUES (10, 950, 7);
INSERT INTO public.games VALUES (11, 618, 8);
INSERT INTO public.games VALUES (12, 962, 8);
INSERT INTO public.games VALUES (13, 154, 7);
INSERT INTO public.games VALUES (14, 686, 7);
INSERT INTO public.games VALUES (15, 796, 7);
INSERT INTO public.games VALUES (16, 647, 9);
INSERT INTO public.games VALUES (17, 899, 9);
INSERT INTO public.games VALUES (18, 501, 10);
INSERT INTO public.games VALUES (19, 666, 10);
INSERT INTO public.games VALUES (20, 9, 9);
INSERT INTO public.games VALUES (21, 323, 9);
INSERT INTO public.games VALUES (22, 511, 9);
INSERT INTO public.games VALUES (23, 79, 11);
INSERT INTO public.games VALUES (24, 753, 11);
INSERT INTO public.games VALUES (25, 772, 12);
INSERT INTO public.games VALUES (26, 209, 12);
INSERT INTO public.games VALUES (27, 244, 11);
INSERT INTO public.games VALUES (28, 686, 11);
INSERT INTO public.games VALUES (29, 492, 11);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1692865065871');
INSERT INTO public.users VALUES (2, 'user_1692865065870');
INSERT INTO public.users VALUES (3, 'David');
INSERT INTO public.users VALUES (4, 'dAVID');
INSERT INTO public.users VALUES (5, 'user_1692869170953');
INSERT INTO public.users VALUES (6, 'user_1692869170952');
INSERT INTO public.users VALUES (7, 'user_1692869197718');
INSERT INTO public.users VALUES (8, 'user_1692869197717');
INSERT INTO public.users VALUES (9, 'user_1692869205918');
INSERT INTO public.users VALUES (10, 'user_1692869205917');
INSERT INTO public.users VALUES (11, 'user_1692869234846');
INSERT INTO public.users VALUES (12, 'user_1692869234845');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 29, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 12, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

