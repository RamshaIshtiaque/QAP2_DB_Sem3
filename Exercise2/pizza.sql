CREATE DATABASE "Pizza"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Canada.1252'
    LC_CTYPE = 'English_Canada.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE public.pizza
(
    pizza_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL,
    toppings text NOT NULL,
    crust text NOT NULL,
    cheese_types text NOT NULL,
    sauce text[] NOT NULL,
    size character varying(8) NOT NULL,
    price numeric(6) NOT NULL,
    last_updated timestamp without time zone NOT NULL,
    PRIMARY KEY (pizza_id)
);