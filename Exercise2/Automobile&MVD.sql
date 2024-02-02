CREATE TABLE IF NOT EXISTS public.MotorVehicleDepartment
(
    department_id integer NOT NULL,
    location character varying(50) NOT NULL,
    PRIMARY KEY (department_id)
);

CREATE TABLE IF NOT EXISTS public.automobile
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

