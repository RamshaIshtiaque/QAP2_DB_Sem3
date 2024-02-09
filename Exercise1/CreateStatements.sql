CREATE DATABASE "Cities and Province"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Canada.1252'
    LC_CTYPE = 'English_Canada.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE Province (
    province_id serial PRIMARY KEY,
    province_name character varying NOT NULL
);


CREATE TABLE City (
    city_id serial PRIMARY KEY,
    city_name character varying NOT NULL,
    population bigint NOT NULL,
    province_id serial NOT NULL,
    FOREIGN KEY (province_id) REFERENCES public.province (province_id)
);
