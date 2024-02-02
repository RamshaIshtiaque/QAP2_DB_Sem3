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