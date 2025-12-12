-- ------------------------------------------------------------
-- Data Script for Recruiting Database
-- Generated with 4 vacancies and 10 candidates
-- Uses provided UUIDs for Personnel references
-- ------------------------------------------------------------

-- Personnel IDs (Reference):
-- PM (Manager): 2b0e0cc6-43e6-4e33-aec9-638f61c9cae4
-- HR (Recruiter): 8ab48564-ed6a-4866-bc75-64275052c44c
-- Backend Dev: 3a824e73-ac35-4fcd-99c8-6c7963e4ba4c
-- Frontend Dev: bb68c1fb-fd0c-4c1d-a1d4-7cddea66a25e
-- QA: 4b60acfd-dcbc-4de3-a6b3-d4e8a8564616
-- DevOps: 61f02dd6-b98b-42d0-a1da-90d414575aad

-- 1. Skills
INSERT INTO public.skills (name) VALUES 
('Java'), ('Python'), ('JavaScript'), ('React'), ('Node.js'),
('SQL'), ('PostgreSQL'), ('Docker'), ('Kubernetes'), ('AWS'),
('Selenium'), ('Jira'), ('Git'), ('Communication'), ('Leadership');

-- 2. Vacancies
-- Using PM as Hiring Manager and HR as Recruiter for all
INSERT INTO public.vacancies (title, description, requirements, location, remote_allowed, seniority, status, salary_min, salary_max, hiring_manager_id, recruiter_id) VALUES 
('Senior Backend Developer', 'We are looking for an experienced Java developer to lead our backend team.', '5+ years Java, Spring Boot, Microservices', 'Bogotá', true, 'Senior', 'OPEN', 5000, 8000, '2b0e0cc6-43e6-4e33-aec9-638f61c9cae4', '8ab48564-ed6a-4866-bc75-64275052c44c'),
('Frontend Developer', 'Join our frontend team building modern web applications.', '3+ years React, TypeScript, CSS', 'Medellín', true, 'Mid', 'OPEN', 3000, 5000, '2b0e0cc6-43e6-4e33-aec9-638f61c9cae4', '8ab48564-ed6a-4866-bc75-64275052c44c'),
('QA Automation Engineer', 'Ensure the quality of our software products.', 'Selenium, Python, CI/CD', 'Cali', false, 'Mid', 'OPEN', 3500, 5500, '2b0e0cc6-43e6-4e33-aec9-638f61c9cae4', '8ab48564-ed6a-4866-bc75-64275052c44c'),
('DevOps Engineer', 'Manage our cloud infrastructure and deployment pipelines.', 'AWS, Docker, Kubernetes, Terraform', 'Remote', true, 'Senior', 'DRAFT', 6000, 9000, '2b0e0cc6-43e6-4e33-aec9-638f61c9cae4', '8ab48564-ed6a-4866-bc75-64275052c44c');

-- 3. Vacancy Skills
INSERT INTO public.vacancy_skills (vacancy_id, skill_id, is_mandatory) VALUES 
((SELECT vacancy_id FROM public.vacancies WHERE title = 'Senior Backend Developer'), (SELECT skill_id FROM public.skills WHERE name = 'Java'), true),
((SELECT vacancy_id FROM public.vacancies WHERE title = 'Senior Backend Developer'), (SELECT skill_id FROM public.skills WHERE name = 'SQL'), true),
((SELECT vacancy_id FROM public.vacancies WHERE title = 'Senior Backend Developer'), (SELECT skill_id FROM public.skills WHERE name = 'AWS'), false),
((SELECT vacancy_id FROM public.vacancies WHERE title = 'Frontend Developer'), (SELECT skill_id FROM public.skills WHERE name = 'React'), true),
((SELECT vacancy_id FROM public.vacancies WHERE title = 'Frontend Developer'), (SELECT skill_id FROM public.skills WHERE name = 'JavaScript'), true),
((SELECT vacancy_id FROM public.vacancies WHERE title = 'QA Automation Engineer'), (SELECT skill_id FROM public.skills WHERE name = 'Selenium'), true),
((SELECT vacancy_id FROM public.vacancies WHERE title = 'QA Automation Engineer'), (SELECT skill_id FROM public.skills WHERE name = 'Python'), true),
((SELECT vacancy_id FROM public.vacancies WHERE title = 'DevOps Engineer'), (SELECT skill_id FROM public.skills WHERE name = 'Docker'), true),
((SELECT vacancy_id FROM public.vacancies WHERE title = 'DevOps Engineer'), (SELECT skill_id FROM public.skills WHERE name = 'Kubernetes'), true);

-- 4. Candidates
INSERT INTO public.candidates (first_name, last_name, email, phone_number, vacancy_id, application_status) VALUES 
('Alice', 'Smith', 'alice.smith@email.com', '555-0101', (SELECT vacancy_id FROM public.vacancies WHERE title = 'Senior Backend Developer'), 'INTERVIEW_TECH'),
('Bob', 'Johnson', 'bob.johnson@email.com', '555-0102', (SELECT vacancy_id FROM public.vacancies WHERE title = 'Senior Backend Developer'), 'APPLIED'),
('Charlie', 'Brown', 'charlie.brown@email.com', '555-0103', (SELECT vacancy_id FROM public.vacancies WHERE title = 'Frontend Developer'), 'SCREENING'),
('Diana', 'Prince', 'diana.prince@email.com', '555-0104', (SELECT vacancy_id FROM public.vacancies WHERE title = 'Frontend Developer'), 'INTERVIEW_HR'),
('Evan', 'Wright', 'evan.wright@email.com', '555-0105', (SELECT vacancy_id FROM public.vacancies WHERE title = 'QA Automation Engineer'), 'OFFER'),
('Fiona', 'Gallagher', 'fiona.gallagher@email.com', '555-0106', (SELECT vacancy_id FROM public.vacancies WHERE title = 'QA Automation Engineer'), 'REJECTED'),
('George', 'Martin', 'george.martin@email.com', '555-0107', (SELECT vacancy_id FROM public.vacancies WHERE title = 'DevOps Engineer'), 'APPLIED'),
('Hannah', 'Montana', 'hannah.montana@email.com', '555-0108', (SELECT vacancy_id FROM public.vacancies WHERE title = 'Senior Backend Developer'), 'HIRED'),
('Ian', 'Somerhalder', 'ian.somerhalder@email.com', '555-0109', (SELECT vacancy_id FROM public.vacancies WHERE title = 'Frontend Developer'), 'WITHDRAWN'),
('Julia', 'Roberts', 'julia.roberts@email.com', '555-0110', (SELECT vacancy_id FROM public.vacancies WHERE title = 'QA Automation Engineer'), 'SCREENING');

-- 5. Candidate Skills
INSERT INTO public.candidate_skills (candidate_id, skill_id) VALUES 
((SELECT candidate_id FROM public.candidates WHERE email = 'alice.smith@email.com'), (SELECT skill_id FROM public.skills WHERE name = 'Java')),
((SELECT candidate_id FROM public.candidates WHERE email = 'alice.smith@email.com'), (SELECT skill_id FROM public.skills WHERE name = 'SQL')),
((SELECT candidate_id FROM public.candidates WHERE email = 'charlie.brown@email.com'), (SELECT skill_id FROM public.skills WHERE name = 'React')),
((SELECT candidate_id FROM public.candidates WHERE email = 'evan.wright@email.com'), (SELECT skill_id FROM public.skills WHERE name = 'Selenium')),
((SELECT candidate_id FROM public.candidates WHERE email = 'hannah.montana@email.com'), (SELECT skill_id FROM public.skills WHERE name = 'Java'));

-- 6. Interviews
-- Alice (Backend) interviewed by Backend Dev (3a82...)
-- Diana (Frontend) interviewed by HR (8ab4...)
-- Evan (QA) interviewed by QA Lead (4b60...)
INSERT INTO public.interviews (candidate_id, interviewer_id, title, interview_type, start_time, end_time, status) VALUES 
((SELECT candidate_id FROM public.candidates WHERE email = 'alice.smith@email.com'), '3a824e73-ac35-4fcd-99c8-6c7963e4ba4c', 'Technical Interview', 'TECHNICAL', NOW() + INTERVAL '1 day', NOW() + INTERVAL '1 day 1 hour', 'SCHEDULED'),
((SELECT candidate_id FROM public.candidates WHERE email = 'diana.prince@email.com'), '8ab48564-ed6a-4866-bc75-64275052c44c', 'HR Screening', 'HR', NOW() - INTERVAL '2 days', NOW() - INTERVAL '2 days' + INTERVAL '30 minutes', 'COMPLETED'),
((SELECT candidate_id FROM public.candidates WHERE email = 'evan.wright@email.com'), '4b60acfd-dcbc-4de3-a6b3-d4e8a8564616', 'Final Interview', 'CULTURAL', NOW() - INTERVAL '5 days', NOW() - INTERVAL '5 days' + INTERVAL '1 hour', 'COMPLETED');

-- 7. Interview Feedback
INSERT INTO public.interview_feedback (interview_id, score, verdict, comments) VALUES 
((SELECT interview_id FROM public.interviews WHERE title = 'HR Screening'), 4, 'PASS', 'Good communication skills, fits the culture.'),
((SELECT interview_id FROM public.interviews WHERE title = 'Final Interview'), 5, 'HIRE', 'Excellent technical knowledge and problem solving.');

-- 8. Candidate Notes
INSERT INTO public.candidate_notes (candidate_id, author_id, content, note_type) VALUES 
((SELECT candidate_id FROM public.candidates WHERE email = 'alice.smith@email.com'), '8ab48564-ed6a-4866-bc75-64275052c44c', 'Candidate requested high salary range.', 'GENERAL'),
((SELECT candidate_id FROM public.candidates WHERE email = 'fiona.gallagher@email.com'), '8ab48564-ed6a-4866-bc75-64275052c44c', 'Not enough experience with Python.', 'REJECTION_REASON');
