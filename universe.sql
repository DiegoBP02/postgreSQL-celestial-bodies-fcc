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
    has_life boolean NOT NULL,
    name character varying(20) NOT NULL,
    iseliptical boolean,
    isirregular boolean
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
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth numeric NOT NULL,
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
    name character varying(20) NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean NOT NULL,
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
-- Name: rocket; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rocket (
    rocket_id integer NOT NULL,
    name character varying(20) NOT NULL,
    brand character varying(20)
);


ALTER TABLE public.rocket OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rocket_rocket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rocket_rocket_id_seq OWNER TO freecodecamp;

--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rocket_rocket_id_seq OWNED BY public.rocket.rocket_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    origin text,
    galaxy_id integer,
    issupermassive boolean
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: rocket rocket_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket ALTER COLUMN rocket_id SET DEFAULT nextval('public.rocket_rocket_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, true, 'andromeda', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, true, 'dark eye', false, true);
INSERT INTO public.galaxy VALUES (3, false, 'charuto', true, true);
INSERT INTO public.galaxy VALUES (4, true, 'cometa', false, true);
INSERT INTO public.galaxy VALUES (5, false, 'cartwheel', false, false);
INSERT INTO public.galaxy VALUES (6, false, 'redshift', true, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 15, 4, 2);
INSERT INTO public.moon VALUES (2, 'moon', 1, 1, 2);
INSERT INTO public.moon VALUES (3, 'phobos', 2, 2, 3);
INSERT INTO public.moon VALUES (4, 'deimos', 3, 3, 4);
INSERT INTO public.moon VALUES (5, 'io', 4, 4, 5);
INSERT INTO public.moon VALUES (6, 'europa', NULL, 11, NULL);
INSERT INTO public.moon VALUES (7, 'ganymede', NULL, 12, NULL);
INSERT INTO public.moon VALUES (8, 'callisto', NULL, 13, NULL);
INSERT INTO public.moon VALUES (9, 'mimas', NULL, 14, NULL);
INSERT INTO public.moon VALUES (10, 'enceladus', NULL, 15, NULL);
INSERT INTO public.moon VALUES (11, 'tethys', NULL, 16, NULL);
INSERT INTO public.moon VALUES (12, 'dione', NULL, 17, NULL);
INSERT INTO public.moon VALUES (13, 'rhea', NULL, 18, NULL);
INSERT INTO public.moon VALUES (14, 'titan', NULL, 19, NULL);
INSERT INTO public.moon VALUES (15, 'hyperion', NULL, 20, NULL);
INSERT INTO public.moon VALUES (16, 'iapetus', NULL, 21, NULL);
INSERT INTO public.moon VALUES (17, 'ariel', NULL, 22, NULL);
INSERT INTO public.moon VALUES (18, 'umbriel', NULL, 23, NULL);
INSERT INTO public.moon VALUES (19, 'titania', NULL, 24, NULL);
INSERT INTO public.moon VALUES (20, 'oberon', NULL, 25, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (2, 'earth', 20, true, 1);
INSERT INTO public.planet VALUES (3, 'mercury', 33, true, 7);
INSERT INTO public.planet VALUES (4, 'venus', 34, true, 8);
INSERT INTO public.planet VALUES (5, 'earth', 35, true, 9);
INSERT INTO public.planet VALUES (6, 'mars', 36, true, 10);
INSERT INTO public.planet VALUES (7, 'jupiter', 37, true, 11);
INSERT INTO public.planet VALUES (8, 'saturn', 41, true, 1);
INSERT INTO public.planet VALUES (9, 'uranus', 42, true, 7);
INSERT INTO public.planet VALUES (10, 'neptune', 43, true, 8);
INSERT INTO public.planet VALUES (11, 'ceres', 44, true, 9);
INSERT INTO public.planet VALUES (12, 'pluto', 45, true, 10);
INSERT INTO public.planet VALUES (13, 'haumea', 46, true, 11);


--
-- Data for Name: rocket; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rocket VALUES (1, 'magnus', 'teslas');
INSERT INTO public.rocket VALUES (2, 'launcher', 'microsoft');
INSERT INTO public.rocket VALUES (3, 'rocketer', 'google');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'baskar', 'andromeda', 1, NULL);
INSERT INTO public.star VALUES (7, 'sirius', 'sirius', 2, true);
INSERT INTO public.star VALUES (8, 'centauri', 'centauri', 3, true);
INSERT INTO public.star VALUES (9, 'arcturus', 'arcturus', 4, false);
INSERT INTO public.star VALUES (10, 'canopus', 'canopus', 5, false);
INSERT INTO public.star VALUES (11, 'rigel', 'rigel', 6, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: rocket_rocket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rocket_rocket_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 11, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon id_moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT id_moon_unique UNIQUE (moon_id);


--
-- Name: planet id_planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT id_planet_unique UNIQUE (planet_id);


--
-- Name: rocket id_rocket_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT id_rocket_unique UNIQUE (rocket_id);


--
-- Name: star id_star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT id_star_unique UNIQUE (star_id);


--
-- Name: galaxy id_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT id_unique UNIQUE (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: rocket rocket_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rocket
    ADD CONSTRAINT rocket_pkey PRIMARY KEY (rocket_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

