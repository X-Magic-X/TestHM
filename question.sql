CREATE TABLE public.questions (
	id serial4 NOT NULL,
	test_id int4 NULL,
	text text NOT NULL,
	CONSTRAINT questions_pkey PRIMARY KEY (id),
	CONSTRAINT questions_test_id_fkey FOREIGN KEY (test_id) REFERENCES public.tests(id) ON DELETE CASCADE
);