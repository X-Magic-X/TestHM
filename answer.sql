CREATE TABLE public.answers (
	id serial4 NOT NULL,
	question_id int4 NULL,
	"text" text NOT NULL,
	is_correct bool DEFAULT false NOT NULL,
	CONSTRAINT answers_pkey PRIMARY KEY (id),
	CONSTRAINT answers_question_id_fkey FOREIGN KEY (question_id) REFERENCES public.questions(id) ON DELETE CASCADE
);