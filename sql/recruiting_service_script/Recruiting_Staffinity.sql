-- Recruiting schema adapted to Staffinity naming conventions

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE OR REPLACE FUNCTION public.update_timestamp()
RETURNS trigger AS $$
BEGIN
    IF TG_OP = 'INSERT' THEN
        NEW.created_at = CURRENT_TIMESTAMP;
        NEW.updated_at = NULL;
    ELSIF TG_OP = 'UPDATE' THEN
        NEW.updated_at = CURRENT_TIMESTAMP;
        NEW.created_at = OLD.created_at;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- ----------------------------
-- Table structure for skills
-- ----------------------------

CREATE TABLE public.skills (
  "skill_id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp NULL
);
ALTER TABLE public.skills OWNER TO "hexalink_user";

-- ----------------------------
-- Table structure for vacancies
-- ----------------------------

CREATE TABLE public.vacancies (
  "vacancy_id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "hiring_manager_id" uuid NOT NULL, -- Reference to employees.id (External),
  "recruiter_id" uuid NOT NULL,      -- Reference to employees.id (External),
  "title" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "description" text COLLATE "pg_catalog"."default" NOT NULL,
  "requirements" text COLLATE "pg_catalog"."default",
  "location" varchar(100) COLLATE "pg_catalog"."default",
  "remote_allowed" bool DEFAULT false,
  "seniority" varchar(50) COLLATE "pg_catalog"."default",
  "status" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'DRAFT',
  "salary_min" numeric(12,2),
  "salary_max" numeric(12,2),
  "currency" varchar(3) COLLATE "pg_catalog"."default" DEFAULT 'USD',
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now(),
  "closed_at" timestamp(6)
);
ALTER TABLE public.vacancies OWNER TO "hexalink_user";

-- ----------------------------
-- Table structure for vacancy_skills
-- ----------------------------

CREATE TABLE public.vacancy_skills (
  "vacancy_id" uuid NOT NULL,
  "skill_id" uuid NOT NULL,
  "is_mandatory" bool DEFAULT true,
  "created_at" timestamp DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp NULL
);
ALTER TABLE public.vacancy_skills OWNER TO "hexalink_user";

-- ----------------------------
-- Table structure for candidates
-- ----------------------------

CREATE TABLE public.candidates (
  "candidate_id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "vacancy_id" uuid NOT NULL,
  "first_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "last_name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "phone_number" varchar(50) COLLATE "pg_catalog"."default",
  "resume_url" varchar(500) COLLATE "pg_catalog"."default",
  "linkedin_url" varchar(500) COLLATE "pg_catalog"."default",
  "portfolio_url" varchar(500) COLLATE "pg_catalog"."default",
  "application_status" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'APPLIED',
  "source" varchar(100) COLLATE "pg_catalog"."default",
  "rejection_reason" text COLLATE "pg_catalog"."default",
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now()
);
ALTER TABLE public.candidates OWNER TO "hexalink_user";

-- ----------------------------
-- Table structure for candidate_skills
-- ----------------------------

CREATE TABLE public.candidate_skills (
  "candidate_id" uuid NOT NULL,
  "skill_id" uuid NOT NULL,
  "created_at" timestamp DEFAULT CURRENT_TIMESTAMP,
  "updated_at" timestamp NULL
);
ALTER TABLE public.candidate_skills OWNER TO "hexalink_user";

-- ----------------------------
-- Table structure for interviews
-- ----------------------------

CREATE TABLE public.interviews (
  "interview_id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "candidate_id" uuid NOT NULL,
  "interviewer_id" uuid NOT NULL, -- Reference to employees.id (External),
  "title" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "interview_type" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "start_time" timestamp(6) NOT NULL,
  "end_time" timestamp(6) NOT NULL,
  "meeting_link" varchar(500) COLLATE "pg_catalog"."default",
  "status" varchar(50) COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'SCHEDULED',
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp(6) DEFAULT now()
);
ALTER TABLE public.interviews OWNER TO "hexalink_user";

-- ----------------------------
-- Table structure for interview_feedback
-- ----------------------------

CREATE TABLE public.interview_feedback (
  "interview_id" uuid NOT NULL,
  "score" int4,
  "verdict" varchar(50) COLLATE "pg_catalog"."default" NOT NULL,
  "comments" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp NULL
);
ALTER TABLE public.interview_feedback OWNER TO "hexalink_user";

-- ----------------------------
-- Table structure for candidate_notes
-- ----------------------------

CREATE TABLE public.candidate_notes (
  "note_id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "candidate_id" uuid NOT NULL,
  "author_id" uuid NOT NULL, -- Reference to employees.id (External),
  "content" text COLLATE "pg_catalog"."default" NOT NULL,
  "note_type" varchar(50) COLLATE "pg_catalog"."default" DEFAULT 'GENERAL',
  "created_at" timestamp(6) DEFAULT now(),
  "updated_at" timestamp NULL
);
ALTER TABLE public.candidate_notes OWNER TO "hexalink_user";

ALTER TABLE public.skills ADD CONSTRAINT skills_name_key UNIQUE (name);
ALTER TABLE public.skills ADD CONSTRAINT skills_pkey PRIMARY KEY (skill_id);

ALTER TABLE public.vacancies ADD CONSTRAINT vacancies_pkey PRIMARY KEY (vacancy_id);
ALTER TABLE public.vacancies ADD CONSTRAINT vacancies_chk_status CHECK (status IN ('DRAFT', 'OPEN', 'PAUSED', 'CLOSED', 'FILLED'));
-- Note: hiring_manager_id and recruiter_id are logical references to Personnel_Staffinity_db.employees(employee_id)

ALTER TABLE public.vacancy_skills ADD CONSTRAINT vacancy_skills_pkey PRIMARY KEY (vacancy_id, skill_id);
ALTER TABLE public.vacancy_skills ADD CONSTRAINT vacancy_skills_vacancy_id_fkey FOREIGN KEY (vacancy_id) REFERENCES public.vacancies (vacancy_id) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE public.vacancy_skills ADD CONSTRAINT vacancy_skills_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skills (skill_id) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE public.candidates ADD CONSTRAINT candidates_pkey PRIMARY KEY (candidate_id);
ALTER TABLE public.candidates ADD CONSTRAINT candidates_vacancy_email_key UNIQUE (vacancy_id, email);
ALTER TABLE public.candidates ADD CONSTRAINT candidates_vacancy_id_fkey FOREIGN KEY (vacancy_id) REFERENCES public.vacancies (vacancy_id) ON DELETE RESTRICT ON UPDATE NO ACTION;
ALTER TABLE public.candidates ADD CONSTRAINT candidates_chk_status CHECK (application_status IN ('APPLIED', 'SCREENING', 'INTERVIEW_HR', 'INTERVIEW_TECH', 'OFFER', 'HIRED', 'REJECTED', 'WITHDRAWN'));

ALTER TABLE public.candidate_skills ADD CONSTRAINT candidate_skills_pkey PRIMARY KEY (candidate_id, skill_id);
ALTER TABLE public.candidate_skills ADD CONSTRAINT candidate_skills_candidate_id_fkey FOREIGN KEY (candidate_id) REFERENCES public.candidates (candidate_id) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE public.candidate_skills ADD CONSTRAINT candidate_skills_skill_id_fkey FOREIGN KEY (skill_id) REFERENCES public.skills (skill_id) ON DELETE CASCADE ON UPDATE NO ACTION;

ALTER TABLE public.interviews ADD CONSTRAINT interviews_pkey PRIMARY KEY (interview_id);
ALTER TABLE public.interviews ADD CONSTRAINT interviews_candidate_id_fkey FOREIGN KEY (candidate_id) REFERENCES public.candidates (candidate_id) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE public.interviews ADD CONSTRAINT interviews_chk_dates CHECK (end_time > start_time);
ALTER TABLE public.interviews ADD CONSTRAINT interviews_chk_status CHECK (status IN ('SCHEDULED', 'COMPLETED', 'CANCELLED', 'NO_SHOW'));
-- Note: interviewer_id is a logical reference to Personnel_Staffinity_db.employees(employee_id)

ALTER TABLE public.interview_feedback ADD CONSTRAINT interview_feedback_interview_key UNIQUE (interview_id);
ALTER TABLE public.interview_feedback ADD CONSTRAINT interview_feedback_pkey PRIMARY KEY (interview_id);
ALTER TABLE public.interview_feedback ADD CONSTRAINT interview_feedback_interview_id_fkey FOREIGN KEY (interview_id) REFERENCES public.interviews (interview_id) ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE public.interview_feedback ADD CONSTRAINT interview_feedback_chk_score CHECK (score BETWEEN 1 AND 5);
ALTER TABLE public.interview_feedback ADD CONSTRAINT interview_feedback_chk_verdict CHECK (verdict IN ('PASS', 'FAIL', 'HIRE', 'STRONG_HIRE', 'HOLD'));

ALTER TABLE public.candidate_notes ADD CONSTRAINT candidate_notes_pkey PRIMARY KEY (note_id);
ALTER TABLE public.candidate_notes ADD CONSTRAINT candidate_notes_candidate_id_fkey FOREIGN KEY (candidate_id) REFERENCES public.candidates (candidate_id) ON DELETE CASCADE ON UPDATE NO ACTION;
-- Note: author_id is a logical reference to Personnel_Staffinity_db.employees(employee_id)

CREATE INDEX idx_vacancies_recruiter ON public.vacancies USING btree (recruiter_id);
CREATE INDEX idx_candidates_vacancy_id ON public.candidates USING btree (vacancy_id);
CREATE INDEX idx_candidates_email ON public.candidates USING btree (email);
CREATE INDEX idx_interviews_start_time ON public.interviews USING btree (start_time);

CREATE TRIGGER set_skills_timestamp
BEFORE INSERT OR UPDATE ON public.skills
FOR EACH ROW EXECUTE PROCEDURE public.update_timestamp();

CREATE TRIGGER set_vacancies_timestamp
BEFORE INSERT OR UPDATE ON public.vacancies
FOR EACH ROW EXECUTE PROCEDURE public.update_timestamp();

CREATE TRIGGER set_vacancy_skills_timestamp
BEFORE INSERT OR UPDATE ON public.vacancy_skills
FOR EACH ROW EXECUTE PROCEDURE public.update_timestamp();

CREATE TRIGGER set_candidates_timestamp
BEFORE INSERT OR UPDATE ON public.candidates
FOR EACH ROW EXECUTE PROCEDURE public.update_timestamp();

CREATE TRIGGER set_candidate_skills_timestamp
BEFORE INSERT OR UPDATE ON public.candidate_skills
FOR EACH ROW EXECUTE PROCEDURE public.update_timestamp();

CREATE TRIGGER set_interviews_timestamp
BEFORE INSERT OR UPDATE ON public.interviews
FOR EACH ROW EXECUTE PROCEDURE public.update_timestamp();

CREATE TRIGGER set_interview_feedback_timestamp
BEFORE INSERT OR UPDATE ON public.interview_feedback
FOR EACH ROW EXECUTE PROCEDURE public.update_timestamp();

CREATE TRIGGER set_candidate_notes_timestamp
BEFORE INSERT OR UPDATE ON public.candidate_notes
FOR EACH ROW EXECUTE PROCEDURE public.update_timestamp();

