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
    distance_from_earth integer NOT NULL,
    galaxy_tipe_id integer NOT NULL
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
-- Name: galaxy_tipe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_tipe (
    galaxy_tipe_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.galaxy_tipe OWNER TO freecodecamp;

--
-- Name: galaxy_tipe_galaxy_tipe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_tipe_galaxy_tipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_tipe_galaxy_tipe_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_tipe_galaxy_tipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_tipe_galaxy_tipe_id_seq OWNED BY public.galaxy_tipe.galaxy_tipe_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    diameter_in_km integer NOT NULL,
    planet_id integer NOT NULL
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
    diameter_in_km integer,
    distance_from_earth integer,
    has_life boolean NOT NULL,
    is_spherical boolean,
    star_id integer NOT NULL,
    planet_tipe_id integer NOT NULL
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
-- Name: planet_tipe; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet_tipe (
    planet_tipe_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.planet_tipe OWNER TO freecodecamp;

--
-- Name: planet_tipe_planet_tipe_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_tipe_planet_tipe_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_tipe_planet_tipe_id_seq OWNER TO freecodecamp;

--
-- Name: planet_tipe_planet_tipe_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_tipe_planet_tipe_id_seq OWNED BY public.planet_tipe.planet_tipe_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_10_raised_9_of_years numeric(10,3) NOT NULL,
    distance_from_earth integer NOT NULL,
    galaxy_id integer NOT NULL
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
-- Name: galaxy_tipe galaxy_tipe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_tipe ALTER COLUMN galaxy_tipe_id SET DEFAULT nextval('public.galaxy_tipe_galaxy_tipe_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: planet_tipe planet_tipe_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_tipe ALTER COLUMN planet_tipe_id SET DEFAULT nextval('public.planet_tipe_planet_tipe_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, 2540000, 1);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, 0, 1);
INSERT INTO public.galaxy VALUES (3, 'Black Eye Galaxy', NULL, 24010000, 1);
INSERT INTO public.galaxy VALUES (4, 'Bodes Galaxy', NULL, 11740000, 1);
INSERT INTO public.galaxy VALUES (5, 'Cartwheel Galaxy', NULL, 489200000, 3);
INSERT INTO public.galaxy VALUES (6, 'Cigar Galaxy', NULL, 12000000, 4);


--
-- Data for Name: galaxy_tipe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_tipe VALUES (1, 'Spiral', 'Our Milky Way is one example of a broad class of galaxies defined by the presence of spiral arms. These galaxies resemble giant rotating pinwheels with a pancake-like disk of stars and a central bulge or tight concentration of stars. The spiral arms can be wound tightly or loosely, and some cannot be seen from Earth because we view the galaxy from the side, edge on. Spiral galaxies are surrounded by halos, mixtures of old stars, star clusters, and dark matter – invisible material that does not emit or reflect light but still has a gravitational pull on other matter. The youngest stars form in gas-rich arms, while older stars can be found throughout the disk and within the bulge and halo. Both the Milky Way and the Andromeda galaxies belong to a subtype known as barred spirals, which make up two-thirds of the group. Barred spirals sport ribbons of stars, gas, and dust that cut across their centers. Scientists think the presence of a bar indicates that a galaxy has reached full maturity.');
INSERT INTO public.galaxy_tipe VALUES (2, 'Elliptical', 'Elliptical galaxies have shapes that range from completely round to oval. They are less common than spiral galaxies. Unlike spirals, elliptical galaxies usually contain little gas and dust and show very little organization or structure. The stars orbit around the core in random directions and are generally older than those in spiral galaxies since little of the gas needed to form new stars remains. Scientists think elliptical galaxies originate from collisions and mergers with spirals.');
INSERT INTO public.galaxy_tipe VALUES (3, 'Lenticular', 'Lenticular galaxies are a kind of cross between spirals and ellipticals. They have the central bulge and disk common to spiral galaxies but no arms. But like ellipticals, lenticular galaxies have older stellar populations and little ongoing star formation. Scientists have a few theories about how lenticular galaxies evolved. One idea suggests these galaxies are older spirals whose arms have faded. Another proposes that lenticulars formed from mergers of spiral galaxies. ');
INSERT INTO public.galaxy_tipe VALUES (4, 'Irregular', 'Irregular galaxies have unusual shapes, like toothpicks, rings, or even little groupings of stars. They range from dwarf irregular galaxies with 100 million times the Sun’s mass to large ones weighing 10 billion solar masses. Astronomers think these galaxies’ odd shapes are sometimes the result of interactions with others. For example, one spiral galaxy passing another with a stronger gravitational pull could lose some of its material, become distorted, and morph into a new shape. Some, like gas-rich dwarf galaxies, may be new, formed by material pulled from such encounters. Or perhaps when galaxies collide, they create a larger, oddly shaped mashup. Some scientists theorize that some large irregular galaxies could represent an intermediate step between spiral and elliptical galaxies. Irregular galaxies born from galaxy interactions or collisions typically host a mix of older and younger stars, depending on the characteristics and composition of the original galaxies. Irregular galaxies may also hold significant amounts of gas and dust – essential ingredients for making new stars. ');
INSERT INTO public.galaxy_tipe VALUES (5, 'Active', 'Around 10% of known galaxies are active, which means their centers appear more than 100 times brighter than the combined light of their stars. They can be spiral, elliptical, or irregular. The Milky Way is not currently an active galaxy, although it likely experienced a burst of activity in the past few million years. Astronomers think this excess energy comes from areas near the galaxies’ central supermassive black holes, which range from hundreds of thousands to billions of times the mass of our Sun. Gas and dust collect around the black hole to form an accretion disk. The black hole’s gravity compresses and heats the disk, which causes the material to glow across multiple wavelengths, from infrared to X-rays. Infrared observations show that the black hole and its accretion disk are embedded within a clumpy ring of cooler dust, called a torus, that may be a few light-years across. Close to the black hole, a small fraction of the infalling gas can be driven outward, perpendicular to the disk, as jets of particles that move near the speed of light. During the early 20th century, astronomers began classifying active galaxies based on the distinctive characteristics and behaviors they observed. Scientists now think viewing the centers of these galaxies at different angles – for example, seeing directly into the torus versus seeing it from the side – produce many of the signature traits. Active galaxies can also be categorized by their brightness in radio wavelengths. Radio-loud galaxies typically emit from both the accretion disk and the jets. Radio-quiet galaxies tend to have little-to-no emission from jets. The observed luminosity is also thought to be another aspect of our viewing angle. Jets directed more toward our line of sight, viewed “down the barrel,” appear brighter and more variable than those viewed at wider angles.');
INSERT INTO public.galaxy_tipe VALUES (6, 'Seyfert', 'Seyfert galaxies, first identified in 1943 by American astronomer Carl Seyfert, are the most common active galaxies and also exhibit the lowest energies. All Seyferts look like normal galaxies in visible light, but they emit considerable infrared radiation. When observed in the infrared, some reveal bright emission from the donut-shaped torus. Some also emit X-rays. Seyfert galaxies tend to have lower radio luminosities, although some produce radio jets. Scientists divide Seyferts into two classes. Type I Seyfert galaxies display unusual features in their visible light that imply rapid motion near the accretion disk. Type II Seyferts show features that imply much slower motion. However, this distinction may result from different viewing angles into the centers of these galaxies. ');
INSERT INTO public.galaxy_tipe VALUES (7, 'Quasars', 'Quasars are the most luminous type of active galaxy. They emit light across the electromagnetic spectrum, produce powerful particle jets, and can radiate thousands of times the energy emitted by a galaxy like the Milky Way. The nearest quasar, called Markarian 231, is located some 600 million light-years away, but we see many more quasars the farther we look. Scientists have identified over 1 million quasars, with the farthest one currently known lying about 13 billion light-years away. Since light takes time to travel, scientists can use light from these galaxies as a way to peer back in time to study black hole growth and galaxy evolution. Merging galaxies in the young universe may provide the fuel to power the enormous energy output of quasars, but when the feeding frenzy ends, the black hole cannot maintain it. It’s thought that quasar activity may be episodic and that this entire phase may last only about 10 million years. ');
INSERT INTO public.galaxy_tipe VALUES (8, 'Blazars', 'Blazars produce light across the electromagnetic spectrum. Their powerful jets point almost directly at Earth, so they appear brighter than other active galaxies. Observatories on Earth can sometimes detect high-energy particles – like neutrinos – produced within the jets and trace them back to their home galaxy. This information gives scientists a glimpse into the environment around the blazar’s supermassive black hole. ');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Metis', NULL, 43, 6);
INSERT INTO public.moon VALUES (2, 'Adrastea', NULL, 16, 6);
INSERT INTO public.moon VALUES (3, 'Amalthea', NULL, 167, 6);
INSERT INTO public.moon VALUES (4, 'Thebe', NULL, 98, 6);
INSERT INTO public.moon VALUES (5, 'Io', NULL, 3643, 6);
INSERT INTO public.moon VALUES (6, 'Europa', NULL, 3121, 6);
INSERT INTO public.moon VALUES (7, 'Ganymede', NULL, 5268, 6);
INSERT INTO public.moon VALUES (8, 'Callisto', NULL, 4820, 6);
INSERT INTO public.moon VALUES (9, 'Leda', NULL, 21, 6);
INSERT INTO public.moon VALUES (10, 'Ersa', NULL, 21, 3);
INSERT INTO public.moon VALUES (11, 'S/2018 J 2', NULL, 3, 6);
INSERT INTO public.moon VALUES (12, 'Themisto', NULL, 9, 6);
INSERT INTO public.moon VALUES (13, 'Himalia', NULL, 139, 6);
INSERT INTO public.moon VALUES (14, 'Pandia', NULL, 3, 6);
INSERT INTO public.moon VALUES (15, 'Lysithea', NULL, 42, 6);
INSERT INTO public.moon VALUES (16, 'Elara', NULL, 79, 6);
INSERT INTO public.moon VALUES (17, 'S/2011 J 4', NULL, 3, 6);
INSERT INTO public.moon VALUES (18, 'Dia', NULL, 4, 6);
INSERT INTO public.moon VALUES (19, 'Carpo', NULL, 3, 6);
INSERT INTO public.moon VALUES (20, 'Valetudo', NULL, 1, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, true, NULL, 7, 4);
INSERT INTO public.planet VALUES (2, 'Saturn', NULL, NULL, NULL, false, NULL, 7, 1);
INSERT INTO public.planet VALUES (3, 'Mercury', NULL, NULL, NULL, false, NULL, 7, 4);
INSERT INTO public.planet VALUES (4, 'Venus', NULL, NULL, NULL, false, NULL, 7, 4);
INSERT INTO public.planet VALUES (5, 'Mars', NULL, NULL, NULL, false, NULL, 7, 4);
INSERT INTO public.planet VALUES (6, 'Jupiter', NULL, NULL, NULL, false, NULL, 7, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, false, NULL, 7, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, false, NULL, 7, 2);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', NULL, NULL, NULL, false, NULL, 1, 4);
INSERT INTO public.planet VALUES (10, 'Teegarden b', NULL, NULL, NULL, false, NULL, 8, 4);
INSERT INTO public.planet VALUES (11, 'Teegarden c', NULL, NULL, NULL, false, NULL, 8, 4);
INSERT INTO public.planet VALUES (12, 'Kepler-442b', NULL, NULL, NULL, false, NULL, 9, 4);


--
-- Data for Name: planet_tipe; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet_tipe VALUES (1, 'Gas giants', 'are planets the size of Saturn or Jupiter, the largest planet in our solar system, or much, much larger. More variety is hidden within these broad categories. Hot Jupiters, for instance, were among the first planet types found – gas giants orbiting so closely to their stars that their temperatures soar into the thousands of degrees (Fahrenheit or Celsius).');
INSERT INTO public.planet_tipe VALUES (2, 'Neptunian planets', 'are similar in size to Neptune or Uranus in our solar system. They likely have a mixture of interior compositions, but all will have hydrogen and helium-dominated outer atmospheres and rocky cores. We’re also discovering mini-Neptunes, planets smaller than Neptune and bigger than Earth. No planets of this size or type exist in our solar system.');
INSERT INTO public.planet_tipe VALUES (3, 'Super-Earths', 'are typically terrestrial planets that may or may not have atmospheres. They are more massive than Earth, but lighter than Neptune.');
INSERT INTO public.planet_tipe VALUES (4, 'Terrestrial planets', 'are Earth sized and smaller, composed of rock, silicate, water or carbon. Further investigation will determine whether some of them possess atmospheres, oceans or other signs of habitability.');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Centauri C', NULL, 4.853, 4, 2);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', NULL, 6.800, 4, 2);
INSERT INTO public.star VALUES (3, 'Alpha Centauri B', NULL, 6.800, 4, 2);
INSERT INTO public.star VALUES (4, 'Barnard’s Star', NULL, 10.010, 6, 2);
INSERT INTO public.star VALUES (5, 'Sirius A and Sirius B Stars', NULL, 0.237, 9, 2);
INSERT INTO public.star VALUES (6, 'Epsilon Eridani', NULL, 0.850, 10, 2);
INSERT INTO public.star VALUES (7, 'Sun', NULL, 4.603, 0, 2);
INSERT INTO public.star VALUES (8, 'Star of Teegarden', NULL, 8.000, 12, 2);
INSERT INTO public.star VALUES (9, 'Kepler-442', NULL, 2.900, 1115, 2);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: galaxy_tipe_galaxy_tipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_tipe_galaxy_tipe_id_seq', 8, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: planet_tipe_planet_tipe_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_tipe_planet_tipe_id_seq', 4, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


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
-- Name: galaxy_tipe galaxy_tipe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_tipe
    ADD CONSTRAINT galaxy_tipe_name_key UNIQUE (name);


--
-- Name: galaxy_tipe galaxy_tipe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_tipe
    ADD CONSTRAINT galaxy_tipe_pkey PRIMARY KEY (galaxy_tipe_id);


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
-- Name: planet_tipe planet_tipe_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_tipe
    ADD CONSTRAINT planet_tipe_name_key UNIQUE (name);


--
-- Name: planet_tipe planet_tipe_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet_tipe
    ADD CONSTRAINT planet_tipe_pkey PRIMARY KEY (planet_tipe_id);


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
-- Name: star fk_galaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: galaxy fk_galaxy_tipe_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT fk_galaxy_tipe_id FOREIGN KEY (galaxy_tipe_id) REFERENCES public.galaxy_tipe(galaxy_tipe_id);


--
-- Name: moon fk_planet_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_id FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_tipe_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_tipe_id FOREIGN KEY (planet_tipe_id) REFERENCES public.planet_tipe(planet_tipe_id);


--
-- Name: planet fk_star_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_id FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

