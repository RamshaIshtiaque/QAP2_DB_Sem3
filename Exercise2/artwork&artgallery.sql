CREATE DATABASE "Art gallery and Artwork"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Canada.1252'
    LC_CTYPE = 'English_Canada.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE public.art_gallery
(
    gallery_id integer NOT NULL,
    gallery_name character(50) NOT NULL,
    address character(50) NOT NULL,
    PRIMARY KEY (gallery_id)
);

CREATE TABLE public.artwork
(
    artwork_id integer NOT NULL,
    artwork_name character(50) NOT NULL,
    artist_name character(100) NOT NULL,
    gallery_id integer NOT NULL,
    PRIMARY KEY (artwork_id),
	FOREIGN KEY (gallery_id) REFERENCES public.art_gallery (gallery_id)
);