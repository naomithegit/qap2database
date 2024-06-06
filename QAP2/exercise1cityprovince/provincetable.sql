-- Table: public.province

-- DROP TABLE IF EXISTS public.province;

CREATE TABLE IF NOT EXISTS public.province
(
    province_id integer NOT NULL DEFAULT nextval('province_province_id_seq'::regclass),
    province_name character varying(40) COLLATE pg_catalog."default" NOT NULL,
    population integer,
    CONSTRAINT province_pkey PRIMARY KEY (province_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.province
    OWNER to postgres;