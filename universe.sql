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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(40) NOT NULL,
    is_a_dwarf_galaxy boolean,
    is_a_young_galaxy boolean,
    galaxy_age_in_billions integer NOT NULL,
    number_of_stars integer NOT NULL,
    diameter_in_lightyears numeric,
    description text
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
-- Name: meteor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.meteor (
    meteor_id integer NOT NULL,
    name character varying(40),
    number_of_meteor integer NOT NULL,
    next_appearance integer NOT NULL
);


ALTER TABLE public.meteor OWNER TO postgres;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.meteor_meteor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.meteor_meteor_id_seq OWNER TO postgres;

--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.meteor_meteor_id_seq OWNED BY public.meteor.meteor_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(40) NOT NULL,
    orbital_period_in_days integer NOT NULL,
    superficial_gravity numeric,
    has_been_visited boolean,
    diameter_size_in_miles numeric NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    does_have_natural_resources boolean,
    description text,
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
    name character varying(40) NOT NULL,
    full_day_cicle_in_hours integer NOT NULL,
    number_of_moons integer NOT NULL,
    description text,
    diameter_size_in_miles numeric,
    can_be_inhabited boolean,
    does_have_life boolean,
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
    name character varying(40) NOT NULL,
    is_a_dwarf_star boolean,
    is_a_supernova boolean,
    age_in_millions_of_years integer NOT NULL,
    temperature_in_celsius numeric NOT NULL,
    number_of_planets_in_orbit integer NOT NULL,
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
-- Name: meteor meteor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meteor ALTER COLUMN meteor_id SET DEFAULT nextval('public.meteor_meteor_id_seq'::regclass);


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

COPY public.galaxy (galaxy_id, name, is_a_dwarf_galaxy, is_a_young_galaxy, galaxy_age_in_billions, number_of_stars, diameter_in_lightyears, description) FROM stdin;
1	Milky Way	f	f	13	1000000000	100000.00	Spiral galaxy containing the Solar System.
2	Andromeda	f	f	10	1000000000	120000.00	Largest galaxy in the Local Group, expected to collide with the Milky Way.
3	Triangulum	t	f	5	400000000	60000.00	Small spiral galaxy in the Local Group.
4	Large Magellanic Cloud	t	t	1	300000000	14000.00	Satellite galaxy of the Milky Way, irregular in shape.
5	Small Magellanic Cloud	t	t	2	200000000	7000.00	Satellite galaxy of the Milky Way, irregular in shape.
6	Messier 87	f	f	10	2000000000	300000.00	Elliptical galaxy in the Virgo Cluster, known for its supermassive black hole.
\.


--
-- Data for Name: meteor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.meteor (meteor_id, name, number_of_meteor, next_appearance) FROM stdin;
1	A	5	3
2	B	3	10
3	C	10	5
\.


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.moon (moon_id, name, orbital_period_in_days, superficial_gravity, has_been_visited, diameter_size_in_miles, age_in_millions_of_years, does_have_natural_resources, description, planet_id) FROM stdin;
1	Luna	27	1.62	t	2159.14	4500	t	Earth's natural satellite.	1
2	Phobos	0	0.0057	f	13.6	4500	f	Moon of Mars, irregular shape.	2
3	Deimos	1	0.003	f	7.8	4500	f	Moon of Mars, smaller and farther than Phobos.	3
20	Tethys	2	0.145	f	660.00	4500	f	Moon of Saturn, heavily cratered with a large canyon.	15
19	Umbriel	4	0.21	f	727.42	4500	f	Moon of Uranus, dark and heavily cratered.	16
18	Ariel	3	0.27	f	1157.80	4500	f	Moon of Uranus, young and smooth surface.	17
17	Miranda	1	0.079	f	290.00	4500	f	Moon of Uranus, varied terrain including ice canyons.	18
16	Mimas	1	0.064	f	246.60	4500	f	Moon of Saturn, large impact crater giving it a "Death Star" appearance.	19
15	Dione	3	0.232	f	698.44	4500	f	Moon of Saturn, known for its bright icy surface.	19
14	Rhea	5	0.264	f	949.90	4500	f	Moon of Saturn, second-largest by diameter.	20
13	Titania	9	0.38	f	980.82	4500	f	Largest moon of Uranus, heavily cratered surface.	21
12	Phoebe	-550	0.066	f	137.98	4500	f	Moon of Saturn, retrograde orbit, irregular shape.	22
11	Charon	6	0.278	t	751.46	4500	f	Moon of Pluto, nearly half the size of Pluto itself.	23
10	Io	2	1.796	f	2318.20	4500	t	Most volcanically active body in the Solar System.	1
9	Callisto	17	1.235	f	3041.03	4500	f	Moon of Jupiter, heavily cratered.	2
8	Triton	-6	0.779	f	1680.00	4500	f	Largest moon of Neptune, retrograde orbit.	3
7	Enceladus	1	0.113	f	313.54	4500	t	Moon of Saturn, geologically active.	15
6	Europa	4	1.314	f	1940.91	4500	f	Moon of Jupiter, suspected subsurface ocean.	15
5	Titan	16	1.352	t	3200.00	4500	t	Largest moon of Saturn, has an atmosphere.	16
4	Ganymede	7	1.428	t	3270.93	4500	t	Largest moon of Jupiter.	17
\.


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.planet (planet_id, name, full_day_cicle_in_hours, number_of_moons, description, diameter_size_in_miles, can_be_inhabited, does_have_life, star_id) FROM stdin;
1	Earth	24	1	The homeland of humans	\N	t	t	1
2	Mars	24	2	The red planet	\N	t	f	2
3	CoRoT-7b	20	0	Extrasolar planet	\N	f	f	3
23	Proxima Centauri b	11	0	Exoplanet orbiting Proxima Centauri, potentially in the habitable zone.	\N	t	f	4
22	Kepler-452b	24	0	Exoplanet similar to Earth, orbiting in the habitable zone of its star.	\N	t	f	5
21	Pluto	153	5	Dwarf planet in the Kuiper Belt.	\N	f	f	6
20	Neptune	16	14	Eighth planet from the Sun, known for its deep blue color.	\N	f	f	7
19	Uranus	17	27	Seventh planet from the Sun, tilted on its axis.	\N	f	f	8
18	Saturn	11	82	Sixth planet from the Sun, known for its rings.	\N	f	f	9
17	Jupiter	10	79	Fifth planet from the Sun, gas giant with a prominent red spot.	\N	f	f	10
16	Venus	5832	0	Second planet from the Sun, known for its thick atmosphere.	\N	f	f	11
15	Mercury	1407	0	Innermost planet in the Solar System.	\N	f	f	12
\.


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

COPY public.star (star_id, name, is_a_dwarf_star, is_a_supernova, age_in_millions_of_years, temperature_in_celsius, number_of_planets_in_orbit, galaxy_id) FROM stdin;
1	Sun	f	f	4600	5505.00	8	1
2	Sirius	f	f	240	9940.00	2	2
3	Betelgeuse	f	t	800	3600.00	0	3
4	Proxima Centauri	t	f	500	2700.00	1	4
5	Kepler-11	f	f	780	5680.50	6	5
6	TRAPPIST-1	t	f	500	2550.75	7	6
7	Alpha Centauri A	f	f	600	5790.25	0	1
12	Ross 154	t	f	300	3330.00	0	3
11	Barnard's Star	t	f	800	3130.00	0	3
10	Luhman 16	t	f	300	2080.50	0	4
9	Tau Ceti	f	f	600	5340.00	4	6
8	Wolf 359	t	f	250	3410.00	0	6
\.


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: meteor_meteor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.meteor_meteor_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 25, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 14, true);


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
-- Name: meteor meteor_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_name_key UNIQUE (name);


--
-- Name: meteor meteor_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.meteor
    ADD CONSTRAINT meteor_pkey PRIMARY KEY (meteor_id);


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

