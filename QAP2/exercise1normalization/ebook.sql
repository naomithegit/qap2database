-- Table: public.e-book

-- DROP TABLE IF EXISTS public."e-book";

CREATE TABLE IF NOT EXISTS public."e-book"
(
    ebook_id integer NOT NULL DEFAULT nextval('"e-book_ebook_id_seq"'::regclass),
    title character varying(40) COLLATE pg_catalog."default" NOT NULL,
    genre character varying(40) COLLATE pg_catalog."default" NOT NULL,
    author_id integer NOT NULL,
    CONSTRAINT "e-book_pkey" PRIMARY KEY (ebook_id),
    CONSTRAINT "e-book_author_id_fkey" FOREIGN KEY (author_id)
        REFERENCES public.author (author_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public."e-book"
    OWNER to postgres;