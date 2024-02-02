
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
