-- Table: public.xref_customer_author

-- DROP TABLE IF EXISTS public.xref_customer_author;

CREATE TABLE IF NOT EXISTS public.xref_customer_author
(
    customer_id integer NOT NULL,
    author_id integer NOT NULL,
    CONSTRAINT xref_customer_author_author_id_fkey FOREIGN KEY (author_id)
        REFERENCES public.author (author_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID,
    CONSTRAINT xref_customer_author_customer_id_fkey FOREIGN KEY (customer_id)
        REFERENCES public.customer (customer_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.xref_customer_author
    OWNER to postgres;