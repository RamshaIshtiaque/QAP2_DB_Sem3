CREATE DATABASE "Faculty Members"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_Canada.1252'
    LC_CTYPE = 'English_Canada.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

CREATE TABLE public.faculty_members
(
    member_id integer NOT NULL,
    first_name character(36) NOT NULL,
    last_name character(50) NOT NULL,
    department character(50) NOT NULL,
    email character(50) NOT NULL,
    phone_number character(28) NOT NULL,
    PRIMARY KEY (member_id)
);