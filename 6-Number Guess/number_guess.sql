--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    user_id integer NOT NULL,
    guesses integer DEFAULT 0 NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
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
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
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

INSERT INTO public.games VALUES (1, 1, 1, 0);
INSERT INTO public.games VALUES (2, 28, 494, 0);
INSERT INTO public.games VALUES (3, 28, 813, 0);
INSERT INTO public.games VALUES (4, 29, 583, 0);
INSERT INTO public.games VALUES (5, 29, 110, 0);
INSERT INTO public.games VALUES (6, 28, 34, 0);
INSERT INTO public.games VALUES (7, 28, 1, 0);
INSERT INTO public.games VALUES (8, 28, 173, 0);
INSERT INTO public.games VALUES (9, 1, 1, 0);
INSERT INTO public.games VALUES (10, 1, 1, 0);
INSERT INTO public.games VALUES (11, 30, 353, 0);
INSERT INTO public.games VALUES (12, 30, 340, 0);
INSERT INTO public.games VALUES (13, 31, 805, 0);
INSERT INTO public.games VALUES (14, 31, 427, 0);
INSERT INTO public.games VALUES (15, 30, 227, 0);
INSERT INTO public.games VALUES (16, 30, 1, 0);
INSERT INTO public.games VALUES (17, 30, 182, 0);
INSERT INTO public.games VALUES (18, 32, 343, 0);
INSERT INTO public.games VALUES (19, 32, 450, 0);
INSERT INTO public.games VALUES (20, 33, 908, 0);
INSERT INTO public.games VALUES (21, 33, 389, 0);
INSERT INTO public.games VALUES (22, 32, 200, 0);
INSERT INTO public.games VALUES (23, 32, 1, 0);
INSERT INTO public.games VALUES (24, 32, 908, 0);
INSERT INTO public.games VALUES (25, 34, 463, 0);
INSERT INTO public.games VALUES (26, 34, 607, 0);
INSERT INTO public.games VALUES (27, 35, 294, 0);
INSERT INTO public.games VALUES (28, 35, 728, 0);
INSERT INTO public.games VALUES (29, 34, 656, 0);
INSERT INTO public.games VALUES (30, 34, 1, 0);
INSERT INTO public.games VALUES (31, 34, 349, 0);
INSERT INTO public.games VALUES (32, 36, 801, 0);
INSERT INTO public.games VALUES (33, 36, 70, 0);
INSERT INTO public.games VALUES (34, 37, 552, 0);
INSERT INTO public.games VALUES (35, 37, 629, 0);
INSERT INTO public.games VALUES (36, 36, 115, 0);
INSERT INTO public.games VALUES (37, 36, 1, 0);
INSERT INTO public.games VALUES (38, 36, 704, 0);
INSERT INTO public.games VALUES (39, 40, 1, 0);
INSERT INTO public.games VALUES (40, 40, 1, 0);
INSERT INTO public.games VALUES (41, 41, 1, 0);
INSERT INTO public.games VALUES (42, 41, 1, 0);
INSERT INTO public.games VALUES (43, 40, 1, 0);
INSERT INTO public.games VALUES (44, 40, 1, 0);
INSERT INTO public.games VALUES (45, 40, 1, 0);
INSERT INTO public.games VALUES (46, 42, 1, 0);
INSERT INTO public.games VALUES (47, 42, 1, 0);
INSERT INTO public.games VALUES (48, 43, 1, 0);
INSERT INTO public.games VALUES (49, 43, 1, 0);
INSERT INTO public.games VALUES (50, 42, 1, 0);
INSERT INTO public.games VALUES (51, 42, 1, 0);
INSERT INTO public.games VALUES (52, 42, 1, 0);
INSERT INTO public.games VALUES (53, 1, 1, 0);
INSERT INTO public.games VALUES (54, 1, 1, 0);
INSERT INTO public.games VALUES (55, 44, 1, 0);
INSERT INTO public.games VALUES (56, 44, 1, 0);
INSERT INTO public.games VALUES (57, 45, 1, 0);
INSERT INTO public.games VALUES (58, 45, 1, 0);
INSERT INTO public.games VALUES (59, 44, 1, 0);
INSERT INTO public.games VALUES (60, 44, 1, 0);
INSERT INTO public.games VALUES (61, 44, 1, 0);
INSERT INTO public.games VALUES (62, 1, 1, 0);
INSERT INTO public.games VALUES (63, 46, 957, 0);
INSERT INTO public.games VALUES (64, 46, 82, 0);
INSERT INTO public.games VALUES (65, 47, 816, 0);
INSERT INTO public.games VALUES (66, 47, 956, 0);
INSERT INTO public.games VALUES (67, 46, 997, 0);
INSERT INTO public.games VALUES (68, 46, 1, 0);
INSERT INTO public.games VALUES (69, 46, 376, 0);
INSERT INTO public.games VALUES (70, 1, 11, 0);
INSERT INTO public.games VALUES (71, 48, 89, 0);
INSERT INTO public.games VALUES (72, 48, 589, 0);
INSERT INTO public.games VALUES (73, 49, 842, 0);
INSERT INTO public.games VALUES (74, 49, 218, 0);
INSERT INTO public.games VALUES (75, 48, 552, 0);
INSERT INTO public.games VALUES (76, 48, 857, 0);
INSERT INTO public.games VALUES (77, 48, 809, 0);
INSERT INTO public.games VALUES (78, 1, 12, 0);
INSERT INTO public.games VALUES (79, 50, 801, 0);
INSERT INTO public.games VALUES (80, 50, 946, 0);
INSERT INTO public.games VALUES (81, 51, 288, 0);
INSERT INTO public.games VALUES (82, 51, 229, 0);
INSERT INTO public.games VALUES (83, 50, 729, 0);
INSERT INTO public.games VALUES (84, 50, 101, 0);
INSERT INTO public.games VALUES (85, 52, 177, 0);
INSERT INTO public.games VALUES (86, 52, 85, 0);
INSERT INTO public.games VALUES (87, 53, 650, 0);
INSERT INTO public.games VALUES (88, 53, 796, 0);
INSERT INTO public.games VALUES (89, 52, 820, 0);
INSERT INTO public.games VALUES (90, 52, 990, 0);
INSERT INTO public.games VALUES (91, 52, 486, 0);
INSERT INTO public.games VALUES (92, 54, 201, 0);
INSERT INTO public.games VALUES (93, 54, 232, 0);
INSERT INTO public.games VALUES (94, 55, 27, 0);
INSERT INTO public.games VALUES (95, 55, 861, 0);
INSERT INTO public.games VALUES (96, 54, 643, 0);
INSERT INTO public.games VALUES (97, 54, 950, 0);
INSERT INTO public.games VALUES (98, 54, 676, 0);
INSERT INTO public.games VALUES (99, 56, 990, 0);
INSERT INTO public.games VALUES (100, 56, 57, 0);
INSERT INTO public.games VALUES (101, 57, 884, 0);
INSERT INTO public.games VALUES (102, 57, 184, 0);
INSERT INTO public.games VALUES (103, 56, 109, 0);
INSERT INTO public.games VALUES (104, 56, 113, 0);
INSERT INTO public.games VALUES (105, 56, 378, 0);
INSERT INTO public.games VALUES (106, 1, 10, 0);
INSERT INTO public.games VALUES (107, 58, 387, 0);
INSERT INTO public.games VALUES (108, 58, 989, 0);
INSERT INTO public.games VALUES (109, 59, 325, 0);
INSERT INTO public.games VALUES (110, 59, 529, 0);
INSERT INTO public.games VALUES (111, 58, 402, 0);
INSERT INTO public.games VALUES (112, 58, 591, 0);
INSERT INTO public.games VALUES (113, 58, 662, 0);
INSERT INTO public.games VALUES (114, 60, 268, 0);
INSERT INTO public.games VALUES (115, 60, 124, 0);
INSERT INTO public.games VALUES (116, 61, 287, 0);
INSERT INTO public.games VALUES (117, 61, 215, 0);
INSERT INTO public.games VALUES (118, 60, 859, 0);
INSERT INTO public.games VALUES (119, 60, 109, 0);
INSERT INTO public.games VALUES (120, 60, 714, 0);
INSERT INTO public.games VALUES (121, 62, 343, 0);
INSERT INTO public.games VALUES (122, 62, 104, 0);
INSERT INTO public.games VALUES (123, 63, 353, 0);
INSERT INTO public.games VALUES (124, 63, 385, 0);
INSERT INTO public.games VALUES (125, 62, 261, 0);
INSERT INTO public.games VALUES (126, 62, 34, 0);
INSERT INTO public.games VALUES (127, 62, 146, 0);
INSERT INTO public.games VALUES (128, 64, 452, 0);
INSERT INTO public.games VALUES (129, 64, 665, 0);
INSERT INTO public.games VALUES (130, 65, 273, 0);
INSERT INTO public.games VALUES (131, 65, 999, 0);
INSERT INTO public.games VALUES (132, 64, 773, 0);
INSERT INTO public.games VALUES (133, 64, 31, 0);
INSERT INTO public.games VALUES (134, 64, 635, 0);
INSERT INTO public.games VALUES (135, 66, 0, 401);
INSERT INTO public.games VALUES (136, 66, 0, 75);
INSERT INTO public.games VALUES (137, 67, 0, 338);
INSERT INTO public.games VALUES (138, 67, 0, 477);
INSERT INTO public.games VALUES (139, 66, 0, 72);
INSERT INTO public.games VALUES (140, 66, 0, 496);
INSERT INTO public.games VALUES (141, 66, 0, 902);
INSERT INTO public.games VALUES (142, 68, 0, 25);
INSERT INTO public.games VALUES (143, 68, 0, 531);
INSERT INTO public.games VALUES (144, 69, 0, 152);
INSERT INTO public.games VALUES (145, 69, 0, 615);
INSERT INTO public.games VALUES (146, 68, 0, 351);
INSERT INTO public.games VALUES (147, 68, 0, 147);
INSERT INTO public.games VALUES (148, 68, 0, 6);
INSERT INTO public.games VALUES (149, 70, 0, 605);
INSERT INTO public.games VALUES (150, 70, 0, 561);
INSERT INTO public.games VALUES (151, 71, 0, 903);
INSERT INTO public.games VALUES (152, 71, 0, 754);
INSERT INTO public.games VALUES (153, 70, 0, 700);
INSERT INTO public.games VALUES (154, 70, 0, 958);
INSERT INTO public.games VALUES (155, 70, 0, 758);
INSERT INTO public.games VALUES (156, 72, 0, 668);
INSERT INTO public.games VALUES (157, 72, 0, 289);
INSERT INTO public.games VALUES (158, 73, 0, 245);
INSERT INTO public.games VALUES (159, 73, 0, 509);
INSERT INTO public.games VALUES (160, 72, 0, 202);
INSERT INTO public.games VALUES (161, 72, 0, 885);
INSERT INTO public.games VALUES (162, 72, 0, 352);
INSERT INTO public.games VALUES (163, 1, 0, 11);
INSERT INTO public.games VALUES (164, 74, 0, 60);
INSERT INTO public.games VALUES (165, 74, 0, 607);
INSERT INTO public.games VALUES (166, 75, 0, 600);
INSERT INTO public.games VALUES (167, 75, 0, 537);
INSERT INTO public.games VALUES (168, 74, 0, 810);
INSERT INTO public.games VALUES (169, 74, 0, 689);
INSERT INTO public.games VALUES (170, 74, 0, 700);
INSERT INTO public.games VALUES (171, 76, 0, 294);
INSERT INTO public.games VALUES (172, 76, 0, 772);
INSERT INTO public.games VALUES (173, 77, 0, 561);
INSERT INTO public.games VALUES (174, 77, 0, 328);
INSERT INTO public.games VALUES (175, 76, 0, 290);
INSERT INTO public.games VALUES (176, 76, 0, 242);
INSERT INTO public.games VALUES (177, 76, 0, 792);
INSERT INTO public.games VALUES (178, 78, 0, 57);
INSERT INTO public.games VALUES (179, 78, 0, 240);
INSERT INTO public.games VALUES (180, 79, 0, 149);
INSERT INTO public.games VALUES (181, 79, 0, 501);
INSERT INTO public.games VALUES (182, 78, 0, 148);
INSERT INTO public.games VALUES (183, 78, 0, 6);
INSERT INTO public.games VALUES (184, 78, 0, 577);
INSERT INTO public.games VALUES (185, 80, 0, 660);
INSERT INTO public.games VALUES (186, 80, 0, 240);
INSERT INTO public.games VALUES (187, 81, 0, 283);
INSERT INTO public.games VALUES (188, 81, 0, 92);
INSERT INTO public.games VALUES (189, 80, 0, 755);
INSERT INTO public.games VALUES (190, 80, 0, 724);
INSERT INTO public.games VALUES (191, 80, 0, 997);
INSERT INTO public.games VALUES (192, 82, 0, 997);
INSERT INTO public.games VALUES (193, 82, 0, 100);
INSERT INTO public.games VALUES (194, 83, 0, 407);
INSERT INTO public.games VALUES (195, 83, 0, 698);
INSERT INTO public.games VALUES (196, 82, 0, 836);
INSERT INTO public.games VALUES (197, 82, 0, 350);
INSERT INTO public.games VALUES (198, 82, 0, 895);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1743603478430', 0);
INSERT INTO public.users VALUES (4, 'user_1743603478429', 0);
INSERT INTO public.users VALUES (9, 'user_1743604071601', 0);
INSERT INTO public.users VALUES (11, 'user_1743604071600', 0);
INSERT INTO public.users VALUES (16, 'user_1743604189725', 0);
INSERT INTO public.users VALUES (18, 'user_1743604189724', 0);
INSERT INTO public.users VALUES (24, 'ola', 0);
INSERT INTO public.users VALUES (25, 'asd', 0);
INSERT INTO public.users VALUES (26, 'a', 0);
INSERT INTO public.users VALUES (27, 'as', 0);
INSERT INTO public.users VALUES (28, 'user_1743605529147', 0);
INSERT INTO public.users VALUES (29, 'user_1743605529146', 0);
INSERT INTO public.users VALUES (30, 'user_1743605683768', 0);
INSERT INTO public.users VALUES (31, 'user_1743605683767', 0);
INSERT INTO public.users VALUES (32, 'user_1743605774230', 0);
INSERT INTO public.users VALUES (33, 'user_1743605774229', 0);
INSERT INTO public.users VALUES (34, 'user_1743605819883', 0);
INSERT INTO public.users VALUES (35, 'user_1743605819882', 0);
INSERT INTO public.users VALUES (36, 'user_1743605869604', 0);
INSERT INTO public.users VALUES (37, 'user_1743605869603', 0);
INSERT INTO public.users VALUES (38, 'user_1743606061372', 0);
INSERT INTO public.users VALUES (39, 'user_1743606061371', 0);
INSERT INTO public.users VALUES (40, 'user_1743606219701', 0);
INSERT INTO public.users VALUES (41, 'user_1743606219700', 0);
INSERT INTO public.users VALUES (42, 'user_1743606323325', 0);
INSERT INTO public.users VALUES (43, 'user_1743606323324', 0);
INSERT INTO public.users VALUES (44, 'user_1743606511510', 0);
INSERT INTO public.users VALUES (45, 'user_1743606511509', 0);
INSERT INTO public.users VALUES (46, 'user_1743606549735', 0);
INSERT INTO public.users VALUES (47, 'user_1743606549734', 0);
INSERT INTO public.users VALUES (48, 'user_1743607846838', 0);
INSERT INTO public.users VALUES (49, 'user_1743607846837', 0);
INSERT INTO public.users VALUES (50, 'user_1743608023838', 0);
INSERT INTO public.users VALUES (51, 'user_1743608023837', 0);
INSERT INTO public.users VALUES (52, 'user_1743608056453', 0);
INSERT INTO public.users VALUES (53, 'user_1743608056452', 0);
INSERT INTO public.users VALUES (54, 'user_1743608087877', 0);
INSERT INTO public.users VALUES (55, 'user_1743608087876', 0);
INSERT INTO public.users VALUES (56, 'user_1743608202184', 0);
INSERT INTO public.users VALUES (57, 'user_1743608202183', 0);
INSERT INTO public.users VALUES (58, 'user_1743608290528', 0);
INSERT INTO public.users VALUES (59, 'user_1743608290527', 0);
INSERT INTO public.users VALUES (60, 'user_1743608325564', 0);
INSERT INTO public.users VALUES (61, 'user_1743608325563', 0);
INSERT INTO public.users VALUES (62, 'user_1743608382873', 0);
INSERT INTO public.users VALUES (63, 'user_1743608382872', 0);
INSERT INTO public.users VALUES (64, 'user_1743608401516', 0);
INSERT INTO public.users VALUES (65, 'user_1743608401515', 0);
INSERT INTO public.users VALUES (67, 'user_1743608732469', 2);
INSERT INTO public.users VALUES (66, 'user_1743608732470', 5);
INSERT INTO public.users VALUES (69, 'user_1743608766637', 2);
INSERT INTO public.users VALUES (68, 'user_1743608766638', 5);
INSERT INTO public.users VALUES (71, 'user_1743608803037', 2);
INSERT INTO public.users VALUES (70, 'user_1743608803038', 5);
INSERT INTO public.users VALUES (73, 'user_1743608821378', 2);
INSERT INTO public.users VALUES (72, 'user_1743608821379', 5);
INSERT INTO public.users VALUES (1, 'Alexis', 1);
INSERT INTO public.users VALUES (75, 'user_1743608956834', 2);
INSERT INTO public.users VALUES (74, 'user_1743608956835', 5);
INSERT INTO public.users VALUES (77, 'user_1743608977881', 2);
INSERT INTO public.users VALUES (76, 'user_1743608977882', 5);
INSERT INTO public.users VALUES (79, 'user_1743609102580', 2);
INSERT INTO public.users VALUES (78, 'user_1743609102581', 5);
INSERT INTO public.users VALUES (81, 'user_1743609121159', 2);
INSERT INTO public.users VALUES (80, 'user_1743609121160', 5);
INSERT INTO public.users VALUES (83, 'user_1743609224197', 2);
INSERT INTO public.users VALUES (82, 'user_1743609224198', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 198, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 83, true);


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
-- Name: games fk_users_games; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_users_games FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

