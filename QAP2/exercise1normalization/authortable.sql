-- Table: public.author

-- DROP TABLE IF EXISTS public.author;

CREATE TABLE IF NOT EXISTS public.author
(
    author_id integer NOT NULL DEFAULT nextval('author_author_id_seq'::regclass),
    author_firstname character varying(22) COLLATE pg_catalog."default",
    author_lastname character varying(30) COLLATE pg_catalog."default",
    pen_name character varying(48) COLLATE pg_catalog."default",
    CONSTRAINT author_pkey PRIMARY KEY (author_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.author
    OWNER to postgres;