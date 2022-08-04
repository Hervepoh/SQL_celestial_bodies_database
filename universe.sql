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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    is_spherical boolean,
    age_in_millions_of_years numeric(4,1),
    galaxy_type integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text NOT NULL,
    planet_id integer,
    created_at date
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(50) NOT NULL,
    is_spherical boolean,
    planet_types integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50) NOT NULL,
    has_life boolean,
    galaxy_id integer,
    created_at date
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: type; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.type (
    type_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text
);


ALTER TABLE public.type OWNER TO freecodecamp;

--
-- Name: type_type_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.type_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.type_type_id_seq OWNER TO freecodecamp;

--
-- Name: type_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.type_type_id_seq OWNED BY public.type.type_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: type type_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type ALTER COLUMN type_id SET DEFAULT nextval('public.type_type_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Lion', 'Lion', true, 184.8, 1);
INSERT INTO public.galaxy VALUES (2, 'Lion1', 'Lion1', true, 184.8, 1);
INSERT INTO public.galaxy VALUES (3, 'Pégase', 'Pégase', true, 214.0, 1);
INSERT INTO public.galaxy VALUES (4, 'Grande Ourse', 'Grande Ourse', true, 215.0, 1);
INSERT INTO public.galaxy VALUES (5, 'Sculpteur', 'Sculpteur', false, 217.0, 1);
INSERT INTO public.galaxy VALUES (6, 'Pégasus', 'Pégasus', true, 15.0, 2);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (4, 'Hegemone', 'S. Sheppard, D. Jewitt, & J. Kleyna', 3, NULL);
INSERT INTO public.moon VALUES (5, 'Elara', ' C. Perrine', 3, NULL);
INSERT INTO public.moon VALUES (6, 'Himalia', ' C. Perrine', 3, NULL);
INSERT INTO public.moon VALUES (83, 'Moon (or Luna)', ' C. Perrine', 1, NULL);
INSERT INTO public.moon VALUES (84, 'Janus', 'A. Dollfus', 3, NULL);
INSERT INTO public.moon VALUES (85, 'Phobos', 'A. Hall', 3, NULL);
INSERT INTO public.moon VALUES (86, 'Deimos', 'A. Hall', 3, NULL);
INSERT INTO public.moon VALUES (87, 'Telesto', 'B. Smith', 3, NULL);
INSERT INTO public.moon VALUES (88, 'Calypso', 'B. Smith', 3, NULL);
INSERT INTO public.moon VALUES (89, 'Titan', 'C. Huygens', 3, NULL);
INSERT INTO public.moon VALUES (90, 'Leda', 'C. Kowal', 3, NULL);
INSERT INTO public.moon VALUES (91, 'Themisto', 'C.C. Porco et al./Cassini', 3, NULL);
INSERT INTO public.moon VALUES (92, 'Polydeuces', 'C.C. Porco et al./Cassini', 3, NULL);
INSERT INTO public.moon VALUES (93, 'Pallene', 'C.C. Porco et al./Cassini', 3, NULL);
INSERT INTO public.moon VALUES (94, 'Methone', 'C.C. Porco et al./Cassini', 3, NULL);
INSERT INTO public.moon VALUES (95, 'Daphnis', 'Cassini Imaging Science Team', 3, NULL);
INSERT INTO public.moon VALUES (96, 'Anthe', 'Cassini Imaging Team', 3, NULL);
INSERT INTO public.moon VALUES (97, 'Psamathe', 'D. Jewitt, J. Kleyna & S. Sheppard', 3, NULL);
INSERT INTO public.moon VALUES (98, 'Dione', 'G. Cassini', 3, NULL);
INSERT INTO public.moon VALUES (99, 'Ganymede', 'Galileo', 3, NULL);
INSERT INTO public.moon VALUES (100, 'Europa', 'Galileo', 3, NULL);
INSERT INTO public.moon VALUES (101, 'Callisto', 'Galileo', 3, NULL);
INSERT INTO public.moon VALUES (102, 'Nix', 'H.A. Weaver, S.A. Stern, et al.', 3, NULL);
INSERT INTO public.moon VALUES (103, 'Hydra', ' C. Perrine', 3, NULL);
INSERT INTO public.moon VALUES (104, 'Neso', 'Holman & Gladman et al', 3, NULL);
INSERT INTO public.moon VALUES (105, 'Ymir', 'Intl. Team of 8 Astronomers', 3, NULL);
INSERT INTO public.moon VALUES (106, 'Thrymr', 'Intl. Team of 8 Astronomers', 3, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'satrun', NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Jupyter', NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Venus', NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Uranus', NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Pluton', NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Mercury', NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Haumea', NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Halley commet', NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Eris', NULL, NULL, 2);
INSERT INTO public.planet VALUES (12, 'Rv', NULL, NULL, 1);
INSERT INTO public.planet VALUES (13, 'Pionner 10', NULL, NULL, 2);
INSERT INTO public.planet VALUES (14, 'New Horrizon', NULL, NULL, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', true, 1, NULL);
INSERT INTO public.star VALUES (2, 'star2', true, 1, NULL);
INSERT INTO public.star VALUES (3, 'star3', false, 2, NULL);
INSERT INTO public.star VALUES (4, 'star4', true, 2, NULL);
INSERT INTO public.star VALUES (5, 'star5', true, 3, NULL);
INSERT INTO public.star VALUES (6, 'star6', false, 3, NULL);


--
-- Data for Name: type; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.type VALUES (1, 'type1', NULL);
INSERT INTO public.type VALUES (2, 'type2', NULL);
INSERT INTO public.type VALUES (3, 'type3', NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 106, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 14, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: type_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.type_type_id_seq', 3, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: type type_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_description_key UNIQUE (description);


--
-- Name: type type_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.type
    ADD CONSTRAINT type_pkey PRIMARY KEY (type_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

