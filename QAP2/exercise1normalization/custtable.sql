-- Table: public.customer

-- DROP TABLE IF EXISTS public.customer;

CREATE TABLE IF NOT EXISTS public.customer
(
    customer_id integer NOT NULL DEFAULT nextval('customer_customer_id_seq'::regclass),
    user_name character varying(48) COLLATE pg_catalog."default" NOT NULL,
    home_email character varying(48) COLLATE pg_catalog."default",
    work_email character varying(48) COLLATE pg_catalog."default",
    school_email character varying(48) COLLATE pg_catalog."default",
    CONSTRAINT customer_pkey PRIMARY KEY (customer_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.customer
    OWNER to postgres;