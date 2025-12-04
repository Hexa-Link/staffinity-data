-- ------------------------------------------------------------
-- Data Script for Staffinity Database
-- Generated with 5-10 inserts per entity
-- Language: English (Values), Colombian Cities preserved
-- ------------------------------------------------------------

-- 1. Genders
INSERT INTO public.genders (name) VALUES 
('Male'),
('Female'),
('Non-Binary'),
('Other'),
('Prefer not to say');

-- 2. Identification Types
INSERT INTO public.identification_types (name) VALUES 
('Citizenship ID'),
('Foreigner ID'),
('Passport'),
('Identity Card'),
('Civil Registration');

-- 3. Headquarters
INSERT INTO public.headquarters (name, address) VALUES 
('Bogotá Main HQ', 'Calle 100 # 15-20, Bogotá'),
('North HQ', 'Carrera 7 # 120-45, Bogotá'),
('Medellín HQ', 'Calle 10 # 40-50, Medellín'),
('Cali HQ', 'Avenida 6N # 20-30, Cali'),
('Remote HQ', 'N/A');

-- 4. Access Levels
INSERT INTO public.access_levels (name, description) VALUES 
('Administrator', 'Full system access'),
('Manager', 'Access to reports and team management'),
('Employee', 'Basic access to employee functions'),
('Contractor', 'Limited access by contract'),
('Guest', 'Limited read-only access');

-- 5. Employee Statuses
INSERT INTO public.employee_statuses (name) VALUES 
('Active'),
('Inactive'),
('Suspended'),
('On Leave'),
('Retired');

-- 6. Employees
-- Note: Using subqueries to fetch FK IDs based on names inserted above.
INSERT INTO public.employees (
    first_name, middle_name, last_name, second_last_name, email, 
    phone_number, identification_number, date_of_birth, hire_date,
    gender_id, identification_type_id, headquarters_id, access_level_id, status_id, manager_id, employee_code
) VALUES 
('Juan', 'Carlos', 'Perez', 'Gomez', 'juan.perez@hexalink.com', '3001234567', '1010101010', '1990-05-15', '2022-01-10',
 (SELECT gender_id FROM public.genders WHERE name = 'Male'),
 (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
 (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
 (SELECT access_level_id FROM public.access_levels WHERE name = 'Administrator'),
 (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
 NULL, 'EMP001'),

('Maria', 'Fernanda', 'Lopez', 'Diaz', 'maria.lopez@hexalink.com', '3109876543', '2020202020', '1992-08-20', '2022-02-15',
 (SELECT gender_id FROM public.genders WHERE name = 'Female'),
 (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
 (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
 (SELECT access_level_id FROM public.access_levels WHERE name = 'Manager'),
 (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
 NULL, 'EMP002'),

('Carlos', 'Andres', 'Rodriguez', 'Ruiz', 'carlos.rodriguez@hexalink.com', '3204567890', '3030303030', '1988-12-01', '2021-11-01',
 (SELECT gender_id FROM public.genders WHERE name = 'Male'),
 (SELECT identification_type_id FROM public.identification_types WHERE name = 'Passport'),
 (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
 (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
 (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
 NULL, 'EMP003'),

('Ana', 'Sofia', 'Martinez', 'Soto', 'ana.martinez@hexalink.com', '3012345678', '4040404040', '1995-03-10', '2023-01-05',
 (SELECT gender_id FROM public.genders WHERE name = 'Female'),
 (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
 (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
 (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
 (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
 NULL, 'EMP004'),

('Pedro', NULL, 'Sanchez', 'Vega', 'pedro.sanchez@hexalink.com', '3115678901', '5050505050', '1985-07-25', '2020-06-15',
 (SELECT gender_id FROM public.genders WHERE name = 'Male'),
 (SELECT identification_type_id FROM public.identification_types WHERE name = 'Foreigner ID'),
 (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
 (SELECT access_level_id FROM public.access_levels WHERE name = 'Contractor'),
 (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
 NULL, 'EMP005'),

('Laura', 'Victoria', 'Gomez', 'Pina', 'laura.gomez@hexalink.com', '3156789012', '6060606060', '1993-11-30', '2022-09-01',
 (SELECT gender_id FROM public.genders WHERE name = 'Female'),
 (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
 (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
 (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
 (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'On Leave'),
 NULL, 'EMP006'),

('Jorge', 'Luis', 'Herrera', 'Mora', 'jorge.herrera@hexalink.com', '3009876543', '7070707070', '1991-02-14', '2021-03-20',
 (SELECT gender_id FROM public.genders WHERE name = 'Male'),
 (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
 (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
 (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
 (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Inactive'),
 NULL, 'EMP007'),

('Sofia', NULL, 'Ramirez', 'Castro', 'sofia.ramirez@hexalink.com', '3201239876', '8080808080', '1996-09-05', '2023-05-10',
 (SELECT gender_id FROM public.genders WHERE name = 'Female'),
 (SELECT identification_type_id FROM public.identification_types WHERE name = 'Identity Card'),
 (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
 (SELECT access_level_id FROM public.access_levels WHERE name = 'Guest'),
 (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
 NULL, 'EMP008'),

('Diego', 'Alejandro', 'Torres', 'Luna', 'diego.torres@hexalink.com', '3104561230', '9090909090', '1989-04-22', '2020-11-15',
 (SELECT gender_id FROM public.genders WHERE name = 'Male'),
 (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
 (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
 (SELECT access_level_id FROM public.access_levels WHERE name = 'Manager'),
 (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
 NULL, 'EMP009'),

('Valentina', NULL, 'Morales', 'Rios', 'valentina.morales@hexalink.com', '3019873210', '1111111111', '1994-10-08', '2022-07-01',
 (SELECT gender_id FROM public.genders WHERE name = 'Female'),
 (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
 (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
 (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
 (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Retired'),
 NULL, 'EMP010');

-- Update managers (Self-referencing update)
UPDATE public.employees SET manager_id = (SELECT employee_id FROM public.employees WHERE email = 'juan.perez@hexalink.com') WHERE email IN ('maria.lopez@hexalink.com', 'carlos.rodriguez@hexalink.com');
UPDATE public.employees SET manager_id = (SELECT employee_id FROM public.employees WHERE email = 'maria.lopez@hexalink.com') WHERE email IN ('ana.martinez@hexalink.com', 'pedro.sanchez@hexalink.com');
UPDATE public.employees SET manager_id = (SELECT employee_id FROM public.employees WHERE email = 'diego.torres@hexalink.com') WHERE email IN ('laura.gomez@hexalink.com', 'jorge.herrera@hexalink.com');

-- 7. Roles
INSERT INTO public.roles (name, description, area) VALUES 
('Backend Developer', 'Responsible for server logic', 'Technology'),
('Frontend Developer', 'Responsible for user interface', 'Technology'),
('Project Manager', 'Leads project execution', 'Management'),
('HR Analyst', 'Personnel management', 'Human Resources'),
('Sales Executive', 'Service sales', 'Commercial'),
('Tech Support', 'User support', 'Operations'),
('QA Engineer', 'Quality assurance', 'Technology'),
('DevOps', 'Infrastructure and deployment', 'Technology'),
('UX/UI Designer', 'User experience design', 'Design'),
('Accountant', 'Financial management', 'Finance');

-- 8. Employee Roles
INSERT INTO public.employee_roles (employee_id, role_id) VALUES 
((SELECT employee_id FROM public.employees WHERE email = 'carlos.rodriguez@hexalink.com'), (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')),
((SELECT employee_id FROM public.employees WHERE email = 'ana.martinez@hexalink.com'), (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')),
((SELECT employee_id FROM public.employees WHERE email = 'juan.perez@hexalink.com'), (SELECT role_id FROM public.roles WHERE name = 'Project Manager')),
((SELECT employee_id FROM public.employees WHERE email = 'maria.lopez@hexalink.com'), (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')),
((SELECT employee_id FROM public.employees WHERE email = 'pedro.sanchez@hexalink.com'), (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')),
((SELECT employee_id FROM public.employees WHERE email = 'laura.gomez@hexalink.com'), (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')),
((SELECT employee_id FROM public.employees WHERE email = 'jorge.herrera@hexalink.com'), (SELECT role_id FROM public.roles WHERE name = 'Tech Support')),
((SELECT employee_id FROM public.employees WHERE email = 'sofia.ramirez@hexalink.com'), (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')),
((SELECT employee_id FROM public.employees WHERE email = 'diego.torres@hexalink.com'), (SELECT role_id FROM public.roles WHERE name = 'DevOps')),
((SELECT employee_id FROM public.employees WHERE email = 'valentina.morales@hexalink.com'), (SELECT role_id FROM public.roles WHERE name = 'Accountant'));

-- 9. Request Statuses
INSERT INTO public.request_statuses (name) VALUES 
('Pending'),
('Approved'),
('Rejected'),
('Under Review'),
('Cancelled');

-- 10. Requests
INSERT INTO public.requests (employee_id, status_id, request_type, description) VALUES 
((SELECT employee_id FROM public.employees WHERE email = 'carlos.rodriguez@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Vacation', 'Annual vacation request'),
((SELECT employee_id FROM public.employees WHERE email = 'ana.martinez@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Leave', 'Sick leave'),
((SELECT employee_id FROM public.employees WHERE email = 'pedro.sanchez@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Certificate', 'Employment certificate for bank'),
((SELECT employee_id FROM public.employees WHERE email = 'laura.gomez@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Vacation', 'Early vacation'),
((SELECT employee_id FROM public.employees WHERE email = 'jorge.herrera@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Permission', 'Personal permission'),
((SELECT employee_id FROM public.employees WHERE email = 'sofia.ramirez@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Certificate', 'Income certificate'),
((SELECT employee_id FROM public.employees WHERE email = 'diego.torres@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation cancelled due to project'),
((SELECT employee_id FROM public.employees WHERE email = 'valentina.morales@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Leave', 'Maternity leave'),
((SELECT employee_id FROM public.employees WHERE email = 'juan.perez@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Permission', 'Medical permission'),
((SELECT employee_id FROM public.employees WHERE email = 'maria.lopez@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Vacation', 'End of year vacation');

-- 11. Approvals
INSERT INTO public.approvals (request_id, approver_id, status_id, comments) VALUES 
((SELECT request_id FROM public.requests WHERE description = 'Annual vacation request'), (SELECT employee_id FROM public.employees WHERE email = 'juan.perez@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Pending date review'),
((SELECT request_id FROM public.requests WHERE description = 'Sick leave'), (SELECT employee_id FROM public.employees WHERE email = 'maria.lopez@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Approved, get well soon'),
((SELECT request_id FROM public.requests WHERE description = 'Employment certificate for bank'), (SELECT employee_id FROM public.employees WHERE email = 'maria.lopez@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Missing profile data'),
((SELECT request_id FROM public.requests WHERE description = 'Early vacation'), (SELECT employee_id FROM public.employees WHERE email = 'diego.torres@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Reviewing workload'),
((SELECT request_id FROM public.requests WHERE description = 'Income certificate'), (SELECT employee_id FROM public.employees WHERE email = 'juan.perez@hexalink.com'), (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Automatically generated');

-- 12. Leave Types
INSERT INTO public.leave_types (name, requires_attachment) VALUES 
('General Illness', true),
('Domestic Calamity', true),
('Maternity', true),
('Paternity', true),
('Unpaid Leave', false);

-- 13. Leave Requests
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES 
((SELECT request_id FROM public.requests WHERE description = 'Sick leave'), (SELECT leave_type_id FROM public.leave_types WHERE name = 'General Illness'), '2023-10-01', '2023-10-03', 'Strong flu', true),
((SELECT request_id FROM public.requests WHERE description = 'Maternity leave'), (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2023-11-01', '2024-02-01', 'Legal maternity leave', true),
((SELECT request_id FROM public.requests WHERE description = 'Personal permission'), (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2023-12-05', '2023-12-05', 'Personal errands', false),
((SELECT request_id FROM public.requests WHERE description = 'Medical permission'), (SELECT leave_type_id FROM public.leave_types WHERE name = 'General Illness'), '2023-09-15', '2023-09-15', 'Specialist medical appointment', true);

-- 14. Vacation Types
INSERT INTO public.vacation_types (name) VALUES 
('Legal Vacation'),
('Compensatory Days'),
('Vacation Advance'),
('Collective Vacation'),
('Sabbatical');

-- 15. Vacation Balances
INSERT INTO public.vacation_balances (employee_id, year, available_days, used_days) VALUES 
((SELECT employee_id FROM public.employees WHERE email = 'carlos.rodriguez@hexalink.com'), 2023, 15, 0),
((SELECT employee_id FROM public.employees WHERE email = 'ana.martinez@hexalink.com'), 2023, 10, 5),
((SELECT employee_id FROM public.employees WHERE email = 'juan.perez@hexalink.com'), 2023, 20, 10),
((SELECT employee_id FROM public.employees WHERE email = 'maria.lopez@hexalink.com'), 2023, 15, 0),
((SELECT employee_id FROM public.employees WHERE email = 'pedro.sanchez@hexalink.com'), 2023, 12, 3),
((SELECT employee_id FROM public.employees WHERE email = 'laura.gomez@hexalink.com'), 2023, 8, 7),
((SELECT employee_id FROM public.employees WHERE email = 'jorge.herrera@hexalink.com'), 2023, 5, 10),
((SELECT employee_id FROM public.employees WHERE email = 'sofia.ramirez@hexalink.com'), 2023, 15, 0),
((SELECT employee_id FROM public.employees WHERE email = 'diego.torres@hexalink.com'), 2023, 25, 5),
((SELECT employee_id FROM public.employees WHERE email = 'valentina.morales@hexalink.com'), 2023, 0, 15);

-- 16. Vacation Requests
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES 
((SELECT request_id FROM public.requests WHERE description = 'Annual vacation request'), (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Legal Vacation'), '2023-12-20', '2024-01-10', true),
((SELECT request_id FROM public.requests WHERE description = 'Early vacation'), (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Vacation Advance'), '2023-11-15', '2023-11-20', true),
((SELECT request_id FROM public.requests WHERE description = 'Vacation cancelled due to project'), (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Legal Vacation'), '2023-10-01', '2023-10-15', true),
((SELECT request_id FROM public.requests WHERE description = 'End of year vacation'), (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Collective Vacation'), '2023-12-24', '2024-01-02', true);

-- 17. Certificate Types
INSERT INTO public.certificate_types (name, description) VALUES 
('Employment Certificate', 'Proof of employment and role'),
('Income Certificate', 'Detail of salary and deductions'),
('Recommendation Letter', 'Professional recommendation'),
('Functions Certificate', 'Detail of performed functions'),
('Bank Certificate', 'Specific bank format');

-- 18. Certificate Requests
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES 
((SELECT request_id FROM public.requests WHERE description = 'Employment certificate for bank'), (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Bank Certificate'), 'Addressed to Bancolombia'),
((SELECT request_id FROM public.requests WHERE description = 'Income certificate'), (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Income Certificate'), 'Period 2022-2023');

-- 19. Employee Salaries
INSERT INTO public.employee_salaries (employee_id, salary_amount, effective_date) VALUES 
((SELECT employee_id FROM public.employees WHERE email = 'juan.perez@hexalink.com'), 8000000, '2023-01-01'),
((SELECT employee_id FROM public.employees WHERE email = 'maria.lopez@hexalink.com'), 6500000, '2023-01-01'),
((SELECT employee_id FROM public.employees WHERE email = 'carlos.rodriguez@hexalink.com'), 5000000, '2023-01-01'),
((SELECT employee_id FROM public.employees WHERE email = 'ana.martinez@hexalink.com'), 4500000, '2023-01-01'),
((SELECT employee_id FROM public.employees WHERE email = 'pedro.sanchez@hexalink.com'), 4000000, '2023-01-01'),
((SELECT employee_id FROM public.employees WHERE email = 'laura.gomez@hexalink.com'), 4200000, '2023-01-01'),
((SELECT employee_id FROM public.employees WHERE email = 'jorge.herrera@hexalink.com'), 3500000, '2023-01-01'),
((SELECT employee_id FROM public.employees WHERE email = 'sofia.ramirez@hexalink.com'), 3000000, '2023-01-01'),
((SELECT employee_id FROM public.employees WHERE email = 'diego.torres@hexalink.com'), 7000000, '2023-01-01'),
((SELECT employee_id FROM public.employees WHERE email = 'valentina.morales@hexalink.com'), 3800000, '2023-01-01');

-- 20. Employee Histories
INSERT INTO public.employee_histories (employee_id, performed_by_id, action, details) VALUES 
((SELECT employee_id FROM public.employees WHERE email = 'carlos.rodriguez@hexalink.com'), (SELECT employee_id FROM public.employees WHERE email = 'juan.perez@hexalink.com'), 'Hiring', 'Joined the company'),
((SELECT employee_id FROM public.employees WHERE email = 'ana.martinez@hexalink.com'), (SELECT employee_id FROM public.employees WHERE email = 'maria.lopez@hexalink.com'), 'Promotion', 'Promoted to Mid Developer'),
((SELECT employee_id FROM public.employees WHERE email = 'jorge.herrera@hexalink.com'), (SELECT employee_id FROM public.employees WHERE email = 'maria.lopez@hexalink.com'), 'Suspension', 'Suspended for 3 days'),
((SELECT employee_id FROM public.employees WHERE email = 'valentina.morales@hexalink.com'), (SELECT employee_id FROM public.employees WHERE email = 'maria.lopez@hexalink.com'), 'Retirement', 'Voluntary resignation'),
((SELECT employee_id FROM public.employees WHERE email = 'diego.torres@hexalink.com'), NULL, 'Data Update', 'Address change');

-- 21. Notifications
INSERT INTO public.notifications (recipient_id, title, message, is_read) VALUES 
((SELECT employee_id FROM public.employees WHERE email = 'carlos.rodriguez@hexalink.com'), 'Welcome', 'Welcome to Hexalink', true),
((SELECT employee_id FROM public.employees WHERE email = 'ana.martinez@hexalink.com'), 'Request Approved', 'Your leave request has been approved', false),
((SELECT employee_id FROM public.employees WHERE email = 'pedro.sanchez@hexalink.com'), 'Request Rejected', 'Your certificate request has been rejected', false),
((SELECT employee_id FROM public.employees WHERE email = 'juan.perez@hexalink.com'), 'New Request', 'You have a new request pending approval', true),
((SELECT employee_id FROM public.employees WHERE email = 'maria.lopez@hexalink.com'), 'Reminder', 'Team meeting at 3 PM', false);

-- 22. Attached Documents
INSERT INTO public.attached_documents (request_id, uploaded_by_id, file_name, file_url) VALUES 
((SELECT request_id FROM public.requests WHERE description = 'Sick leave'), (SELECT employee_id FROM public.employees WHERE email = 'ana.martinez@hexalink.com'), 'incapacity.pdf', 'https://storage.hexalink.com/docs/incapacity.pdf'),
((SELECT request_id FROM public.requests WHERE description = 'Medical permission'), (SELECT employee_id FROM public.employees WHERE email = 'juan.perez@hexalink.com'), 'medical_appt.pdf', 'https://storage.hexalink.com/docs/appt.pdf');

-- 23. Password Reset Tokens
INSERT INTO public.password_reset_tokens (employee_id, token, email, expires_at) VALUES 
((SELECT employee_id FROM public.employees WHERE email = 'carlos.rodriguez@hexalink.com'), 'token12345', 'carlos.rodriguez@hexalink.com', '2025-12-31 23:59:59'),
((SELECT employee_id FROM public.employees WHERE email = 'ana.martinez@hexalink.com'), 'token67890', 'ana.martinez@hexalink.com', '2025-12-31 23:59:59'),
((SELECT employee_id FROM public.employees WHERE email = 'pedro.sanchez@hexalink.com'), 'tokenabcde', 'pedro.sanchez@hexalink.com', '2025-12-31 23:59:59'),
((SELECT employee_id FROM public.employees WHERE email = 'laura.gomez@hexalink.com'), 'tokenfghij', 'laura.gomez@hexalink.com', '2025-12-31 23:59:59'),
((SELECT employee_id FROM public.employees WHERE email = 'jorge.herrera@hexalink.com'), 'tokenklmno', 'jorge.herrera@hexalink.com', '2025-12-31 23:59:59');
