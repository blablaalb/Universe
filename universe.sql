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
    name character varying(30) NOT NULL,
    description text,
    constellation character varying(30),
    apparent_magnitude numeric NOT NULL
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
-- Name: martian; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.martian (
    martian_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer,
    planet_id integer
);


ALTER TABLE public.martian OWNER TO freecodecamp;

--
-- Name: martian_martian_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.martian_martian_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.martian_martian_id_seq OWNER TO freecodecamp;

--
-- Name: martian_martian_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.martian_martian_id_seq OWNED BY public.martian.martian_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    radius numeric,
    age integer,
    planet_id integer
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
    name character varying(30) NOT NULL,
    description text,
    age integer,
    aphelion integer,
    has_rings boolean,
    inhabited boolean,
    radius numeric,
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
    name character varying(30) NOT NULL,
    description text,
    radius numeric,
    age integer,
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: martian martian_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.martian ALTER COLUMN martian_id SET DEFAULT nextval('public.martian_martian_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', 'Also known as Messier 31, M31, or NGC 224 and originally the Andromeda nebula, is a barred spiral galaxy with the diameter of about 46.56 kiloparsecs.', 'Andromeda', 3.44);
INSERT INTO public.galaxy VALUES (2, 'Antennae', 'The Antennae Galaxies (also known as NGC 4038/NGC 4039 or Caldwell 60/Caldwell 61) are a pair of interacting galaxies in the constellation Corvus.', 'Corvus', 11.2);
INSERT INTO public.galaxy VALUES (3, 'NGC 4622', 'NGC 4622 is a face-on unbarred spiral galaxy with a very prominent structure located in the constellation Centaurus', 'Centaurus', 12.6);
INSERT INTO public.galaxy VALUES (4, 'Black Eye', 'The Black Eye (also called Sleeping Beauty Galaxy or Evil Eye Galaxy and designated Missier 64, M64, or 4826) is a relatively isolated spiral galaxy 17 million light-years away in the mildly northem constellation of Coma Berenices.', 'Coma Berencies', 9.36);
INSERT INTO public.galaxy VALUES (5, 'Bodes Galaxy', 'Messier 81 (also known as NGC 3031 or Bodes Galaxy) is a grand design spiral galaxy about 12 million light-years away in the constellation Ursa Major.', 'Ursa Major', 6.94);
INSERT INTO public.galaxy VALUES (6, 'Butterfly Galaxies', 'NGC 4567 and NGC 4568 (nicknamed the Butterfly Galaxies or Siamese Twins) are a set of unbarred spiral galaxies about 60 million light-years away in the constellation Virgo', 'Virgo', 10.9);


--
-- Data for Name: martian; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.martian VALUES (1, 'martian1', 324423, 1);
INSERT INTO public.martian VALUES (2, 'martian2', 2342342, 2);
INSERT INTO public.martian VALUES (3, 'martian3', 324232, 3);
INSERT INTO public.martian VALUES (4, 'martian4', 234234, 4);
INSERT INTO public.martian VALUES (5, 'martian5', 234234, 4);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'moon1 description', 111111, 111111111, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 'moon2 description', 111111, 111111111, 2);
INSERT INTO public.moon VALUES (3, 'moon3', 'moon3 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (4, 'moon4', 'moon4 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (5, 'moon5', 'moon5 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (6, 'moon6', 'moon6 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (7, 'moon7', 'moon7 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (8, 'moon8', 'moon8 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (9, 'moon9', 'moon9 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (10, 'moon10', 'moon10 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (11, 'moon11', 'moon11 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (12, 'moon12', 'moon12 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (13, 'moon13', 'moon13 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (15, 'moon14', 'moon14 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (16, 'moon15', 'moon15 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (17, 'moon16', 'moon16 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (18, 'moon17', 'moon17 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (19, 'moon18', 'moon18 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (20, 'moon19', 'moon19 description', 111111, 111111111, 3);
INSERT INTO public.moon VALUES (21, 'moon20', 'moon20 description', 111111, 111111111, 3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Made up name 1', 'Made up description 1', 1000000000, 518, false, false, 23.323, 1);
INSERT INTO public.planet VALUES (2, 'Made up name 2', 'Made up description 2', 1000000000, 518, false, false, 23.323, 2);
INSERT INTO public.planet VALUES (3, 'Made up name 3', 'Made up description 3', 1000000000, 518, false, false, 23.323, 3);
INSERT INTO public.planet VALUES (4, 'Made up name 4', 'Made up description 4', 1000000000, 518, false, false, 23.323, 4);
INSERT INTO public.planet VALUES (5, 'Made up name 5', 'Made up description 5', 1000000000, 518, false, false, 23.323, 4);
INSERT INTO public.planet VALUES (6, 'Made up name 6', 'Made up description 6', 1000000000, 518, false, false, 23.323, 4);
INSERT INTO public.planet VALUES (7, 'Made up name76', 'Made up description 7', 1000000000, 518, false, false, 23.323, 4);
INSERT INTO public.planet VALUES (8, 'Made up name 8', 'Made up description 8', 1000000000, 518, false, false, 23.323, 4);
INSERT INTO public.planet VALUES (9, 'Made up name 9', 'Made up description 9', 1000000000, 518, false, false, 23.323, 4);
INSERT INTO public.planet VALUES (10, 'Made up name 10', 'Made up description 10', 1000000000, 518, false, false, 23.323, 4);
INSERT INTO public.planet VALUES (11, 'Made up name 11', 'Made up description 11', 1000000000, 518, false, false, 23.323, 4);
INSERT INTO public.planet VALUES (12, 'Made up name 12', 'Made up description 12', 1000000000, 518, false, false, 23.323, 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Andromedae', 'Officially named Alpheratz is 97 light-years from the Sun and is the brightest star in the constellation of Andromeda when Beta Andromeda undergoes its periodical dimming.', 2.7, 60, 1);
INSERT INTO public.star VALUES (2, 'Beta Andromedae', 'Prominent star in the northem cosntellation of Andromedia.', 100, NULL, 1);
INSERT INTO public.star VALUES (3, 'Upsilon Andromedae', 'Binary star located 44 light-years from Earth.', 1.480, NULL, 1);
INSERT INTO public.star VALUES (4, 'Made up Star 1', 'Great star', 1.480, NULL, 2);
INSERT INTO public.star VALUES (5, 'Made up Star 2', 'Great star 2', 1.480, NULL, 3);
INSERT INTO public.star VALUES (6, 'Made up Star 3', 'Great star 3', 1.480, NULL, 4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: martian_martian_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.martian_martian_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: martian martian_martian_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.martian
    ADD CONSTRAINT martian_martian_id_key UNIQUE (martian_id);


--
-- Name: martian martian_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.martian
    ADD CONSTRAINT martian_pkey PRIMARY KEY (martian_id);


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
-- Name: martian martian_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.martian
    ADD CONSTRAINT martian_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

