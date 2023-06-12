
-- Table: public.pessoa

-- DROP TABLE public.pessoa;

CREATE TABLE public.pessoa
(
idp integer NOT NULL DEFAULT nextval('pessoa_idp_seq'::regclass),
nome character varying(50) COLLATE pg_catalog."default",
cpf character varying(12) COLLATE pg_catalog."default" NOT NULL,
sexo character varying(12) COLLATE pg_catalog."default",
nascimento date,
salario double precision,
CONSTRAINT pessoa_pkey PRIMARY KEY (cpf),
CONSTRAINT id_unique UNIQUE (idp)
INCLUDE(idp)
)
WITH (
OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE public.pessoa
OWNER to postgres;
