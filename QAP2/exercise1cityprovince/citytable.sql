-- Table: public.city

-- DROP TABLE IF EXISTS public.city;

CREATE TABLE IF NOT EXISTS public.city
(
    city_id integer NOT NULL DEFAULT nextval('city_city_id_seq'::regclass),
    city_name character varying(40) COLLATE pg_catalog."default" NOT NULL,
    province_id integer NOT NULL,
    "capital??" boolean,
    CONSTRAINT city_pkey PRIMARY KEY (city_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.city
    OWNER to postgres;

COMMENT ON COLUMN public.city.province_id
    IS 'FK';