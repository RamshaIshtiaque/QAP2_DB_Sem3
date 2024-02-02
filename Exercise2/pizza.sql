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