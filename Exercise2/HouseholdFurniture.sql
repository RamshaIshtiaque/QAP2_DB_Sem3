CREATE DATABASE "Furniture"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Canada.1252'
    LC_CTYPE = 'English_Canada.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE public."HouseholdFurniture"
(
    furniture_id integer NOT NULL,
    owner_id integer NOT NULL,
    type character varying(30) NOT NULL,
    material character varying NOT NULL,
    color text NOT NULL,
    dimensions numeric NOT NULL,
    manufacturer character varying NOT NULL,
    condition text NOT NULL,
    purchase_date date NOT NULL,
    price numeric NOT NULL,
    PRIMARY KEY (furniture_id)
);