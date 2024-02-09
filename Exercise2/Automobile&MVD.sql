CREATE DATABASE "Motor Vehicle Deprtment"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Canada.1252'
    LC_CTYPE = 'English_Canada.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE public.MotorVehicleDepartment
(
    department_id integer NOT NULL,
    location character varying(50) NOT NULL,
    PRIMARY KEY (department_id)
);

CREATE TABLE public.automobile
(
    automobile_id integer NOT NULL,
    department_id integer NOT NULL,
    owner_id integer NOT NULL,
    license_id integer NOT NULL,
    "VIN" character varying(28) NOT NULL,
    make character(8) NOT NULL,
    model character(24) NOT NULL,
    year date NOT NULL,
    PRIMARY KEY (automobile_id),
	FOREIGN KEY (department_id) references public.MotorVehicleDepartment (department_id)
);

