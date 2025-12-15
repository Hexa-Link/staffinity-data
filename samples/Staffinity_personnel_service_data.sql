-- Staffinity Personnel Data Script (Generated)
-- ---------------------------------------------

-- 1. Genders
INSERT INTO public.genders (name) VALUES ('Male'), ('Female'), ('Non-Binary'), ('Other'), ('Prefer not to say');

-- 2. Identification Types
INSERT INTO public.identification_types (name) VALUES ('Citizenship ID'), ('Foreigner ID'), ('Passport'), ('Identity Card');

-- 3. Headquarters
INSERT INTO public.headquarters (name, address) VALUES ('Bogotá Main HQ', 'Calle 100 # 15-20, Bogotá'), ('North HQ', 'Carrera 7 # 120-45, Bogotá'), ('Medellín HQ', 'Calle 10 # 40-50, Medellín'), ('Cali HQ', 'Avenida 6N # 20-30, Cali'), ('Remote HQ', 'N/A');

-- 4. Access Levels
INSERT INTO public.access_levels (name, description) VALUES ('Admin', 'Full system access'), ('HR', 'Access to reports and team management'), ('Employee', 'Basic access to employee functions'), ('Contractor', 'Limited access by contract'), ('Candidate', 'Limited read-only access');

-- 5. Employee Statuses
INSERT INTO public.employee_statuses (name) VALUES ('Active'), ('Inactive'), ('Suspended'), ('On Leave'), ('Retired');

-- 6. Employees
INSERT INTO public.employees (employee_id, first_name, middle_name, last_name, second_last_name, email, phone_number, identification_number, date_of_birth, hire_date, gender_id, identification_type_id, headquarters_id, access_level_id, status_id, manager_id, employee_code) VALUES (
            '3a824e73-ac35-4fcd-99c8-6c7963e4ba4c', 'Carlos', NULL, 'Rodriguez', NULL, 'carlos.rodriguez@hexalink.com', '3001547294', '82255315', '1997-03-05', '2020-08-25',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10000'
        ), (
            'bb68c1fb-fd0c-4c1d-a1d4-7cddea66a25e', 'Ana', NULL, 'Martinez', NULL, 'ana.martinez@hexalink.com', '3007741144', '82876498', '1977-06-25', '2020-05-03',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10001'
        ), (
            '2b0e0cc6-43e6-4e33-aec9-638f61c9cae4', 'Juan', NULL, 'Perez', NULL, 'juan.perez@hexalink.com', '3004126488', '32124569', '1984-09-19', '2023-12-01',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Admin'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10002'
        ), (
            '8ab48564-ed6a-4866-bc75-64275052c44c', 'Maria', NULL, 'Lopez', NULL, 'maria.lopez@hexalink.com', '3005163159', '82899371', '1987-01-07', '2022-07-26',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'HR'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10003'
        ), (
            '4b60acfd-dcbc-4de3-a6b3-d4e8a8564616', 'Pedro', NULL, 'Sanchez', NULL, 'pedro.sanchez@hexalink.com', '3006913549', '11964115', '1998-02-03', '2021-10-30',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10004'
        ), (
            'f6c85151-899e-4487-902e-e2e81d9d0cfd', 'Laura', NULL, 'Gomez', NULL, 'laura.gomez@hexalink.com', '3008820685', '57786745', '1988-12-25', '2024-10-13',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10005'
        ), (
            'b5440d7a-b818-428b-8049-001fd75e1f69', 'Jorge', NULL, 'Herrera', NULL, 'jorge.herrera@hexalink.com', '3004391821', '50279821', '1989-01-27', '2024-11-23',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10006'
        ), (
            'efc95de0-845d-4b67-8683-c3c132fd5bff', 'Sofia', NULL, 'Ramirez', NULL, 'sofia.ramirez@hexalink.com', '3007070335', '74775102', '1972-03-20', '2020-05-29',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10007'
        ), (
            '61f02dd6-b98b-42d0-a1da-90d414575aad', 'Diego', NULL, 'Torres', NULL, 'diego.torres@hexalink.com', '3006569341', '56723021', '1978-04-28', '2024-09-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'HR'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10008'
        ), (
            '966a8046-23bf-488f-aa31-5ce0a5af3ac1', 'Valentina', NULL, 'Morales', NULL, 'valentina.morales@hexalink.com', '3008130650', '71676196', '1994-02-22', '2021-07-14',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10009'
        ), (
            '42e39dd1-06a3-4848-bc97-f808b76f5cb5', 'Victoria', NULL, 'Martinez', NULL, 'victoria.martinez0@hexalink.com', '3007663312', '53272164', '1978-11-16', '2022-04-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'HR'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10010'
        ), (
            'ae59061a-5ac3-477a-aa7a-5d019d525221', 'Richard', NULL, 'Hernandez', NULL, 'richard.hernandez1@hexalink.com', '3002308789', '85094522', '1997-03-14', '2022-06-30',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10011'
        ), (
            'd69b9ab9-8b08-481d-8c4d-5fd61ff53b51', 'Daniela', NULL, 'Williams', NULL, 'daniela.williams2@hexalink.com', '3007572160', '54079465', '1984-06-20', '2021-09-25',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'HR'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10012'
        ), (
            'bee3a61a-9f0b-469e-acdf-19df15b47b1c', 'Sofia', NULL, 'Garcia', NULL, 'sofia.garcia3@hexalink.com', '3003129525', '31863252', '1988-09-01', '2024-08-25',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10013'
        ), (
            '04ebbfb7-db73-4c1c-890d-ee78c5ad7bf0', 'Robert', NULL, 'Sanchez', NULL, 'robert.sanchez4@hexalink.com', '3002041980', '27519468', '1997-04-18', '2021-11-05',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'HR'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10014'
        ), (
            'f741c042-05dc-425c-9c26-661d9a2c6174', 'Victoria', NULL, 'Miller', NULL, 'victoria.miller5@hexalink.com', '3008830139', '26411720', '1994-03-16', '2023-10-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10015'
        ), (
            'bf508636-10e2-4986-8118-c3da68caa0eb', 'Camila', NULL, 'Jones', NULL, 'camila.jones6@hexalink.com', '3009093089', '56586541', '1994-06-02', '2022-12-27',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10016'
        ), (
            '7309d852-1c71-4f1f-8faa-b60612eb23db', 'James', NULL, 'Rodriguez', NULL, 'james.rodriguez7@hexalink.com', '3009910701', '15415008', '1999-03-09', '2024-04-14',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10017'
        ), (
            '4f53b12b-fe1a-4dce-8c38-fa8372f5dffe', 'David', NULL, 'Torres', NULL, 'david.torres8@hexalink.com', '3001348746', '80955950', '1973-10-04', '2022-10-23',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10018'
        ), (
            'e3a20d1a-633c-41b1-aa5c-687fca1ea849', 'Daniel', NULL, 'Hernandez', NULL, 'daniel.hernandez9@hexalink.com', '3007706956', '57085535', '1989-06-08', '2021-10-29',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10019'
        ), (
            '9895f032-5c21-4b19-959b-ca9133c0045e', 'Camila', NULL, 'Brown', NULL, 'camila.brown10@hexalink.com', '3008524460', '26584369', '1974-09-27', '2021-01-20',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10020'
        ), (
            '18bb5752-4f65-4a80-92ac-90fc0defc14f', 'Elizabeth', NULL, 'Williams', NULL, 'elizabeth.williams11@hexalink.com', '3001652942', '83979018', '1982-08-04', '2023-08-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10021'
        ), (
            '4eb18d84-c2f9-4705-90ee-df8e38e4ae1a', 'Gabriela', NULL, 'Johnson', NULL, 'gabriela.johnson12@hexalink.com', '3005454583', '35351544', '1998-09-21', '2022-02-22',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10022'
        ), (
            'd72316f5-21b5-44fc-bff2-34fd957131c2', 'Felipe', NULL, 'Williams', NULL, 'felipe.williams13@hexalink.com', '3007920466', '72151457', '1996-04-11', '2022-06-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10023'
        ), (
            '5cd15a13-3854-40fe-b029-939db99a3481', 'William', NULL, 'Miller', NULL, 'william.miller14@hexalink.com', '3004201876', '15539236', '1972-04-08', '2023-10-06',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10024'
        ), (
            '70c3e444-892e-4209-8a46-2fb9205e1521', 'Alejandro', NULL, 'Jones', NULL, 'alejandro.jones15@hexalink.com', '3005073681', '44137558', '1984-07-26', '2022-04-29',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10025'
        ), (
            'a35edab8-80ea-47a4-a2ab-4ad33d448f99', 'Barbara', NULL, 'Lopez', NULL, 'barbara.lopez16@hexalink.com', '3005979679', '79833378', '1989-08-19', '2023-04-29',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10026'
        ), (
            'cd10c9b4-e685-4fdd-a6fd-eeac8254d089', 'Daniel', NULL, 'Brown', NULL, 'daniel.brown17@hexalink.com', '3007509351', '20162533', '1989-03-15', '2022-12-17',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10027'
        ), (
            '0dde516a-e582-4e79-a261-5830a28b4456', 'Michael', NULL, 'Hernandez', NULL, 'michael.hernandez18@hexalink.com', '3001930252', '51216750', '1999-08-29', '2023-09-08',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10028'
        ), (
            '22fcb604-d993-43de-92b2-f35ea9634385', 'Susan', NULL, 'Garcia', NULL, 'susan.garcia19@hexalink.com', '3009566542', '53175303', '1975-07-17', '2021-08-10',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10029'
        ), (
            '46bcef6c-9f49-4f22-89aa-1f755b57dea4', 'William', NULL, 'Williams', NULL, 'william.williams20@hexalink.com', '3003181525', '94707103', '1989-05-08', '2023-12-05',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10030'
        ), (
            '803d4a09-488b-4f79-8163-60076e291e7a', 'John', NULL, 'Torres', NULL, 'john.torres21@hexalink.com', '3004982880', '49578915', '1996-05-29', '2021-09-04',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10031'
        ), (
            'ac7c8a30-1f54-44fd-a251-a17dddaba75c', 'Richard', NULL, 'Johnson', NULL, 'richard.johnson22@hexalink.com', '3005526457', '93591438', '1991-10-24', '2021-02-16',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10032'
        ), (
            '3a8febc3-0af3-43a4-9c0c-c0e4fd5b168d', 'Susan', NULL, 'Ramirez', NULL, 'susan.ramirez23@hexalink.com', '3007438409', '54817616', '1995-09-09', '2020-06-02',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10033'
        ), (
            '1de663a2-2b10-411c-9232-99004ca7edf8', 'Robert', NULL, 'Johnson', NULL, 'robert.johnson24@hexalink.com', '3009449993', '32878124', '1984-10-20', '2020-12-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10034'
        ), (
            '7955fa69-9edc-40bf-ad38-09956bb6cfd4', 'Linda', NULL, 'Hernandez', NULL, 'linda.hernandez25@hexalink.com', '3005063658', '36382619', '1996-03-26', '2021-07-11',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10035'
        ), (
            '41435551-a36a-4d3b-8a4f-5040da653a49', 'Mateo', NULL, 'Williams', NULL, 'mateo.williams26@hexalink.com', '3005928062', '93878288', '1984-07-02', '2024-10-30',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10036'
        ), (
            'a6f0f025-d6d3-4dad-a360-c7ff095eda11', 'Victoria', NULL, 'Johnson', NULL, 'victoria.johnson27@hexalink.com', '3006167034', '55472556', '1976-02-02', '2023-05-16',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10037'
        ), (
            'f26a5611-432c-4263-bcd8-c454ae0b5c79', 'David', NULL, 'Williams', NULL, 'david.williams28@hexalink.com', '3005212739', '79360519', '1979-06-20', '2021-06-30',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10038'
        ), (
            'b2c4454f-9d5b-414f-92c2-99388a7c9a7c', 'Mateo', NULL, 'Lopez', NULL, 'mateo.lopez29@hexalink.com', '3005333533', '69782306', '1977-07-14', '2022-02-08',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10039'
        ), (
            '9c8e8c0f-e526-42bd-b8f2-80f17eee07b2', 'Santiago', NULL, 'Johnson', NULL, 'santiago.johnson30@hexalink.com', '3008376023', '45586818', '1974-02-24', '2020-09-02',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10040'
        ), (
            '50f361d7-ec04-4367-9cbf-ba2ac1d82c9c', 'Linda', NULL, 'Torres', NULL, 'linda.torres31@hexalink.com', '3005868628', '62324258', '1998-03-01', '2024-04-21',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10041'
        ), (
            '453213f7-1a7f-464b-8104-2b96e6d67a39', 'Lucas', NULL, 'Brown', NULL, 'lucas.brown32@hexalink.com', '3002676479', '53815752', '1980-07-31', '2024-02-16',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10042'
        ), (
            '9f06fef4-c8f2-41ca-ae29-023f6133c188', 'Valentina', NULL, 'Johnson', NULL, 'valentina.johnson33@hexalink.com', '3006976556', '95714461', '1988-12-24', '2023-12-05',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10043'
        ), (
            '517c54d0-11e6-450f-92ae-12782859d481', 'Barbara', NULL, 'Williams', NULL, 'barbara.williams34@hexalink.com', '3007979070', '82520488', '1995-04-15', '2024-12-15',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10044'
        ), (
            '779412db-d4ac-4877-9569-8b0997eebed1', 'Michael', NULL, 'Ramirez', NULL, 'michael.ramirez35@hexalink.com', '3003382522', '83488510', '1973-08-21', '2021-08-29',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10045'
        ), (
            '7a88f361-ead6-4f01-959a-b75974113f67', 'Robert', NULL, 'Gonzalez', NULL, 'robert.gonzalez36@hexalink.com', '3007744698', '54253932', '1976-01-16', '2023-09-05',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10046'
        ), (
            '5d8f7338-f23b-41d1-8c9e-6673cfd79834', 'Gabriela', NULL, 'Gonzalez', NULL, 'gabriela.gonzalez37@hexalink.com', '3002053261', '96180599', '1983-11-06', '2021-04-18',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10047'
        ), (
            '12fe531c-ca94-4beb-bece-d66bee2468d8', 'James', NULL, 'Sanchez', NULL, 'james.sanchez38@hexalink.com', '3002020658', '96004682', '1976-08-12', '2023-09-21',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10048'
        ), (
            '631867f1-9ab3-419e-a31b-e69c5dda184e', 'Daniel', NULL, 'Sanchez', NULL, 'daniel.sanchez39@hexalink.com', '3005699417', '25807178', '1995-08-24', '2022-11-22',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10049'
        ), (
            'c6fe46f0-d714-49e6-84b2-0d19da6bc82f', 'Gabriela', NULL, 'Ramirez', NULL, 'gabriela.ramirez40@hexalink.com', '3002433173', '29404787', '1994-07-02', '2023-12-29',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10050'
        ), (
            '2956e054-2dfe-4e26-bc50-238c70a600ff', 'Susan', NULL, 'Davis', NULL, 'susan.davis41@hexalink.com', '3004464980', '90840424', '1984-03-10', '2020-06-30',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10051'
        ), (
            'ac3091d6-a49b-4162-83ac-6aba185f6894', 'Victoria', NULL, 'Miller', NULL, 'victoria.miller42@hexalink.com', '3001597664', '14089820', '1988-06-10', '2021-01-27',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10052'
        ), (
            '066b28fb-1d69-4502-9101-e4ee3f7fa675', 'Mateo', NULL, 'Perez', NULL, 'mateo.perez43@hexalink.com', '3008152701', '10551073', '1989-07-03', '2023-03-02',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10053'
        ), (
            '8218e591-ca4e-4c40-a66f-286c0d980528', 'William', NULL, 'Gonzalez', NULL, 'william.gonzalez44@hexalink.com', '3001799250', '80300938', '1974-07-09', '2023-05-18',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10054'
        ), (
            '1aa14e0f-1aac-4fb5-9d26-a92220f1df6d', 'David', NULL, 'Garcia', NULL, 'david.garcia45@hexalink.com', '3009529527', '97982342', '1996-01-27', '2024-04-10',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10055'
        ), (
            '3463812e-03d2-4172-a998-e318c5eb153e', 'James', NULL, 'Hernandez', NULL, 'james.hernandez46@hexalink.com', '3001377557', '50878457', '1997-07-25', '2024-05-25',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10056'
        ), (
            '1efcd3e8-4e2b-4b62-9c11-e93ab4138e89', 'Richard', NULL, 'Williams', NULL, 'richard.williams47@hexalink.com', '3004191067', '98438482', '1978-06-16', '2024-02-27',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10057'
        ), (
            '55311910-8552-4dc2-9552-b51f46fac4d7', 'Mary', NULL, 'Ramirez', NULL, 'mary.ramirez48@hexalink.com', '3009505081', '56432599', '1977-09-28', '2022-11-10',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10058'
        ), (
            '6fcccc21-898d-41f0-8a6b-c85894ca50c9', 'Richard', NULL, 'Miller', NULL, 'richard.miller49@hexalink.com', '3005099486', '75406682', '1981-12-21', '2021-01-18',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10059'
        ), (
            '2882febf-eae4-4cc8-8349-6f3856c7b743', 'Santiago', NULL, 'Torres', NULL, 'santiago.torres50@hexalink.com', '3007366358', '69637416', '1992-06-04', '2023-08-24',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10060'
        ), (
            '383c377e-4b6a-49f8-a4a3-32cdd4504387', 'Alejandro', NULL, 'Torres', NULL, 'alejandro.torres51@hexalink.com', '3008740952', '73131964', '1971-11-26', '2023-01-06',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10061'
        ), (
            '9018fb09-9eb7-47fb-84fe-1949f159227f', 'Richard', NULL, 'Rodriguez', NULL, 'richard.rodriguez52@hexalink.com', '3001679432', '71014962', '1997-12-03', '2024-07-14',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10062'
        ), (
            '8ed856e5-ce86-4af2-aa66-114a4d4f657f', 'Valentina', NULL, 'Hernandez', NULL, 'valentina.hernandez53@hexalink.com', '3007442243', '38634107', '1982-09-04', '2020-04-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10063'
        ), (
            '665b89f3-031d-4749-8b02-f5e010f77a2a', 'Elizabeth', NULL, 'Rodriguez', NULL, 'elizabeth.rodriguez54@hexalink.com', '3009732479', '72712467', '1983-12-09', '2024-06-17',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10064'
        ), (
            'ee6b8055-4906-428b-a054-2210f507a6ed', 'Linda', NULL, 'Martinez', NULL, 'linda.martinez55@hexalink.com', '3009384919', '88753780', '1976-02-02', '2021-02-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10065'
        ), (
            '0dcb33b6-6a67-40db-b63f-4788f32890b9', 'Elizabeth', NULL, 'Rodriguez', NULL, 'elizabeth.rodriguez56@hexalink.com', '3009318741', '26189531', '1992-03-14', '2022-10-13',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10066'
        ), (
            '5deae309-874e-4c48-9362-e44f9cbf8bcd', 'Daniel', NULL, 'Lopez', NULL, 'daniel.lopez57@hexalink.com', '3005883392', '20868258', '1981-12-05', '2024-07-24',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10067'
        ), (
            'adcb33d3-c8e9-47b5-8dc1-3f4dfb6203dd', 'Barbara', NULL, 'Martinez', NULL, 'barbara.martinez58@hexalink.com', '3004842596', '54302586', '1976-05-08', '2020-03-21',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10068'
        ), (
            '12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', 'Isabella', NULL, 'Gonzalez', NULL, 'isabella.gonzalez59@hexalink.com', '3001895593', '88180388', '1974-06-13', '2024-11-29',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10069'
        ), (
            '5ebeadd3-6b4c-422d-b542-bb0cf9451d99', 'Mariana', NULL, 'Martinez', NULL, 'mariana.martinez60@hexalink.com', '3002581594', '17163624', '1992-09-09', '2024-02-12',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10070'
        ), (
            '2df7520a-e617-491e-a4ce-4594ea2d30ef', 'Linda', NULL, 'Ramirez', NULL, 'linda.ramirez61@hexalink.com', '3004021049', '65173961', '1996-04-30', '2023-01-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10071'
        ), (
            '441bca38-fe2d-48e4-a863-e67183cd592b', 'Lucas', NULL, 'Williams', NULL, 'lucas.williams62@hexalink.com', '3001662097', '24379037', '1970-06-11', '2024-07-04',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10072'
        ), (
            'a329b25c-2ccb-44d6-82ff-f0df72fcc6c5', 'Daniel', NULL, 'Jones', NULL, 'daniel.jones63@hexalink.com', '3003253195', '44592914', '1997-10-20', '2023-11-17',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10073'
        ), (
            '8ce66417-211e-4a89-8d4e-074020ee6cd2', 'Richard', NULL, 'Jones', NULL, 'richard.jones64@hexalink.com', '3008838990', '54191583', '1980-12-28', '2022-11-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10074'
        ), (
            '4dacb4ce-e483-4ca2-aa9a-917c60af44c0', 'John', NULL, 'Ramirez', NULL, 'john.ramirez65@hexalink.com', '3003250250', '30281183', '1981-12-31', '2024-10-10',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10075'
        ), (
            'fb08ac2f-7574-4f9d-882e-bafb489ab6c6', 'Elizabeth', NULL, 'Sanchez', NULL, 'elizabeth.sanchez66@hexalink.com', '3007211720', '48590089', '1979-11-12', '2022-10-31',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10076'
        ), (
            '0911c959-8399-4583-b154-1250ecf41f63', 'Sofia', NULL, 'Rodriguez', NULL, 'sofia.rodriguez67@hexalink.com', '3004828439', '51731916', '1980-01-21', '2021-08-04',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10077'
        ), (
            'b512d154-f044-4b48-80c4-72fee740e5e4', 'Sofia', NULL, 'Perez', NULL, 'sofia.perez68@hexalink.com', '3007391820', '83840446', '1978-03-10', '2020-03-12',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10078'
        ), (
            'df6b0675-d8e7-499c-8855-abcd4c61afc0', 'Joseph', NULL, 'Williams', NULL, 'joseph.williams69@hexalink.com', '3005987911', '22222165', '1995-09-18', '2021-08-06',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10079'
        ), (
            '2742cde7-5985-484d-a77e-4236b06cec1a', 'William', NULL, 'Brown', NULL, 'william.brown70@hexalink.com', '3004027386', '76639207', '1994-08-23', '2021-01-23',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10080'
        ), (
            'fa7a2e9e-9590-425c-a80f-5b4add1bb8dc', 'Susan', NULL, 'Smith', NULL, 'susan.smith71@hexalink.com', '3005269414', '52955798', '2000-06-10', '2021-11-17',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10081'
        ), (
            'bfa4bfc0-f623-4356-b499-8412142c8775', 'Jennifer', NULL, 'Perez', NULL, 'jennifer.perez72@hexalink.com', '3003136458', '76234363', '1977-06-28', '2023-10-31',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10082'
        ), (
            '77d9b3a2-4296-432f-bc1a-10e0151fa8ba', 'Sofia', NULL, 'Garcia', NULL, 'sofia.garcia73@hexalink.com', '3008638045', '46348637', '1973-12-10', '2020-11-28',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10083'
        ), (
            'f939bb94-c817-4b87-a117-25370e794711', 'Mariana', NULL, 'Garcia', NULL, 'mariana.garcia74@hexalink.com', '3006092107', '22231421', '1989-11-01', '2024-09-03',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10084'
        ), (
            '7a39968e-cf6f-4cff-921c-1dc10ab181af', 'Sofia', NULL, 'Brown', NULL, 'sofia.brown75@hexalink.com', '3005250521', '33738595', '1986-10-13', '2020-12-23',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10085'
        ), (
            'de7303b6-d244-4632-9b6f-cd62641e0d10', 'Michael', NULL, 'Jones', NULL, 'michael.jones76@hexalink.com', '3004395273', '76721724', '2000-10-15', '2023-09-30',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10086'
        ), (
            '543f9b04-fea5-4a71-83bd-f6911063ff90', 'Michael', NULL, 'Perez', NULL, 'michael.perez77@hexalink.com', '3005908180', '22690113', '1985-10-19', '2023-11-21',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10087'
        ), (
            '08aeba94-6421-4abc-88a4-4bb497b67cf6', 'Mariana', NULL, 'Williams', NULL, 'mariana.williams78@hexalink.com', '3007733019', '27945022', '2000-08-27', '2021-01-29',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10088'
        ), (
            '8d470b03-ead5-4898-b373-d61a64bf50eb', 'Daniela', NULL, 'Miller', NULL, 'daniela.miller79@hexalink.com', '3009928302', '64838134', '1974-02-15', '2020-04-21',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10089'
        ), (
            'cea1fb2f-0029-4162-8ea3-926c2585fa4c', 'James', NULL, 'Miller', NULL, 'james.miller80@hexalink.com', '3009462902', '24020717', '1979-11-09', '2023-05-12',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10090'
        ), (
            'c8e99b37-c722-4216-b011-a2a4159d348c', 'Jennifer', NULL, 'Martinez', NULL, 'jennifer.martinez81@hexalink.com', '3009153024', '19884577', '1993-10-23', '2021-07-29',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10091'
        ), (
            'baaafb44-6e56-42c5-ba39-a467a941acff', 'Felipe', NULL, 'Brown', NULL, 'felipe.brown82@hexalink.com', '3001811569', '88782119', '1984-06-19', '2021-05-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10092'
        ), (
            '2db46bc8-8fd1-407f-bbef-404374d4aedf', 'Victoria', NULL, 'Smith', NULL, 'victoria.smith83@hexalink.com', '3006970572', '85562643', '1983-02-13', '2023-12-16',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10093'
        ), (
            '60e04dc1-54e6-4d7d-9856-7949cbdad615', 'John', NULL, 'Garcia', NULL, 'john.garcia84@hexalink.com', '3002344182', '13459922', '1990-03-01', '2020-05-20',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10094'
        ), (
            '258dd4a8-9659-4d14-9fe5-4f787cbc1737', 'Camila', NULL, 'Brown', NULL, 'camila.brown85@hexalink.com', '3006537128', '40038205', '1999-12-17', '2023-01-05',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10095'
        ), (
            'd426508d-26b5-4b1e-8d91-995d59481d6f', 'Jennifer', NULL, 'Garcia', NULL, 'jennifer.garcia86@hexalink.com', '3001086967', '44202553', '1976-04-15', '2020-01-20',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10096'
        ), (
            '50c71fa1-f737-4b2e-ba4b-b7e24d01a971', 'Mariana', NULL, 'Williams', NULL, 'mariana.williams87@hexalink.com', '3001063801', '60926153', '1983-03-15', '2023-01-06',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10097'
        ), (
            'cb336c9b-219d-424a-98b7-7feb1f010215', 'Susan', NULL, 'Lopez', NULL, 'susan.lopez88@hexalink.com', '3005738008', '51794101', '1997-01-01', '2020-04-02',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10098'
        ), (
            '91bcb4a9-f683-481e-b05b-741a1b4d4098', 'Camila', NULL, 'Jones', NULL, 'camila.jones89@hexalink.com', '3002625893', '89447146', '2000-04-14', '2024-05-02',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10099'
        ), (
            '8904a6b4-a958-4c3d-a589-2b35a9866ad3', 'Mariana', NULL, 'Davis', NULL, 'mariana.davis90@hexalink.com', '3002796148', '61812185', '1977-10-17', '2022-07-19',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10100'
        ), (
            '94674f5e-7045-461c-a0f3-194672e1e595', 'Joseph', NULL, 'Gonzalez', NULL, 'joseph.gonzalez91@hexalink.com', '3001146536', '22809029', '1975-06-21', '2021-04-28',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10101'
        ), (
            'a061e9a9-f245-4405-8630-ec63808ad6e7', 'Richard', NULL, 'Gonzalez', NULL, 'richard.gonzalez92@hexalink.com', '3003973743', '49913294', '1988-11-02', '2020-12-15',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10102'
        ), (
            '8fc08a9a-80b9-4a90-87bf-2894cfca5e27', 'Santiago', NULL, 'Jones', NULL, 'santiago.jones93@hexalink.com', '3007947609', '68454803', '1976-04-15', '2021-08-29',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10103'
        ), (
            '51f44fd2-a657-4dcd-8526-177573074a91', 'Santiago', NULL, 'Williams', NULL, 'santiago.williams94@hexalink.com', '3007558271', '72307529', '1979-01-04', '2024-02-28',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10104'
        ), (
            '2b02e017-625e-4ea5-bbb4-fa23b2cd07f2', 'Sofia', NULL, 'Johnson', NULL, 'sofia.johnson95@hexalink.com', '3005288597', '28757731', '1975-02-08', '2024-01-18',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10105'
        ), (
            '834951ab-fdac-46ef-b04b-bbf13d9e6640', 'Jennifer', NULL, 'Brown', NULL, 'jennifer.brown96@hexalink.com', '3006898613', '76942590', '1975-05-22', '2020-11-25',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10106'
        ), (
            'fb512a8d-5ffd-4747-8bca-8ad14f7aeebe', 'Santiago', NULL, 'Perez', NULL, 'santiago.perez97@hexalink.com', '3002796357', '31197204', '1993-04-12', '2021-02-27',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10107'
        ), (
            'a78b17c5-ec54-4d38-9526-6577d7e87056', 'Isabella', NULL, 'Garcia', NULL, 'isabella.garcia98@hexalink.com', '3009374077', '84242631', '1978-12-25', '2022-09-08',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10108'
        ), (
            'e0e4add6-4ea2-4bce-9b68-eec5c56b9744', 'Mary', NULL, 'Perez', NULL, 'mary.perez99@hexalink.com', '3005937688', '69239823', '1997-09-24', '2024-05-12',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10109'
        ), (
            '35198028-c785-4e70-87ef-4caacc693c76', 'Sofia', NULL, 'Ramirez', NULL, 'sofia.ramirez100@hexalink.com', '3006556706', '27912606', '1976-05-25', '2022-05-11',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10110'
        ), (
            '379d9eba-ab8b-4805-ac74-ce489d58da1f', 'Mary', NULL, 'Smith', NULL, 'mary.smith101@hexalink.com', '3002524249', '51975944', '1982-12-16', '2022-09-25',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10111'
        ), (
            '735e6ab2-1449-4c45-bbc6-a5996b555bd0', 'Linda', NULL, 'Williams', NULL, 'linda.williams102@hexalink.com', '3001198950', '43021591', '1975-10-10', '2022-08-08',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10112'
        ), (
            '7bae3531-8f73-4c32-8429-c494e1734834', 'David', NULL, 'Garcia', NULL, 'david.garcia103@hexalink.com', '3007028806', '49350352', '1974-07-13', '2021-11-03',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10113'
        ), (
            '5b12fa9a-7dae-46ec-9b2f-eb05b48cec2e', 'Joseph', NULL, 'Ramirez', NULL, 'joseph.ramirez104@hexalink.com', '3006341878', '48917392', '1995-03-23', '2022-05-16',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10114'
        ), (
            '7afbe7e0-9d31-45ff-86ea-1ce6f96cd9d7', 'Gabriela', NULL, 'Williams', NULL, 'gabriela.williams105@hexalink.com', '3003824713', '87987484', '1978-04-23', '2023-10-03',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10115'
        ), (
            '4b9f178d-d365-4efa-9c02-9e6b9ce492c7', 'Lucas', NULL, 'Rodriguez', NULL, 'lucas.rodriguez106@hexalink.com', '3004945958', '17811516', '1998-02-08', '2021-02-19',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10116'
        ), (
            'e0bcb3ab-32c3-48f2-a8a8-fae5e4ad6c9e', 'Camila', NULL, 'Perez', NULL, 'camila.perez107@hexalink.com', '3009362852', '87726423', '1997-11-28', '2022-01-25',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10117'
        ), (
            '28125096-ee9e-4d86-a026-4a5dedf2f39e', 'Lucas', NULL, 'Garcia', NULL, 'lucas.garcia108@hexalink.com', '3008666752', '76581605', '1986-04-15', '2020-11-16',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10118'
        ), (
            '9a7d8464-cc62-46d7-b3ab-28a153978bd2', 'Mateo', NULL, 'Sanchez', NULL, 'mateo.sanchez109@hexalink.com', '3008585915', '73368962', '1997-12-22', '2024-09-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10119'
        ), (
            '87f2dec9-e680-4512-b5a0-3d41e11c0257', 'Susan', NULL, 'Garcia', NULL, 'susan.garcia110@hexalink.com', '3005126259', '39730686', '1971-10-29', '2020-08-17',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10120'
        ), (
            '9cf2c037-2e1a-47ea-b765-0f4b31be3e48', 'Lucas', NULL, 'Davis', NULL, 'lucas.davis111@hexalink.com', '3009536127', '16556012', '1990-07-12', '2023-08-03',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10121'
        ), (
            '66bb1b56-3b9b-49e2-bf15-f4a23ed15830', 'Victoria', NULL, 'Torres', NULL, 'victoria.torres112@hexalink.com', '3003713113', '19323437', '1974-10-31', '2024-06-05',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10122'
        ), (
            '77f3cfe1-6040-44a4-b3bc-bfdfc234131c', 'Daniel', NULL, 'Garcia', NULL, 'daniel.garcia113@hexalink.com', '3004760475', '25686748', '1981-08-13', '2020-12-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10123'
        ), (
            'f768f1e4-0c2f-4eb0-ada5-dc614dec582f', 'Sofia', NULL, 'Smith', NULL, 'sofia.smith114@hexalink.com', '3005483802', '24344125', '1977-07-10', '2022-02-01',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10124'
        ), (
            '47607ca4-472a-489b-815d-b502536b3eee', 'Lucas', NULL, 'Miller', NULL, 'lucas.miller115@hexalink.com', '3002666571', '53491161', '1972-01-20', '2021-12-27',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10125'
        ), (
            '568413c1-aa2f-4f8c-b735-816cd1a58368', 'Daniela', NULL, 'Garcia', NULL, 'daniela.garcia116@hexalink.com', '3001703203', '67902952', '1999-11-24', '2022-07-12',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10126'
        ), (
            '22b96265-975c-4bec-a908-3d04bd237fd3', 'Alejandro', NULL, 'Garcia', NULL, 'alejandro.garcia117@hexalink.com', '3001573267', '58241408', '1978-03-25', '2020-01-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10127'
        ), (
            '6493e68d-b22c-4f63-96ae-29178d3e4d0d', 'Elizabeth', NULL, 'Davis', NULL, 'elizabeth.davis118@hexalink.com', '3004216895', '29815556', '1984-10-04', '2023-02-13',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10128'
        ), (
            '81ad28f1-98c0-497d-adf3-629396e34faa', 'Richard', NULL, 'Garcia', NULL, 'richard.garcia119@hexalink.com', '3004674770', '15843410', '1982-12-08', '2024-11-06',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10129'
        ), (
            '2f1f4eb8-17a3-4e77-b359-e47e4bbb9ecf', 'Patricia', NULL, 'Brown', NULL, 'patricia.brown120@hexalink.com', '3007293948', '25842485', '1991-09-06', '2024-01-30',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10130'
        ), (
            'a538f6e8-18c3-4e09-82cd-9c52954f35ce', 'William', NULL, 'Miller', NULL, 'william.miller121@hexalink.com', '3009422517', '19606304', '1973-08-20', '2020-03-12',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10131'
        ), (
            '2f04f9d8-dab4-4638-982e-5760d2bb096a', 'Michael', NULL, 'Davis', NULL, 'michael.davis122@hexalink.com', '3002524538', '76689108', '1973-02-12', '2024-03-16',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10132'
        ), (
            '3bb9ac54-8021-4fb8-9c34-a2fc346614af', 'James', NULL, 'Davis', NULL, 'james.davis123@hexalink.com', '3008808856', '24000659', '1986-06-03', '2023-01-15',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10133'
        ), (
            '57bfd0c8-deb9-4d56-9fa1-add2c6246a26', 'Sebastian', NULL, 'Smith', NULL, 'sebastian.smith124@hexalink.com', '3002005374', '20440853', '1981-04-18', '2024-02-13',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10134'
        ), (
            'bd87f375-7bae-42ce-b9f6-d38b80f50b3e', 'Gabriela', NULL, 'Gonzalez', NULL, 'gabriela.gonzalez125@hexalink.com', '3002950690', '42077272', '1987-01-15', '2024-05-06',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10135'
        ), (
            '18c3a4f5-bd47-4294-9bce-bbdf05efba8c', 'Sebastian', NULL, 'Williams', NULL, 'sebastian.williams126@hexalink.com', '3007308205', '87153792', '1985-03-01', '2023-12-25',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10136'
        ), (
            '4980c8e5-75a4-4964-b741-f6317f82a7f8', 'Linda', NULL, 'Torres', NULL, 'linda.torres127@hexalink.com', '3009093118', '41759622', '2000-12-08', '2022-07-01',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10137'
        ), (
            'eeabd4f5-03a2-4ceb-8935-aeee66123034', 'Robert', NULL, 'Hernandez', NULL, 'robert.hernandez128@hexalink.com', '3009746775', '57546231', '1989-07-27', '2020-10-18',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10138'
        ), (
            '8de7548d-1b05-4137-ad64-1913bdec7147', 'Jennifer', NULL, 'Torres', NULL, 'jennifer.torres129@hexalink.com', '3003584383', '97763806', '1981-07-19', '2024-08-24',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10139'
        ), (
            '160a2dd3-a10e-4814-9ccc-2d35ef2115f0', 'Michael', NULL, 'Ramirez', NULL, 'michael.ramirez130@hexalink.com', '3007709152', '36516089', '1970-10-04', '2021-07-01',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10140'
        ), (
            '08e22eca-b786-4211-92ee-f77b6e60c9a8', 'Sebastian', NULL, 'Hernandez', NULL, 'sebastian.hernandez131@hexalink.com', '3008218414', '14251537', '1990-08-25', '2021-07-15',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10141'
        ), (
            'd053a295-946b-41e3-9b39-e5992ff18b85', 'David', NULL, 'Hernandez', NULL, 'david.hernandez132@hexalink.com', '3008714443', '59869818', '1972-06-05', '2021-07-11',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10142'
        ), (
            'f86f0f56-cfbe-4657-b15f-9f1f3180bad5', 'Robert', NULL, 'Rodriguez', NULL, 'robert.rodriguez133@hexalink.com', '3008943580', '33149244', '1982-01-13', '2020-07-20',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10143'
        ), (
            '50baf05f-a15e-4141-9cd7-e24c0f273829', 'Elizabeth', NULL, 'Miller', NULL, 'elizabeth.miller134@hexalink.com', '3002105275', '49245003', '1972-01-14', '2023-07-30',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10144'
        ), (
            '98470b77-4c3a-4ec0-8933-9c4918ae2264', 'Daniel', NULL, 'Smith', NULL, 'daniel.smith135@hexalink.com', '3004478902', '91715020', '1992-09-27', '2020-06-06',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10145'
        ), (
            '43ccfa5f-1b19-4c06-b1c4-71468f2bce1f', 'Susan', NULL, 'Miller', NULL, 'susan.miller136@hexalink.com', '3005921929', '27045767', '1995-07-10', '2020-02-10',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10146'
        ), (
            'eafa90c7-c170-486d-9ae9-a0d7400824ec', 'Elizabeth', NULL, 'Ramirez', NULL, 'elizabeth.ramirez137@hexalink.com', '3001249378', '62904544', '1977-02-25', '2022-09-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10147'
        ), (
            'ddab7d7c-23cd-48fc-85fc-b888ec57acc3', 'Victoria', NULL, 'Ramirez', NULL, 'victoria.ramirez138@hexalink.com', '3003567219', '50442040', '1980-12-28', '2022-04-24',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10148'
        ), (
            '22c3fc65-1c3f-461a-b07f-fbe9850d79f7', 'Valentina', NULL, 'Rodriguez', NULL, 'valentina.rodriguez139@hexalink.com', '3008197117', '59719787', '1976-07-08', '2021-02-05',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10149'
        ), (
            '520e0743-700a-42e4-b081-2161dcafac52', 'John', NULL, 'Williams', NULL, 'john.williams140@hexalink.com', '3008634830', '72836770', '1972-12-28', '2021-11-11',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10150'
        ), (
            'fe2cd0d0-5bc0-47e6-99bb-2e0fa1d4eeb1', 'Victoria', NULL, 'Rodriguez', NULL, 'victoria.rodriguez141@hexalink.com', '3001737298', '54316236', '1988-11-19', '2022-07-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10151'
        ), (
            'd636752c-12c8-4f66-9a7d-6ab845385ea6', 'James', NULL, 'Brown', NULL, 'james.brown142@hexalink.com', '3008394894', '52731611', '1991-04-24', '2023-03-26',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10152'
        ), (
            'f5007e17-6c33-40c8-9fc6-7cd9f5ba0f16', 'Felipe', NULL, 'Perez', NULL, 'felipe.perez143@hexalink.com', '3008712066', '65004166', '1972-10-07', '2023-01-10',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10153'
        ), (
            '68dd7eed-cbbe-4f06-ac1c-3f99f6029e15', 'Elizabeth', NULL, 'Ramirez', NULL, 'elizabeth.ramirez144@hexalink.com', '3009438388', '20982212', '1975-03-01', '2024-11-01',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10154'
        ), (
            '4a639de5-61f6-49fd-a395-373e8ced41d3', 'Michael', NULL, 'Davis', NULL, 'michael.davis145@hexalink.com', '3005683054', '16743896', '1970-11-20', '2021-10-01',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10155'
        ), (
            'dd48fcd2-5c34-492d-9db3-b7ff283db1f2', 'Daniel', NULL, 'Miller', NULL, 'daniel.miller146@hexalink.com', '3004139028', '24589388', '1973-12-01', '2022-05-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10156'
        ), (
            '0a972d48-de32-46d1-aeb8-eaa3e248be11', 'Susan', NULL, 'Johnson', NULL, 'susan.johnson147@hexalink.com', '3001788854', '91981033', '1970-03-05', '2022-01-31',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10157'
        ), (
            'f53b8c3d-2752-4744-9a4b-269b65e9120f', 'Linda', NULL, 'Brown', NULL, 'linda.brown148@hexalink.com', '3009398917', '18616206', '1980-11-07', '2022-07-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10158'
        ), (
            '469141ac-8d7b-4f30-809a-2c6f86d9baa0', 'Lucas', NULL, 'Smith', NULL, 'lucas.smith149@hexalink.com', '3009719666', '49361565', '1994-03-31', '2020-07-20',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10159'
        ), (
            'f61935c1-8f88-41d0-b894-2d74a3e69a08', 'Richard', NULL, 'Rodriguez', NULL, 'richard.rodriguez150@hexalink.com', '3003714900', '25920892', '1984-07-16', '2023-09-24',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10160'
        ), (
            '337a16ef-19f5-4e72-a414-9812048be8d2', 'Santiago', NULL, 'Martinez', NULL, 'santiago.martinez151@hexalink.com', '3006288010', '33760984', '1999-01-16', '2021-02-04',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10161'
        ), (
            '0ff0c276-9181-4355-bcfc-aeb890af6926', 'Linda', NULL, 'Miller', NULL, 'linda.miller152@hexalink.com', '3008327539', '39686471', '1997-10-10', '2021-05-24',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10162'
        ), (
            '7fcf647c-d1c8-43bb-9da1-1a2c5b6c6852', 'Daniel', NULL, 'Martinez', NULL, 'daniel.martinez153@hexalink.com', '3008532686', '71741258', '1990-03-27', '2024-12-08',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10163'
        ), (
            '864dafb5-dbac-4253-b1db-794b27e56c0e', 'David', NULL, 'Garcia', NULL, 'david.garcia154@hexalink.com', '3009517059', '37024355', '1985-04-17', '2023-10-31',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10164'
        ), (
            'd1ad4abe-5fa5-4ead-94b2-8e7a82e77774', 'Linda', NULL, 'Torres', NULL, 'linda.torres155@hexalink.com', '3001463433', '62796758', '1999-12-16', '2022-09-18',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10165'
        ), (
            '72b9e80e-9c19-403b-8112-a560242438cd', 'James', NULL, 'Hernandez', NULL, 'james.hernandez156@hexalink.com', '3008695230', '35502404', '1970-08-27', '2023-05-01',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10166'
        ), (
            '9b73bfa4-555f-492b-9b40-aa486a467bd4', 'Daniel', NULL, 'Miller', NULL, 'daniel.miller157@hexalink.com', '3004944738', '43428640', '1987-07-13', '2023-04-18',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10167'
        ), (
            'da222234-ec2a-4e7c-9291-b577eab8a19e', 'Mateo', NULL, 'Lopez', NULL, 'mateo.lopez158@hexalink.com', '3006823524', '97794456', '1995-06-21', '2022-05-08',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10168'
        ), (
            '5f757802-6550-4127-b81e-74e9d6748738', 'Jennifer', NULL, 'Hernandez', NULL, 'jennifer.hernandez159@hexalink.com', '3002675470', '88966144', '1980-09-13', '2024-04-05',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10169'
        ), (
            '845bc92f-9e9b-4b1a-83ba-6318d53b5bbf', 'Michael', NULL, 'Perez', NULL, 'michael.perez160@hexalink.com', '3006318972', '39846690', '1987-09-14', '2021-01-21',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10170'
        ), (
            '7a82d465-e309-4b82-aef1-ef058b19ad31', 'Isabella', NULL, 'Brown', NULL, 'isabella.brown161@hexalink.com', '3002284503', '66832287', '2000-03-31', '2020-05-10',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10171'
        ), (
            '0780524d-cce1-45e8-958c-3e4954255ad7', 'Jennifer', NULL, 'Johnson', NULL, 'jennifer.johnson162@hexalink.com', '3005395187', '15030843', '1992-08-09', '2024-07-24',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10172'
        ), (
            '412fc9e3-89bf-4a4e-9279-948b4332a575', 'David', NULL, 'Gonzalez', NULL, 'david.gonzalez163@hexalink.com', '3007726311', '11654677', '1981-09-29', '2020-01-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10173'
        ), (
            'de9820a0-9c1c-4b78-83b1-2b02e778d645', 'Santiago', NULL, 'Sanchez', NULL, 'santiago.sanchez164@hexalink.com', '3002380088', '72507829', '1980-11-30', '2024-04-12',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10174'
        ), (
            '4bd0f175-27b1-4cd4-bfca-5cb9d6e57ee6', 'Lucas', NULL, 'Gonzalez', NULL, 'lucas.gonzalez165@hexalink.com', '3001953013', '70826711', '1998-07-08', '2022-06-04',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10175'
        ), (
            '542bd5d4-350a-4a63-be0e-fdc118d3ab95', 'Isabella', NULL, 'Garcia', NULL, 'isabella.garcia166@hexalink.com', '3005672194', '20656683', '1993-03-05', '2022-02-11',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10176'
        ), (
            'd73d8fb7-8e20-4f43-b687-a1a60a5b2471', 'Gabriela', NULL, 'Perez', NULL, 'gabriela.perez167@hexalink.com', '3002574546', '81762554', '1984-04-03', '2024-02-13',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10177'
        ), (
            'c29d7e63-1fd0-4ca7-b99d-cd33090efae7', 'Alejandro', NULL, 'Williams', NULL, 'alejandro.williams168@hexalink.com', '3005835945', '43585758', '1981-06-09', '2021-05-25',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10178'
        ), (
            '788dd437-2ac8-48c3-aa1f-66eb8bc405ad', 'Robert', NULL, 'Sanchez', NULL, 'robert.sanchez169@hexalink.com', '3009701783', '32325181', '1970-02-16', '2022-06-28',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10179'
        ), (
            '54ab1f4e-b841-4f1d-a737-b26afb11728f', 'Susan', NULL, 'Davis', NULL, 'susan.davis170@hexalink.com', '3001671457', '84720489', '1984-08-22', '2024-06-26',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10180'
        ), (
            '5a076111-c959-45d2-9c69-a7bb54a1581f', 'James', NULL, 'Ramirez', NULL, 'james.ramirez171@hexalink.com', '3005989975', '78785560', '1990-12-30', '2022-03-31',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10181'
        ), (
            'eb563105-5388-43f5-8ea1-394eae002c04', 'Sebastian', NULL, 'Garcia', NULL, 'sebastian.garcia172@hexalink.com', '3006309057', '41501440', '1974-08-19', '2021-01-04',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10182'
        ), (
            '568f0d7e-55eb-46bf-a8b9-96619bb875bc', 'Daniel', NULL, 'Martinez', NULL, 'daniel.martinez173@hexalink.com', '3007186444', '32033637', '1989-12-29', '2020-10-13',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10183'
        ), (
            '7b0f328a-f264-4728-8122-2925c2077b87', 'David', NULL, 'Williams', NULL, 'david.williams174@hexalink.com', '3008758325', '26893398', '1974-02-01', '2020-11-06',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10184'
        ), (
            '0a3d61d3-a5ea-4b82-90f5-6a4b147ea0bf', 'James', NULL, 'Brown', NULL, 'james.brown175@hexalink.com', '3008623487', '18059817', '1977-05-07', '2022-10-04',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10185'
        ), (
            'ddbdba42-4ba7-4e7a-bb11-fdc337a1d066', 'Linda', NULL, 'Garcia', NULL, 'linda.garcia176@hexalink.com', '3008344998', '97578764', '2000-09-16', '2021-07-15',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10186'
        ), (
            '438706d9-6ac5-4ad9-af46-2ebed14f54f9', 'Jennifer', NULL, 'Lopez', NULL, 'jennifer.lopez177@hexalink.com', '3001019093', '33221813', '1979-08-26', '2021-11-11',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10187'
        ), (
            '6d608a88-517e-48ac-b2c2-e633f445f46b', 'Valentina', NULL, 'Garcia', NULL, 'valentina.garcia178@hexalink.com', '3009227071', '79816642', '1975-09-17', '2020-03-15',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10188'
        ), (
            '63d847a8-4cbb-4e32-8597-a1a45c13d180', 'Richard', NULL, 'Brown', NULL, 'richard.brown179@hexalink.com', '3001279109', '14975159', '1973-05-20', '2022-04-19',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10189'
        ), (
            '8675b70f-3476-4576-a4de-95c369a76d2a', 'Richard', NULL, 'Martinez', NULL, 'richard.martinez180@hexalink.com', '3005147555', '86726246', '1987-08-21', '2022-12-10',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10190'
        ), (
            '4338ab23-cbe0-41ba-becd-0ad76667cbe0', 'Felipe', NULL, 'Martinez', NULL, 'felipe.martinez181@hexalink.com', '3008138318', '84391781', '1973-04-14', '2024-07-03',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10191'
        ), (
            'df25c42b-703e-48e4-b270-cb3f95e8e2c0', 'Felipe', NULL, 'Sanchez', NULL, 'felipe.sanchez182@hexalink.com', '3006146007', '28524345', '1973-01-31', '2021-01-31',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10192'
        ), (
            '2eb759e2-6bcc-4196-9d70-7ea34f689380', 'William', NULL, 'Miller', NULL, 'william.miller183@hexalink.com', '3005907071', '74928303', '1987-07-15', '2020-08-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10193'
        ), (
            '9f9de4d3-af49-4448-a771-d2d0ba455612', 'Richard', NULL, 'Garcia', NULL, 'richard.garcia184@hexalink.com', '3003295991', '63966050', '1993-08-26', '2021-04-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10194'
        ), (
            'd8370fb4-308a-433e-991f-6e0fc8354140', 'Alejandro', NULL, 'Ramirez', NULL, 'alejandro.ramirez185@hexalink.com', '3005614070', '69201173', '1980-06-08', '2024-01-01',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10195'
        ), (
            'a423ca3f-595c-4b7c-9538-51e8caedab4f', 'David', NULL, 'Hernandez', NULL, 'david.hernandez186@hexalink.com', '3006997492', '72491428', '1971-01-29', '2023-12-14',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10196'
        ), (
            '94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', 'Sofia', NULL, 'Ramirez', NULL, 'sofia.ramirez187@hexalink.com', '3009776823', '70532056', '1997-06-17', '2024-12-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10197'
        ), (
            'edeb601c-4721-442e-ab3b-ad4f01f218d9', 'Felipe', NULL, 'Brown', NULL, 'felipe.brown188@hexalink.com', '3006039208', '21699011', '1986-10-20', '2024-04-15',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10198'
        ), (
            '1e020116-7d9d-4b51-a86f-73c0f5b408ae', 'Felipe', NULL, 'Sanchez', NULL, 'felipe.sanchez189@hexalink.com', '3001447992', '35070668', '1994-05-26', '2022-04-23',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10199'
        ), (
            '3cc06bae-36d3-4e9e-a661-a56f32705925', 'Barbara', NULL, 'Brown', NULL, 'barbara.brown190@hexalink.com', '3003560948', '62628695', '1991-08-18', '2021-05-05',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10200'
        ), (
            '7fd90d65-5493-4cd6-904f-3088b26382d0', 'Mariana', NULL, 'Gonzalez', NULL, 'mariana.gonzalez191@hexalink.com', '3006007028', '38586262', '1985-08-17', '2023-10-01',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10201'
        ), (
            '8900c328-4b65-420f-a529-4874c0ccce71', 'Daniel', NULL, 'Davis', NULL, 'daniel.davis192@hexalink.com', '3009187649', '89714286', '1975-11-01', '2024-09-17',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10202'
        ), (
            '77d1dee3-39bd-41ca-806f-59f1dc9289ef', 'William', NULL, 'Davis', NULL, 'william.davis193@hexalink.com', '3001075342', '86518116', '1998-02-15', '2020-12-20',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10203'
        ), (
            '4a616f6b-ad5c-4509-9ca8-d7e4cd39d520', 'Barbara', NULL, 'Johnson', NULL, 'barbara.johnson194@hexalink.com', '3008823971', '12922235', '1990-04-02', '2021-11-20',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10204'
        ), (
            'b744dceb-5c80-4ad0-be62-febb9622703b', 'Felipe', NULL, 'Gonzalez', NULL, 'felipe.gonzalez195@hexalink.com', '3005098489', '53761595', '1999-03-13', '2021-03-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10205'
        ), (
            '85cac177-703e-4c92-a36c-8d6cad5bd100', 'Sofia', NULL, 'Gonzalez', NULL, 'sofia.gonzalez196@hexalink.com', '3006982744', '25656237', '1999-07-24', '2024-08-20',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10206'
        ), (
            '4883c4f6-882f-45cb-95e6-59f4da35cb84', 'Daniela', NULL, 'Williams', NULL, 'daniela.williams197@hexalink.com', '3007013448', '82663006', '1982-12-09', '2020-08-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10207'
        ), (
            'c2695c2d-2a9c-4669-a51f-3336e2ef72b2', 'Camila', NULL, 'Jones', NULL, 'camila.jones198@hexalink.com', '3007918412', '40937992', '1988-05-28', '2024-10-03',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10208'
        ), (
            '830350d2-1904-48fd-937a-af37134a7071', 'Jennifer', NULL, 'Lopez', NULL, 'jennifer.lopez199@hexalink.com', '3002583045', '81590768', '2000-08-27', '2024-03-02',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10209'
        ), (
            'aa454e57-3904-4e9a-aa5e-15121b813993', 'Michael', NULL, 'Perez', NULL, 'michael.perez200@hexalink.com', '3008298741', '47445259', '1981-12-12', '2023-10-14',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10210'
        ), (
            '8f1934e2-9e45-44cd-962a-d19ae5e87d4f', 'Mateo', NULL, 'Smith', NULL, 'mateo.smith201@hexalink.com', '3008702193', '25471549', '1987-12-15', '2024-08-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10211'
        ), (
            '1e62efcc-b7ed-43ae-97be-d4d58598af5c', 'Richard', NULL, 'Smith', NULL, 'richard.smith202@hexalink.com', '3009000766', '45133524', '1972-12-11', '2024-05-25',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10212'
        ), (
            '358dc6c4-9385-4284-8a37-c188e9a52101', 'Patricia', NULL, 'Sanchez', NULL, 'patricia.sanchez203@hexalink.com', '3009223783', '97309338', '1999-12-06', '2022-04-05',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10213'
        ), (
            '591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', 'Isabella', NULL, 'Hernandez', NULL, 'isabella.hernandez204@hexalink.com', '3002224311', '85617668', '1971-12-21', '2020-10-26',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10214'
        ), (
            'fc9782dc-f3c8-415e-a9cd-4ad3d87b4297', 'Susan', NULL, 'Jones', NULL, 'susan.jones205@hexalink.com', '3008040069', '34644187', '1973-10-18', '2022-07-22',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10215'
        ), (
            '2fb57514-1b55-4737-b2ea-ea6d7225a08f', 'Mateo', NULL, 'Garcia', NULL, 'mateo.garcia206@hexalink.com', '3001989095', '58270178', '1997-05-12', '2023-05-04',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10216'
        ), (
            '581291a8-0888-436f-9518-68795b6a99ba', 'Felipe', NULL, 'Hernandez', NULL, 'felipe.hernandez207@hexalink.com', '3002316666', '51156437', '1987-08-25', '2024-08-27',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10217'
        ), (
            '80ec8511-dfb5-469e-8040-76f9025eb0b3', 'David', NULL, 'Brown', NULL, 'david.brown208@hexalink.com', '3007796561', '74897693', '1986-11-19', '2022-11-18',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10218'
        ), (
            '9a144cb3-e4c3-4029-a54e-2b295ccbfb53', 'Richard', NULL, 'Rodriguez', NULL, 'richard.rodriguez209@hexalink.com', '3009106657', '97998928', '1994-06-18', '2022-04-12',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10219'
        ), (
            'f7d6e307-f488-4786-ac71-0d1c474cd8e9', 'Barbara', NULL, 'Brown', NULL, 'barbara.brown210@hexalink.com', '3003725658', '97964677', '1983-10-16', '2020-10-22',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10220'
        ), (
            '11a0edab-2027-4cc2-8881-b37db063b454', 'William', NULL, 'Miller', NULL, 'william.miller211@hexalink.com', '3005285110', '15414248', '1971-09-01', '2021-05-19',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10221'
        ), (
            '82d7a493-1242-47ac-bb05-e16c4326f00e', 'Victoria', NULL, 'Lopez', NULL, 'victoria.lopez212@hexalink.com', '3009886114', '96060323', '1972-11-23', '2021-08-02',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10222'
        ), (
            'f7cec624-a67d-46d9-85da-2d8445fe6b62', 'Sebastian', NULL, 'Torres', NULL, 'sebastian.torres213@hexalink.com', '3007623345', '57430887', '1982-06-28', '2023-07-08',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10223'
        ), (
            '9f009394-74f7-438d-a072-8c2f2e0a3130', 'Richard', NULL, 'Lopez', NULL, 'richard.lopez214@hexalink.com', '3007033536', '29802093', '1998-07-10', '2022-04-01',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10224'
        ), (
            '68df453b-06cc-4570-84fb-646e1a184338', 'Victoria', NULL, 'Johnson', NULL, 'victoria.johnson215@hexalink.com', '3007928363', '99300159', '1997-06-19', '2024-05-25',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10225'
        ), (
            '4a44fc76-309d-4446-811d-6e33c6fac6b2', 'Alejandro', NULL, 'Gonzalez', NULL, 'alejandro.gonzalez216@hexalink.com', '3005567341', '94087642', '1990-06-09', '2024-05-27',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10226'
        ), (
            '8d02d12a-0f5b-4d4e-8cc7-13d3a4d36939', 'Jennifer', NULL, 'Jones', NULL, 'jennifer.jones217@hexalink.com', '3008867132', '67197005', '1996-09-11', '2022-08-18',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10227'
        ), (
            'c38f7614-899e-4cb4-aab3-a6b5dec59c8d', 'Santiago', NULL, 'Lopez', NULL, 'santiago.lopez218@hexalink.com', '3002385385', '15560870', '1996-12-07', '2021-07-18',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10228'
        ), (
            '835312cf-fcd8-41cf-b8ed-f109d251c362', 'Jennifer', NULL, 'Hernandez', NULL, 'jennifer.hernandez219@hexalink.com', '3002642108', '72578421', '1982-02-10', '2020-07-26',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10229'
        ), (
            'c78438a2-5a57-43e2-904e-cec549315fb6', 'Felipe', NULL, 'Martinez', NULL, 'felipe.martinez220@hexalink.com', '3009206003', '93433074', '1993-02-04', '2024-06-20',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10230'
        ), (
            'b35fc239-0fdf-4454-92e0-ffc4b7d263a5', 'Susan', NULL, 'Smith', NULL, 'susan.smith221@hexalink.com', '3003774447', '90046210', '1993-08-11', '2022-09-16',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10231'
        ), (
            '7ac730b3-3bd2-48d9-9fe0-d7d076ac2739', 'Felipe', NULL, 'Lopez', NULL, 'felipe.lopez222@hexalink.com', '3009668259', '28456756', '1993-10-27', '2024-01-08',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10232'
        ), (
            'dca6ff3c-ad85-4366-b05d-35d00ed5bc23', 'Daniela', NULL, 'Martinez', NULL, 'daniela.martinez223@hexalink.com', '3004547286', '59316502', '1995-04-05', '2024-02-01',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10233'
        ), (
            'b9531362-35af-4193-9b85-e4a9283fa15a', 'Victoria', NULL, 'Lopez', NULL, 'victoria.lopez224@hexalink.com', '3004719280', '80645470', '2000-07-31', '2024-12-28',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Medellín HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10234'
        ), (
            '643dde90-8e7a-4b00-a6b0-335e9805565e', 'Daniela', NULL, 'Torres', NULL, 'daniela.torres225@hexalink.com', '3007871140', '34965245', '1988-06-12', '2024-12-19',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10235'
        ), (
            'ef4d0fe8-6487-4224-bdce-0b8dc6ae8292', 'John', NULL, 'Torres', NULL, 'john.torres226@hexalink.com', '3007639741', '89535775', '1971-03-26', '2020-04-18',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10236'
        ), (
            '16aabf39-d0c1-4e70-b701-1f36dddb45a8', 'Sebastian', NULL, 'Sanchez', NULL, 'sebastian.sanchez227@hexalink.com', '3001288401', '51592829', '1977-01-06', '2020-04-07',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Remote HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10237'
        ), (
            '1aef1416-adf9-4c92-9536-4ecd231f7418', 'Robert', NULL, 'Brown', NULL, 'robert.brown228@hexalink.com', '3002275548', '73362401', '1987-05-23', '2022-01-04',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10238'
        ), (
            '960e494c-1751-4a33-9469-64d3b17d94f0', 'James', NULL, 'Martinez', NULL, 'james.martinez229@hexalink.com', '3001153603', '29943110', '1971-07-19', '2020-08-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10239'
        ), (
            '002fe3b4-56d3-4611-a839-8b65910bb7ee', 'Isabella', NULL, 'Sanchez', NULL, 'isabella.sanchez230@hexalink.com', '3006127546', '60613014', '1979-06-21', '2024-02-09',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10240'
        ), (
            'd7e51d89-d39e-4c32-b54e-2ef150d6ab5e', 'Lucas', NULL, 'Jones', NULL, 'lucas.jones231@hexalink.com', '3009862103', '94737785', '1998-12-24', '2022-12-29',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10241'
        ), (
            'c662243f-9da5-492a-988d-213f8d4d0164', 'Linda', NULL, 'Rodriguez', NULL, 'linda.rodriguez232@hexalink.com', '3009320643', '46130081', '1973-06-20', '2020-04-21',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10242'
        ), (
            '8b722aad-86a8-498b-921f-aac40b29d698', 'William', NULL, 'Brown', NULL, 'william.brown233@hexalink.com', '3001704096', '13066943', '1972-02-03', '2021-12-01',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10243'
        ), (
            '6e4aa712-a812-457d-b3cc-4622de964f72', 'Mateo', NULL, 'Martinez', NULL, 'mateo.martinez234@hexalink.com', '3009507307', '88271475', '1989-10-17', '2020-05-25',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Bogotá Main HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10244'
        ), (
            'fb9956e2-07f3-4627-bff5-8c13b8dd346b', 'William', NULL, 'Perez', NULL, 'william.perez235@hexalink.com', '3008862508', '37273845', '1996-08-07', '2024-07-10',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10245'
        ), (
            '70046b84-b760-4084-aad4-19b3b7ab8d10', 'Sofia', NULL, 'Torres', NULL, 'sofia.torres236@hexalink.com', '3004897263', '51592673', '1973-03-10', '2024-10-23',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'Cali HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10246'
        ), (
            'f3609092-8ad4-4012-9749-5481f6f03ccf', 'Linda', NULL, 'Miller', NULL, 'linda.miller237@hexalink.com', '3009686848', '58514434', '1978-01-27', '2022-07-29',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10247'
        ), (
            '98f02809-2152-4807-9fe9-15c7d26b9ce8', 'John', NULL, 'Sanchez', NULL, 'john.sanchez238@hexalink.com', '3008598110', '82992966', '1982-10-27', '2022-02-26',
            (SELECT gender_id FROM public.genders WHERE name = 'Male'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10248'
        ), (
            '417adbed-5aaa-46e2-bc0c-e191585c948d', 'Mariana', NULL, 'Miller', NULL, 'mariana.miller239@hexalink.com', '3009432943', '36684604', '1979-05-15', '2020-02-17',
            (SELECT gender_id FROM public.genders WHERE name = 'Female'),
            (SELECT identification_type_id FROM public.identification_types WHERE name = 'Citizenship ID'),
            (SELECT headquarters_id FROM public.headquarters WHERE name = 'North HQ'),
            (SELECT access_level_id FROM public.access_levels WHERE name = 'Employee'),
            (SELECT employee_status_id FROM public.employee_statuses WHERE name = 'Active'),
            NULL, 'EMP10249'
        );

-- Update Managers
UPDATE public.employees SET manager_id = '2b0e0cc6-43e6-4e33-aec9-638f61c9cae4' WHERE employee_id != '2b0e0cc6-43e6-4e33-aec9-638f61c9cae4';

-- 7. Roles
INSERT INTO public.roles (name, description, area) VALUES ('Backend Developer', 'Responsible for server logic', 'Technology'), ('Frontend Developer', 'Responsible for user interface', 'Technology'), ('Project Manager', 'Leads project execution', 'Management'), ('HR Analyst', 'Personnel management', 'Human Resources'), ('Sales Executive', 'Service sales', 'Commercial'), ('Tech Support', 'User support', 'Operations'), ('QA Engineer', 'Quality assurance', 'Technology'), ('DevOps', 'Infrastructure and deployment', 'Technology'), ('UX/UI Designer', 'User experience design', 'Design'), ('Accountant', 'Financial management', 'Finance');

-- 8. Employee Roles
INSERT INTO public.employee_roles (employee_id, role_id) VALUES ('3a824e73-ac35-4fcd-99c8-6c7963e4ba4c', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('bb68c1fb-fd0c-4c1d-a1d4-7cddea66a25e', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('2b0e0cc6-43e6-4e33-aec9-638f61c9cae4', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('4b60acfd-dcbc-4de3-a6b3-d4e8a8564616', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('f6c85151-899e-4487-902e-e2e81d9d0cfd', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('b5440d7a-b818-428b-8049-001fd75e1f69', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('efc95de0-845d-4b67-8683-c3c132fd5bff', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('61f02dd6-b98b-42d0-a1da-90d414575aad', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('966a8046-23bf-488f-aa31-5ce0a5af3ac1', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('42e39dd1-06a3-4848-bc97-f808b76f5cb5', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('ae59061a-5ac3-477a-aa7a-5d019d525221', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('d69b9ab9-8b08-481d-8c4d-5fd61ff53b51', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('bee3a61a-9f0b-469e-acdf-19df15b47b1c', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('04ebbfb7-db73-4c1c-890d-ee78c5ad7bf0', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('f741c042-05dc-425c-9c26-661d9a2c6174', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('bf508636-10e2-4986-8118-c3da68caa0eb', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('7309d852-1c71-4f1f-8faa-b60612eb23db', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('4f53b12b-fe1a-4dce-8c38-fa8372f5dffe', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('e3a20d1a-633c-41b1-aa5c-687fca1ea849', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('9895f032-5c21-4b19-959b-ca9133c0045e', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('18bb5752-4f65-4a80-92ac-90fc0defc14f', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('4eb18d84-c2f9-4705-90ee-df8e38e4ae1a', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('d72316f5-21b5-44fc-bff2-34fd957131c2', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('5cd15a13-3854-40fe-b029-939db99a3481', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('70c3e444-892e-4209-8a46-2fb9205e1521', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('a35edab8-80ea-47a4-a2ab-4ad33d448f99', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('cd10c9b4-e685-4fdd-a6fd-eeac8254d089', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('0dde516a-e582-4e79-a261-5830a28b4456', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('22fcb604-d993-43de-92b2-f35ea9634385', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('46bcef6c-9f49-4f22-89aa-1f755b57dea4', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('803d4a09-488b-4f79-8163-60076e291e7a', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('ac7c8a30-1f54-44fd-a251-a17dddaba75c', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('3a8febc3-0af3-43a4-9c0c-c0e4fd5b168d', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('1de663a2-2b10-411c-9232-99004ca7edf8', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('7955fa69-9edc-40bf-ad38-09956bb6cfd4', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('41435551-a36a-4d3b-8a4f-5040da653a49', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('a6f0f025-d6d3-4dad-a360-c7ff095eda11', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('f26a5611-432c-4263-bcd8-c454ae0b5c79', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('b2c4454f-9d5b-414f-92c2-99388a7c9a7c', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('9c8e8c0f-e526-42bd-b8f2-80f17eee07b2', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('50f361d7-ec04-4367-9cbf-ba2ac1d82c9c', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('453213f7-1a7f-464b-8104-2b96e6d67a39', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('9f06fef4-c8f2-41ca-ae29-023f6133c188', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('517c54d0-11e6-450f-92ae-12782859d481', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('779412db-d4ac-4877-9569-8b0997eebed1', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('7a88f361-ead6-4f01-959a-b75974113f67', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('5d8f7338-f23b-41d1-8c9e-6673cfd79834', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('12fe531c-ca94-4beb-bece-d66bee2468d8', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('631867f1-9ab3-419e-a31b-e69c5dda184e', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('c6fe46f0-d714-49e6-84b2-0d19da6bc82f', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('2956e054-2dfe-4e26-bc50-238c70a600ff', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('ac3091d6-a49b-4162-83ac-6aba185f6894', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('066b28fb-1d69-4502-9101-e4ee3f7fa675', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('8218e591-ca4e-4c40-a66f-286c0d980528', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('1aa14e0f-1aac-4fb5-9d26-a92220f1df6d', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('3463812e-03d2-4172-a998-e318c5eb153e', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('1efcd3e8-4e2b-4b62-9c11-e93ab4138e89', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('55311910-8552-4dc2-9552-b51f46fac4d7', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('6fcccc21-898d-41f0-8a6b-c85894ca50c9', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('2882febf-eae4-4cc8-8349-6f3856c7b743', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('383c377e-4b6a-49f8-a4a3-32cdd4504387', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('9018fb09-9eb7-47fb-84fe-1949f159227f', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('8ed856e5-ce86-4af2-aa66-114a4d4f657f', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('665b89f3-031d-4749-8b02-f5e010f77a2a', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('ee6b8055-4906-428b-a054-2210f507a6ed', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('0dcb33b6-6a67-40db-b63f-4788f32890b9', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('5deae309-874e-4c48-9362-e44f9cbf8bcd', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('adcb33d3-c8e9-47b5-8dc1-3f4dfb6203dd', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('5ebeadd3-6b4c-422d-b542-bb0cf9451d99', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('2df7520a-e617-491e-a4ce-4594ea2d30ef', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('441bca38-fe2d-48e4-a863-e67183cd592b', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('a329b25c-2ccb-44d6-82ff-f0df72fcc6c5', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('8ce66417-211e-4a89-8d4e-074020ee6cd2', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('4dacb4ce-e483-4ca2-aa9a-917c60af44c0', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('fb08ac2f-7574-4f9d-882e-bafb489ab6c6', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('0911c959-8399-4583-b154-1250ecf41f63', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('b512d154-f044-4b48-80c4-72fee740e5e4', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('df6b0675-d8e7-499c-8855-abcd4c61afc0', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('2742cde7-5985-484d-a77e-4236b06cec1a', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('fa7a2e9e-9590-425c-a80f-5b4add1bb8dc', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('bfa4bfc0-f623-4356-b499-8412142c8775', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('77d9b3a2-4296-432f-bc1a-10e0151fa8ba', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('f939bb94-c817-4b87-a117-25370e794711', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('7a39968e-cf6f-4cff-921c-1dc10ab181af', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('de7303b6-d244-4632-9b6f-cd62641e0d10', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('543f9b04-fea5-4a71-83bd-f6911063ff90', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('08aeba94-6421-4abc-88a4-4bb497b67cf6', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('8d470b03-ead5-4898-b373-d61a64bf50eb', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('cea1fb2f-0029-4162-8ea3-926c2585fa4c', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('c8e99b37-c722-4216-b011-a2a4159d348c', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('baaafb44-6e56-42c5-ba39-a467a941acff', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('2db46bc8-8fd1-407f-bbef-404374d4aedf', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('60e04dc1-54e6-4d7d-9856-7949cbdad615', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('258dd4a8-9659-4d14-9fe5-4f787cbc1737', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('d426508d-26b5-4b1e-8d91-995d59481d6f', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('50c71fa1-f737-4b2e-ba4b-b7e24d01a971', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('cb336c9b-219d-424a-98b7-7feb1f010215', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('91bcb4a9-f683-481e-b05b-741a1b4d4098', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('8904a6b4-a958-4c3d-a589-2b35a9866ad3', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('94674f5e-7045-461c-a0f3-194672e1e595', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('a061e9a9-f245-4405-8630-ec63808ad6e7', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('8fc08a9a-80b9-4a90-87bf-2894cfca5e27', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('51f44fd2-a657-4dcd-8526-177573074a91', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('2b02e017-625e-4ea5-bbb4-fa23b2cd07f2', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('834951ab-fdac-46ef-b04b-bbf13d9e6640', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('fb512a8d-5ffd-4747-8bca-8ad14f7aeebe', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('a78b17c5-ec54-4d38-9526-6577d7e87056', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('e0e4add6-4ea2-4bce-9b68-eec5c56b9744', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('35198028-c785-4e70-87ef-4caacc693c76', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('379d9eba-ab8b-4805-ac74-ce489d58da1f', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('735e6ab2-1449-4c45-bbc6-a5996b555bd0', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('7bae3531-8f73-4c32-8429-c494e1734834', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('5b12fa9a-7dae-46ec-9b2f-eb05b48cec2e', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('7afbe7e0-9d31-45ff-86ea-1ce6f96cd9d7', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('4b9f178d-d365-4efa-9c02-9e6b9ce492c7', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('e0bcb3ab-32c3-48f2-a8a8-fae5e4ad6c9e', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('28125096-ee9e-4d86-a026-4a5dedf2f39e', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('9a7d8464-cc62-46d7-b3ab-28a153978bd2', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('87f2dec9-e680-4512-b5a0-3d41e11c0257', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('9cf2c037-2e1a-47ea-b765-0f4b31be3e48', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('66bb1b56-3b9b-49e2-bf15-f4a23ed15830', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('77f3cfe1-6040-44a4-b3bc-bfdfc234131c', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('f768f1e4-0c2f-4eb0-ada5-dc614dec582f', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('47607ca4-472a-489b-815d-b502536b3eee', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('568413c1-aa2f-4f8c-b735-816cd1a58368', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('22b96265-975c-4bec-a908-3d04bd237fd3', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('6493e68d-b22c-4f63-96ae-29178d3e4d0d', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('81ad28f1-98c0-497d-adf3-629396e34faa', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('2f1f4eb8-17a3-4e77-b359-e47e4bbb9ecf', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('a538f6e8-18c3-4e09-82cd-9c52954f35ce', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('2f04f9d8-dab4-4638-982e-5760d2bb096a', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('3bb9ac54-8021-4fb8-9c34-a2fc346614af', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('57bfd0c8-deb9-4d56-9fa1-add2c6246a26', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('bd87f375-7bae-42ce-b9f6-d38b80f50b3e', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('18c3a4f5-bd47-4294-9bce-bbdf05efba8c', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('4980c8e5-75a4-4964-b741-f6317f82a7f8', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('eeabd4f5-03a2-4ceb-8935-aeee66123034', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('8de7548d-1b05-4137-ad64-1913bdec7147', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('160a2dd3-a10e-4814-9ccc-2d35ef2115f0', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('08e22eca-b786-4211-92ee-f77b6e60c9a8', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('d053a295-946b-41e3-9b39-e5992ff18b85', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('f86f0f56-cfbe-4657-b15f-9f1f3180bad5', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('50baf05f-a15e-4141-9cd7-e24c0f273829', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('98470b77-4c3a-4ec0-8933-9c4918ae2264', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('43ccfa5f-1b19-4c06-b1c4-71468f2bce1f', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('eafa90c7-c170-486d-9ae9-a0d7400824ec', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('ddab7d7c-23cd-48fc-85fc-b888ec57acc3', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('22c3fc65-1c3f-461a-b07f-fbe9850d79f7', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('520e0743-700a-42e4-b081-2161dcafac52', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('fe2cd0d0-5bc0-47e6-99bb-2e0fa1d4eeb1', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('d636752c-12c8-4f66-9a7d-6ab845385ea6', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('f5007e17-6c33-40c8-9fc6-7cd9f5ba0f16', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('68dd7eed-cbbe-4f06-ac1c-3f99f6029e15', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('4a639de5-61f6-49fd-a395-373e8ced41d3', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('dd48fcd2-5c34-492d-9db3-b7ff283db1f2', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('0a972d48-de32-46d1-aeb8-eaa3e248be11', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('f53b8c3d-2752-4744-9a4b-269b65e9120f', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('469141ac-8d7b-4f30-809a-2c6f86d9baa0', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('f61935c1-8f88-41d0-b894-2d74a3e69a08', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('337a16ef-19f5-4e72-a414-9812048be8d2', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('0ff0c276-9181-4355-bcfc-aeb890af6926', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('7fcf647c-d1c8-43bb-9da1-1a2c5b6c6852', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('864dafb5-dbac-4253-b1db-794b27e56c0e', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('d1ad4abe-5fa5-4ead-94b2-8e7a82e77774', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('72b9e80e-9c19-403b-8112-a560242438cd', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('9b73bfa4-555f-492b-9b40-aa486a467bd4', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('da222234-ec2a-4e7c-9291-b577eab8a19e', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('5f757802-6550-4127-b81e-74e9d6748738', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('845bc92f-9e9b-4b1a-83ba-6318d53b5bbf', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('7a82d465-e309-4b82-aef1-ef058b19ad31', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('0780524d-cce1-45e8-958c-3e4954255ad7', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('412fc9e3-89bf-4a4e-9279-948b4332a575', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('de9820a0-9c1c-4b78-83b1-2b02e778d645', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('4bd0f175-27b1-4cd4-bfca-5cb9d6e57ee6', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('542bd5d4-350a-4a63-be0e-fdc118d3ab95', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('d73d8fb7-8e20-4f43-b687-a1a60a5b2471', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('c29d7e63-1fd0-4ca7-b99d-cd33090efae7', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('788dd437-2ac8-48c3-aa1f-66eb8bc405ad', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('54ab1f4e-b841-4f1d-a737-b26afb11728f', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('5a076111-c959-45d2-9c69-a7bb54a1581f', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('eb563105-5388-43f5-8ea1-394eae002c04', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('568f0d7e-55eb-46bf-a8b9-96619bb875bc', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('7b0f328a-f264-4728-8122-2925c2077b87', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('0a3d61d3-a5ea-4b82-90f5-6a4b147ea0bf', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('ddbdba42-4ba7-4e7a-bb11-fdc337a1d066', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('438706d9-6ac5-4ad9-af46-2ebed14f54f9', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('6d608a88-517e-48ac-b2c2-e633f445f46b', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('63d847a8-4cbb-4e32-8597-a1a45c13d180', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('8675b70f-3476-4576-a4de-95c369a76d2a', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('4338ab23-cbe0-41ba-becd-0ad76667cbe0', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('df25c42b-703e-48e4-b270-cb3f95e8e2c0', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('2eb759e2-6bcc-4196-9d70-7ea34f689380', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('9f9de4d3-af49-4448-a771-d2d0ba455612', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('d8370fb4-308a-433e-991f-6e0fc8354140', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('a423ca3f-595c-4b7c-9538-51e8caedab4f', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('edeb601c-4721-442e-ab3b-ad4f01f218d9', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('1e020116-7d9d-4b51-a86f-73c0f5b408ae', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('3cc06bae-36d3-4e9e-a661-a56f32705925', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('7fd90d65-5493-4cd6-904f-3088b26382d0', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('8900c328-4b65-420f-a529-4874c0ccce71', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('77d1dee3-39bd-41ca-806f-59f1dc9289ef', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('4a616f6b-ad5c-4509-9ca8-d7e4cd39d520', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('b744dceb-5c80-4ad0-be62-febb9622703b', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('85cac177-703e-4c92-a36c-8d6cad5bd100', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('4883c4f6-882f-45cb-95e6-59f4da35cb84', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('c2695c2d-2a9c-4669-a51f-3336e2ef72b2', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('830350d2-1904-48fd-937a-af37134a7071', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('aa454e57-3904-4e9a-aa5e-15121b813993', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('8f1934e2-9e45-44cd-962a-d19ae5e87d4f', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('1e62efcc-b7ed-43ae-97be-d4d58598af5c', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('358dc6c4-9385-4284-8a37-c188e9a52101', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', (SELECT role_id FROM public.roles WHERE name = 'DevOps')), ('fc9782dc-f3c8-415e-a9cd-4ad3d87b4297', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('2fb57514-1b55-4737-b2ea-ea6d7225a08f', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('581291a8-0888-436f-9518-68795b6a99ba', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('80ec8511-dfb5-469e-8040-76f9025eb0b3', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('9a144cb3-e4c3-4029-a54e-2b295ccbfb53', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('f7d6e307-f488-4786-ac71-0d1c474cd8e9', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('11a0edab-2027-4cc2-8881-b37db063b454', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('82d7a493-1242-47ac-bb05-e16c4326f00e', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('f7cec624-a67d-46d9-85da-2d8445fe6b62', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('9f009394-74f7-438d-a072-8c2f2e0a3130', (SELECT role_id FROM public.roles WHERE name = 'Frontend Developer')), ('68df453b-06cc-4570-84fb-646e1a184338', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('4a44fc76-309d-4446-811d-6e33c6fac6b2', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('8d02d12a-0f5b-4d4e-8cc7-13d3a4d36939', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('c38f7614-899e-4cb4-aab3-a6b5dec59c8d', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('835312cf-fcd8-41cf-b8ed-f109d251c362', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('c78438a2-5a57-43e2-904e-cec549315fb6', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('b35fc239-0fdf-4454-92e0-ffc4b7d263a5', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('7ac730b3-3bd2-48d9-9fe0-d7d076ac2739', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('dca6ff3c-ad85-4366-b05d-35d00ed5bc23', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('b9531362-35af-4193-9b85-e4a9283fa15a', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('643dde90-8e7a-4b00-a6b0-335e9805565e', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer')), ('ef4d0fe8-6487-4224-bdce-0b8dc6ae8292', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('16aabf39-d0c1-4e70-b701-1f36dddb45a8', (SELECT role_id FROM public.roles WHERE name = 'Project Manager')), ('1aef1416-adf9-4c92-9536-4ecd231f7418', (SELECT role_id FROM public.roles WHERE name = 'HR Analyst')), ('960e494c-1751-4a33-9469-64d3b17d94f0', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('002fe3b4-56d3-4611-a839-8b65910bb7ee', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('d7e51d89-d39e-4c32-b54e-2ef150d6ab5e', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('c662243f-9da5-492a-988d-213f8d4d0164', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('8b722aad-86a8-498b-921f-aac40b29d698', (SELECT role_id FROM public.roles WHERE name = 'Sales Executive')), ('6e4aa712-a812-457d-b3cc-4622de964f72', (SELECT role_id FROM public.roles WHERE name = 'UX/UI Designer')), ('fb9956e2-07f3-4627-bff5-8c13b8dd346b', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('70046b84-b760-4084-aad4-19b3b7ab8d10', (SELECT role_id FROM public.roles WHERE name = 'Tech Support')), ('f3609092-8ad4-4012-9749-5481f6f03ccf', (SELECT role_id FROM public.roles WHERE name = 'Backend Developer')), ('98f02809-2152-4807-9fe9-15c7d26b9ce8', (SELECT role_id FROM public.roles WHERE name = 'Accountant')), ('417adbed-5aaa-46e2-bc0c-e191585c948d', (SELECT role_id FROM public.roles WHERE name = 'QA Engineer'));

-- 9. Request Statuses
INSERT INTO public.request_statuses (name) VALUES ('Pending'), ('Approved'), ('Rejected'), ('Under Review'), ('Cancelled');

-- 10. Leave Types
INSERT INTO public.leave_types (name, requires_attachment) VALUES ('General Illness', true), ('Domestic Calamity', true), ('Maternity', true), ('Paternity', true), ('Unpaid Leave', false);

-- 11. Vacation Types
INSERT INTO public.vacation_types (name) VALUES ('Legal Vacation'), ('Compensatory Days'), ('Vacation Advance'), ('Collective Vacation'), ('Sabbatical');

-- 12. Certificate Types
INSERT INTO public.certificate_types (name, description) VALUES ('Employment Certificate', 'Proof of employment and role'), ('Income Certificate', 'Detail of salary and deductions'), ('Recommendation Letter', 'Professional recommendation'), ('Functions Certificate', 'Detail of performed functions'), ('Bank Certificate', 'Specific bank format');

-- 13. Vacation Balances
INSERT INTO public.vacation_balances (employee_id, year, available_days, used_days) VALUES ('3a824e73-ac35-4fcd-99c8-6c7963e4ba4c', 2025, 6, 10), ('bb68c1fb-fd0c-4c1d-a1d4-7cddea66a25e', 2025, 14, 4), ('2b0e0cc6-43e6-4e33-aec9-638f61c9cae4', 2025, 11, 1), ('8ab48564-ed6a-4866-bc75-64275052c44c', 2025, 2, 4), ('4b60acfd-dcbc-4de3-a6b3-d4e8a8564616', 2025, 1, 11), ('f6c85151-899e-4487-902e-e2e81d9d0cfd', 2025, 0, 8), ('b5440d7a-b818-428b-8049-001fd75e1f69', 2025, 10, 4), ('efc95de0-845d-4b67-8683-c3c132fd5bff', 2025, 1, 9), ('61f02dd6-b98b-42d0-a1da-90d414575aad', 2025, 4, 15), ('966a8046-23bf-488f-aa31-5ce0a5af3ac1', 2025, 13, 4), ('42e39dd1-06a3-4848-bc97-f808b76f5cb5', 2025, 9, 4), ('ae59061a-5ac3-477a-aa7a-5d019d525221', 2025, 10, 4), ('d69b9ab9-8b08-481d-8c4d-5fd61ff53b51', 2025, 3, 13), ('bee3a61a-9f0b-469e-acdf-19df15b47b1c', 2025, 7, 9), ('04ebbfb7-db73-4c1c-890d-ee78c5ad7bf0', 2025, 15, 7), ('f741c042-05dc-425c-9c26-661d9a2c6174', 2025, 0, 6), ('bf508636-10e2-4986-8118-c3da68caa0eb', 2025, 7, 11), ('7309d852-1c71-4f1f-8faa-b60612eb23db', 2025, 2, 11), ('4f53b12b-fe1a-4dce-8c38-fa8372f5dffe', 2025, 6, 14), ('e3a20d1a-633c-41b1-aa5c-687fca1ea849', 2025, 9, 2), ('9895f032-5c21-4b19-959b-ca9133c0045e', 2025, 10, 0), ('18bb5752-4f65-4a80-92ac-90fc0defc14f', 2025, 9, 3), ('4eb18d84-c2f9-4705-90ee-df8e38e4ae1a', 2025, 11, 4), ('d72316f5-21b5-44fc-bff2-34fd957131c2', 2025, 3, 13), ('5cd15a13-3854-40fe-b029-939db99a3481', 2025, 11, 0), ('70c3e444-892e-4209-8a46-2fb9205e1521', 2025, 12, 11), ('a35edab8-80ea-47a4-a2ab-4ad33d448f99', 2025, 9, 9), ('cd10c9b4-e685-4fdd-a6fd-eeac8254d089', 2025, 5, 15), ('0dde516a-e582-4e79-a261-5830a28b4456', 2025, 14, 6), ('22fcb604-d993-43de-92b2-f35ea9634385', 2025, 6, 5), ('46bcef6c-9f49-4f22-89aa-1f755b57dea4', 2025, 4, 2), ('803d4a09-488b-4f79-8163-60076e291e7a', 2025, 14, 15), ('ac7c8a30-1f54-44fd-a251-a17dddaba75c', 2025, 5, 8), ('3a8febc3-0af3-43a4-9c0c-c0e4fd5b168d', 2025, 14, 5), ('1de663a2-2b10-411c-9232-99004ca7edf8', 2025, 0, 10), ('7955fa69-9edc-40bf-ad38-09956bb6cfd4', 2025, 9, 8), ('41435551-a36a-4d3b-8a4f-5040da653a49', 2025, 11, 6), ('a6f0f025-d6d3-4dad-a360-c7ff095eda11', 2025, 13, 9), ('f26a5611-432c-4263-bcd8-c454ae0b5c79', 2025, 13, 8), ('b2c4454f-9d5b-414f-92c2-99388a7c9a7c', 2025, 4, 1), ('9c8e8c0f-e526-42bd-b8f2-80f17eee07b2', 2025, 3, 13), ('50f361d7-ec04-4367-9cbf-ba2ac1d82c9c', 2025, 6, 11), ('453213f7-1a7f-464b-8104-2b96e6d67a39', 2025, 4, 3), ('9f06fef4-c8f2-41ca-ae29-023f6133c188', 2025, 8, 6), ('517c54d0-11e6-450f-92ae-12782859d481', 2025, 8, 6), ('779412db-d4ac-4877-9569-8b0997eebed1', 2025, 13, 3), ('7a88f361-ead6-4f01-959a-b75974113f67', 2025, 4, 15), ('5d8f7338-f23b-41d1-8c9e-6673cfd79834', 2025, 15, 4), ('12fe531c-ca94-4beb-bece-d66bee2468d8', 2025, 11, 9), ('631867f1-9ab3-419e-a31b-e69c5dda184e', 2025, 13, 12), ('c6fe46f0-d714-49e6-84b2-0d19da6bc82f', 2025, 6, 9), ('2956e054-2dfe-4e26-bc50-238c70a600ff', 2025, 1, 4), ('ac3091d6-a49b-4162-83ac-6aba185f6894', 2025, 7, 11), ('066b28fb-1d69-4502-9101-e4ee3f7fa675', 2025, 12, 9), ('8218e591-ca4e-4c40-a66f-286c0d980528', 2025, 4, 13), ('1aa14e0f-1aac-4fb5-9d26-a92220f1df6d', 2025, 4, 0), ('3463812e-03d2-4172-a998-e318c5eb153e', 2025, 6, 8), ('1efcd3e8-4e2b-4b62-9c11-e93ab4138e89', 2025, 1, 11), ('55311910-8552-4dc2-9552-b51f46fac4d7', 2025, 1, 13), ('6fcccc21-898d-41f0-8a6b-c85894ca50c9', 2025, 0, 7), ('2882febf-eae4-4cc8-8349-6f3856c7b743', 2025, 12, 2), ('383c377e-4b6a-49f8-a4a3-32cdd4504387', 2025, 10, 15), ('9018fb09-9eb7-47fb-84fe-1949f159227f', 2025, 0, 1), ('8ed856e5-ce86-4af2-aa66-114a4d4f657f', 2025, 12, 14), ('665b89f3-031d-4749-8b02-f5e010f77a2a', 2025, 13, 0), ('ee6b8055-4906-428b-a054-2210f507a6ed', 2025, 2, 9), ('0dcb33b6-6a67-40db-b63f-4788f32890b9', 2025, 0, 13), ('5deae309-874e-4c48-9362-e44f9cbf8bcd', 2025, 14, 7), ('adcb33d3-c8e9-47b5-8dc1-3f4dfb6203dd', 2025, 6, 9), ('12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', 2025, 0, 14), ('5ebeadd3-6b4c-422d-b542-bb0cf9451d99', 2025, 1, 7), ('2df7520a-e617-491e-a4ce-4594ea2d30ef', 2025, 9, 8), ('441bca38-fe2d-48e4-a863-e67183cd592b', 2025, 6, 2), ('a329b25c-2ccb-44d6-82ff-f0df72fcc6c5', 2025, 7, 12), ('8ce66417-211e-4a89-8d4e-074020ee6cd2', 2025, 10, 7), ('4dacb4ce-e483-4ca2-aa9a-917c60af44c0', 2025, 5, 8), ('fb08ac2f-7574-4f9d-882e-bafb489ab6c6', 2025, 9, 7), ('0911c959-8399-4583-b154-1250ecf41f63', 2025, 4, 4), ('b512d154-f044-4b48-80c4-72fee740e5e4', 2025, 0, 11), ('df6b0675-d8e7-499c-8855-abcd4c61afc0', 2025, 15, 9), ('2742cde7-5985-484d-a77e-4236b06cec1a', 2025, 8, 0), ('fa7a2e9e-9590-425c-a80f-5b4add1bb8dc', 2025, 6, 6), ('bfa4bfc0-f623-4356-b499-8412142c8775', 2025, 12, 0), ('77d9b3a2-4296-432f-bc1a-10e0151fa8ba', 2025, 6, 6), ('f939bb94-c817-4b87-a117-25370e794711', 2025, 5, 3), ('7a39968e-cf6f-4cff-921c-1dc10ab181af', 2025, 13, 3), ('de7303b6-d244-4632-9b6f-cd62641e0d10', 2025, 4, 6), ('543f9b04-fea5-4a71-83bd-f6911063ff90', 2025, 8, 2), ('08aeba94-6421-4abc-88a4-4bb497b67cf6', 2025, 3, 9), ('8d470b03-ead5-4898-b373-d61a64bf50eb', 2025, 1, 8), ('cea1fb2f-0029-4162-8ea3-926c2585fa4c', 2025, 6, 13), ('c8e99b37-c722-4216-b011-a2a4159d348c', 2025, 2, 3), ('baaafb44-6e56-42c5-ba39-a467a941acff', 2025, 8, 6), ('2db46bc8-8fd1-407f-bbef-404374d4aedf', 2025, 8, 5), ('60e04dc1-54e6-4d7d-9856-7949cbdad615', 2025, 12, 8), ('258dd4a8-9659-4d14-9fe5-4f787cbc1737', 2025, 0, 13), ('d426508d-26b5-4b1e-8d91-995d59481d6f', 2025, 11, 8), ('50c71fa1-f737-4b2e-ba4b-b7e24d01a971', 2025, 2, 3), ('cb336c9b-219d-424a-98b7-7feb1f010215', 2025, 7, 12), ('91bcb4a9-f683-481e-b05b-741a1b4d4098', 2025, 6, 2), ('8904a6b4-a958-4c3d-a589-2b35a9866ad3', 2025, 8, 8), ('94674f5e-7045-461c-a0f3-194672e1e595', 2025, 6, 15), ('a061e9a9-f245-4405-8630-ec63808ad6e7', 2025, 12, 11), ('8fc08a9a-80b9-4a90-87bf-2894cfca5e27', 2025, 7, 6), ('51f44fd2-a657-4dcd-8526-177573074a91', 2025, 7, 2), ('2b02e017-625e-4ea5-bbb4-fa23b2cd07f2', 2025, 5, 12), ('834951ab-fdac-46ef-b04b-bbf13d9e6640', 2025, 12, 13), ('fb512a8d-5ffd-4747-8bca-8ad14f7aeebe', 2025, 13, 7), ('a78b17c5-ec54-4d38-9526-6577d7e87056', 2025, 8, 11), ('e0e4add6-4ea2-4bce-9b68-eec5c56b9744', 2025, 1, 4), ('35198028-c785-4e70-87ef-4caacc693c76', 2025, 13, 8), ('379d9eba-ab8b-4805-ac74-ce489d58da1f', 2025, 14, 0), ('735e6ab2-1449-4c45-bbc6-a5996b555bd0', 2025, 5, 11), ('7bae3531-8f73-4c32-8429-c494e1734834', 2025, 13, 12), ('5b12fa9a-7dae-46ec-9b2f-eb05b48cec2e', 2025, 12, 11), ('7afbe7e0-9d31-45ff-86ea-1ce6f96cd9d7', 2025, 7, 7), ('4b9f178d-d365-4efa-9c02-9e6b9ce492c7', 2025, 11, 4), ('e0bcb3ab-32c3-48f2-a8a8-fae5e4ad6c9e', 2025, 13, 1), ('28125096-ee9e-4d86-a026-4a5dedf2f39e', 2025, 3, 12), ('9a7d8464-cc62-46d7-b3ab-28a153978bd2', 2025, 13, 14), ('87f2dec9-e680-4512-b5a0-3d41e11c0257', 2025, 8, 0), ('9cf2c037-2e1a-47ea-b765-0f4b31be3e48', 2025, 6, 6), ('66bb1b56-3b9b-49e2-bf15-f4a23ed15830', 2025, 1, 8), ('77f3cfe1-6040-44a4-b3bc-bfdfc234131c', 2025, 6, 12), ('f768f1e4-0c2f-4eb0-ada5-dc614dec582f', 2025, 5, 7), ('47607ca4-472a-489b-815d-b502536b3eee', 2025, 15, 2), ('568413c1-aa2f-4f8c-b735-816cd1a58368', 2025, 4, 8), ('22b96265-975c-4bec-a908-3d04bd237fd3', 2025, 1, 6), ('6493e68d-b22c-4f63-96ae-29178d3e4d0d', 2025, 7, 10), ('81ad28f1-98c0-497d-adf3-629396e34faa', 2025, 7, 8), ('2f1f4eb8-17a3-4e77-b359-e47e4bbb9ecf', 2025, 5, 6), ('a538f6e8-18c3-4e09-82cd-9c52954f35ce', 2025, 6, 9), ('2f04f9d8-dab4-4638-982e-5760d2bb096a', 2025, 7, 0), ('3bb9ac54-8021-4fb8-9c34-a2fc346614af', 2025, 12, 5), ('57bfd0c8-deb9-4d56-9fa1-add2c6246a26', 2025, 2, 4), ('bd87f375-7bae-42ce-b9f6-d38b80f50b3e', 2025, 9, 11), ('18c3a4f5-bd47-4294-9bce-bbdf05efba8c', 2025, 6, 3), ('4980c8e5-75a4-4964-b741-f6317f82a7f8', 2025, 4, 2), ('eeabd4f5-03a2-4ceb-8935-aeee66123034', 2025, 11, 2), ('8de7548d-1b05-4137-ad64-1913bdec7147', 2025, 9, 12), ('160a2dd3-a10e-4814-9ccc-2d35ef2115f0', 2025, 12, 0), ('08e22eca-b786-4211-92ee-f77b6e60c9a8', 2025, 5, 7), ('d053a295-946b-41e3-9b39-e5992ff18b85', 2025, 6, 5), ('f86f0f56-cfbe-4657-b15f-9f1f3180bad5', 2025, 11, 5), ('50baf05f-a15e-4141-9cd7-e24c0f273829', 2025, 13, 3), ('98470b77-4c3a-4ec0-8933-9c4918ae2264', 2025, 7, 3), ('43ccfa5f-1b19-4c06-b1c4-71468f2bce1f', 2025, 7, 9), ('eafa90c7-c170-486d-9ae9-a0d7400824ec', 2025, 14, 13), ('ddab7d7c-23cd-48fc-85fc-b888ec57acc3', 2025, 13, 4), ('22c3fc65-1c3f-461a-b07f-fbe9850d79f7', 2025, 5, 4), ('520e0743-700a-42e4-b081-2161dcafac52', 2025, 15, 6), ('fe2cd0d0-5bc0-47e6-99bb-2e0fa1d4eeb1', 2025, 2, 8), ('d636752c-12c8-4f66-9a7d-6ab845385ea6', 2025, 13, 9), ('f5007e17-6c33-40c8-9fc6-7cd9f5ba0f16', 2025, 0, 1), ('68dd7eed-cbbe-4f06-ac1c-3f99f6029e15', 2025, 11, 13), ('4a639de5-61f6-49fd-a395-373e8ced41d3', 2025, 7, 12), ('dd48fcd2-5c34-492d-9db3-b7ff283db1f2', 2025, 6, 9), ('0a972d48-de32-46d1-aeb8-eaa3e248be11', 2025, 7, 3), ('f53b8c3d-2752-4744-9a4b-269b65e9120f', 2025, 9, 6), ('469141ac-8d7b-4f30-809a-2c6f86d9baa0', 2025, 10, 10), ('f61935c1-8f88-41d0-b894-2d74a3e69a08', 2025, 4, 10), ('337a16ef-19f5-4e72-a414-9812048be8d2', 2025, 9, 12), ('0ff0c276-9181-4355-bcfc-aeb890af6926', 2025, 8, 5), ('7fcf647c-d1c8-43bb-9da1-1a2c5b6c6852', 2025, 8, 9), ('864dafb5-dbac-4253-b1db-794b27e56c0e', 2025, 5, 1), ('d1ad4abe-5fa5-4ead-94b2-8e7a82e77774', 2025, 4, 5), ('72b9e80e-9c19-403b-8112-a560242438cd', 2025, 2, 14), ('9b73bfa4-555f-492b-9b40-aa486a467bd4', 2025, 1, 9), ('da222234-ec2a-4e7c-9291-b577eab8a19e', 2025, 9, 3), ('5f757802-6550-4127-b81e-74e9d6748738', 2025, 14, 7), ('845bc92f-9e9b-4b1a-83ba-6318d53b5bbf', 2025, 12, 11), ('7a82d465-e309-4b82-aef1-ef058b19ad31', 2025, 4, 11), ('0780524d-cce1-45e8-958c-3e4954255ad7', 2025, 5, 14), ('412fc9e3-89bf-4a4e-9279-948b4332a575', 2025, 10, 7), ('de9820a0-9c1c-4b78-83b1-2b02e778d645', 2025, 3, 0), ('4bd0f175-27b1-4cd4-bfca-5cb9d6e57ee6', 2025, 13, 6), ('542bd5d4-350a-4a63-be0e-fdc118d3ab95', 2025, 5, 7), ('d73d8fb7-8e20-4f43-b687-a1a60a5b2471', 2025, 14, 4), ('c29d7e63-1fd0-4ca7-b99d-cd33090efae7', 2025, 3, 2), ('788dd437-2ac8-48c3-aa1f-66eb8bc405ad', 2025, 8, 3), ('54ab1f4e-b841-4f1d-a737-b26afb11728f', 2025, 10, 7), ('5a076111-c959-45d2-9c69-a7bb54a1581f', 2025, 4, 11), ('eb563105-5388-43f5-8ea1-394eae002c04', 2025, 12, 8), ('568f0d7e-55eb-46bf-a8b9-96619bb875bc', 2025, 5, 12), ('7b0f328a-f264-4728-8122-2925c2077b87', 2025, 2, 7), ('0a3d61d3-a5ea-4b82-90f5-6a4b147ea0bf', 2025, 3, 1), ('ddbdba42-4ba7-4e7a-bb11-fdc337a1d066', 2025, 9, 7), ('438706d9-6ac5-4ad9-af46-2ebed14f54f9', 2025, 3, 3), ('6d608a88-517e-48ac-b2c2-e633f445f46b', 2025, 3, 10), ('63d847a8-4cbb-4e32-8597-a1a45c13d180', 2025, 4, 14), ('8675b70f-3476-4576-a4de-95c369a76d2a', 2025, 7, 0), ('4338ab23-cbe0-41ba-becd-0ad76667cbe0', 2025, 9, 1), ('df25c42b-703e-48e4-b270-cb3f95e8e2c0', 2025, 2, 15), ('2eb759e2-6bcc-4196-9d70-7ea34f689380', 2025, 7, 9), ('9f9de4d3-af49-4448-a771-d2d0ba455612', 2025, 12, 11), ('d8370fb4-308a-433e-991f-6e0fc8354140', 2025, 12, 13), ('a423ca3f-595c-4b7c-9538-51e8caedab4f', 2025, 8, 12), ('94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', 2025, 6, 7), ('edeb601c-4721-442e-ab3b-ad4f01f218d9', 2025, 7, 10), ('1e020116-7d9d-4b51-a86f-73c0f5b408ae', 2025, 0, 9), ('3cc06bae-36d3-4e9e-a661-a56f32705925', 2025, 13, 13), ('7fd90d65-5493-4cd6-904f-3088b26382d0', 2025, 1, 13), ('8900c328-4b65-420f-a529-4874c0ccce71', 2025, 6, 8), ('77d1dee3-39bd-41ca-806f-59f1dc9289ef', 2025, 6, 1), ('4a616f6b-ad5c-4509-9ca8-d7e4cd39d520', 2025, 13, 2), ('b744dceb-5c80-4ad0-be62-febb9622703b', 2025, 11, 14), ('85cac177-703e-4c92-a36c-8d6cad5bd100', 2025, 1, 13), ('4883c4f6-882f-45cb-95e6-59f4da35cb84', 2025, 8, 4), ('c2695c2d-2a9c-4669-a51f-3336e2ef72b2', 2025, 7, 9), ('830350d2-1904-48fd-937a-af37134a7071', 2025, 12, 5), ('aa454e57-3904-4e9a-aa5e-15121b813993', 2025, 2, 9), ('8f1934e2-9e45-44cd-962a-d19ae5e87d4f', 2025, 13, 10), ('1e62efcc-b7ed-43ae-97be-d4d58598af5c', 2025, 0, 7), ('358dc6c4-9385-4284-8a37-c188e9a52101', 2025, 3, 4), ('591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', 2025, 15, 4), ('fc9782dc-f3c8-415e-a9cd-4ad3d87b4297', 2025, 6, 4), ('2fb57514-1b55-4737-b2ea-ea6d7225a08f', 2025, 0, 7), ('581291a8-0888-436f-9518-68795b6a99ba', 2025, 0, 12), ('80ec8511-dfb5-469e-8040-76f9025eb0b3', 2025, 11, 11), ('9a144cb3-e4c3-4029-a54e-2b295ccbfb53', 2025, 2, 15), ('f7d6e307-f488-4786-ac71-0d1c474cd8e9', 2025, 10, 8), ('11a0edab-2027-4cc2-8881-b37db063b454', 2025, 11, 14), ('82d7a493-1242-47ac-bb05-e16c4326f00e', 2025, 5, 2), ('f7cec624-a67d-46d9-85da-2d8445fe6b62', 2025, 8, 7), ('9f009394-74f7-438d-a072-8c2f2e0a3130', 2025, 15, 9), ('68df453b-06cc-4570-84fb-646e1a184338', 2025, 5, 0), ('4a44fc76-309d-4446-811d-6e33c6fac6b2', 2025, 13, 8), ('8d02d12a-0f5b-4d4e-8cc7-13d3a4d36939', 2025, 1, 7), ('c38f7614-899e-4cb4-aab3-a6b5dec59c8d', 2025, 15, 5), ('835312cf-fcd8-41cf-b8ed-f109d251c362', 2025, 1, 13), ('c78438a2-5a57-43e2-904e-cec549315fb6', 2025, 14, 8), ('b35fc239-0fdf-4454-92e0-ffc4b7d263a5', 2025, 10, 3), ('7ac730b3-3bd2-48d9-9fe0-d7d076ac2739', 2025, 0, 1), ('dca6ff3c-ad85-4366-b05d-35d00ed5bc23', 2025, 12, 14), ('b9531362-35af-4193-9b85-e4a9283fa15a', 2025, 6, 14), ('643dde90-8e7a-4b00-a6b0-335e9805565e', 2025, 0, 4), ('ef4d0fe8-6487-4224-bdce-0b8dc6ae8292', 2025, 8, 14), ('16aabf39-d0c1-4e70-b701-1f36dddb45a8', 2025, 1, 15), ('1aef1416-adf9-4c92-9536-4ecd231f7418', 2025, 4, 11), ('960e494c-1751-4a33-9469-64d3b17d94f0', 2025, 2, 9), ('002fe3b4-56d3-4611-a839-8b65910bb7ee', 2025, 5, 7), ('d7e51d89-d39e-4c32-b54e-2ef150d6ab5e', 2025, 3, 6), ('c662243f-9da5-492a-988d-213f8d4d0164', 2025, 4, 0), ('8b722aad-86a8-498b-921f-aac40b29d698', 2025, 1, 13), ('6e4aa712-a812-457d-b3cc-4622de964f72', 2025, 6, 14), ('fb9956e2-07f3-4627-bff5-8c13b8dd346b', 2025, 2, 12), ('70046b84-b760-4084-aad4-19b3b7ab8d10', 2025, 15, 12), ('f3609092-8ad4-4012-9749-5481f6f03ccf', 2025, 7, 4), ('98f02809-2152-4807-9fe9-15c7d26b9ce8', 2025, 13, 7), ('417adbed-5aaa-46e2-bc0c-e191585c948d', 2025, 6, 15);

-- 14. Employee Salaries
INSERT INTO public.employee_salaries (employee_id, salary_amount, effective_date) VALUES ('3a824e73-ac35-4fcd-99c8-6c7963e4ba4c', 7244336, '2024-11-05'), ('bb68c1fb-fd0c-4c1d-a1d4-7cddea66a25e', 4251752, '2023-11-21'), ('2b0e0cc6-43e6-4e33-aec9-638f61c9cae4', 7498270, '2022-12-01'), ('8ab48564-ed6a-4866-bc75-64275052c44c', 6198333, '2022-10-10'), ('4b60acfd-dcbc-4de3-a6b3-d4e8a8564616', 4027305, '2024-03-11'), ('f6c85151-899e-4487-902e-e2e81d9d0cfd', 3595146, '2024-12-30'), ('b5440d7a-b818-428b-8049-001fd75e1f69', 6687841, '2022-07-06'), ('efc95de0-845d-4b67-8683-c3c132fd5bff', 5502352, '2023-07-30'), ('61f02dd6-b98b-42d0-a1da-90d414575aad', 3220675, '2023-12-23'), ('966a8046-23bf-488f-aa31-5ce0a5af3ac1', 9338207, '2024-03-25'), ('42e39dd1-06a3-4848-bc97-f808b76f5cb5', 8975066, '2023-08-15'), ('ae59061a-5ac3-477a-aa7a-5d019d525221', 11040319, '2023-07-20'), ('d69b9ab9-8b08-481d-8c4d-5fd61ff53b51', 11819450, '2023-09-14'), ('bee3a61a-9f0b-469e-acdf-19df15b47b1c', 9884477, '2022-12-04'), ('04ebbfb7-db73-4c1c-890d-ee78c5ad7bf0', 5879897, '2023-05-15'), ('f741c042-05dc-425c-9c26-661d9a2c6174', 11846030, '2024-09-22'), ('bf508636-10e2-4986-8118-c3da68caa0eb', 6398538, '2024-02-13'), ('7309d852-1c71-4f1f-8faa-b60612eb23db', 4459323, '2024-05-26'), ('4f53b12b-fe1a-4dce-8c38-fa8372f5dffe', 11889439, '2022-05-26'), ('e3a20d1a-633c-41b1-aa5c-687fca1ea849', 4028472, '2023-08-27'), ('9895f032-5c21-4b19-959b-ca9133c0045e', 4780990, '2024-09-16'), ('18bb5752-4f65-4a80-92ac-90fc0defc14f', 7778649, '2023-06-16'), ('4eb18d84-c2f9-4705-90ee-df8e38e4ae1a', 8458345, '2024-06-25'), ('d72316f5-21b5-44fc-bff2-34fd957131c2', 5213683, '2023-03-16'), ('5cd15a13-3854-40fe-b029-939db99a3481', 9934161, '2022-05-15'), ('70c3e444-892e-4209-8a46-2fb9205e1521', 11794956, '2022-05-27'), ('a35edab8-80ea-47a4-a2ab-4ad33d448f99', 5213318, '2024-01-04'), ('cd10c9b4-e685-4fdd-a6fd-eeac8254d089', 9029023, '2024-11-11'), ('0dde516a-e582-4e79-a261-5830a28b4456', 4054881, '2024-11-30'), ('22fcb604-d993-43de-92b2-f35ea9634385', 8292734, '2023-08-25'), ('46bcef6c-9f49-4f22-89aa-1f755b57dea4', 10655422, '2024-11-12'), ('803d4a09-488b-4f79-8163-60076e291e7a', 5291539, '2023-05-16'), ('ac7c8a30-1f54-44fd-a251-a17dddaba75c', 6189438, '2024-08-09'), ('3a8febc3-0af3-43a4-9c0c-c0e4fd5b168d', 4240201, '2024-10-30'), ('1de663a2-2b10-411c-9232-99004ca7edf8', 7591643, '2022-02-22'), ('7955fa69-9edc-40bf-ad38-09956bb6cfd4', 11208907, '2024-02-07'), ('41435551-a36a-4d3b-8a4f-5040da653a49', 6223095, '2022-05-19'), ('a6f0f025-d6d3-4dad-a360-c7ff095eda11', 2817617, '2023-09-13'), ('f26a5611-432c-4263-bcd8-c454ae0b5c79', 5841557, '2024-06-16'), ('b2c4454f-9d5b-414f-92c2-99388a7c9a7c', 5371054, '2023-05-01'), ('9c8e8c0f-e526-42bd-b8f2-80f17eee07b2', 9632035, '2022-12-13'), ('50f361d7-ec04-4367-9cbf-ba2ac1d82c9c', 7839761, '2023-05-03'), ('453213f7-1a7f-464b-8104-2b96e6d67a39', 6153862, '2022-09-24'), ('9f06fef4-c8f2-41ca-ae29-023f6133c188', 6509641, '2024-10-08'), ('517c54d0-11e6-450f-92ae-12782859d481', 9079213, '2024-10-26'), ('779412db-d4ac-4877-9569-8b0997eebed1', 11210894, '2022-06-11'), ('7a88f361-ead6-4f01-959a-b75974113f67', 7415676, '2023-02-06'), ('5d8f7338-f23b-41d1-8c9e-6673cfd79834', 2996714, '2023-11-15'), ('12fe531c-ca94-4beb-bece-d66bee2468d8', 5941817, '2023-07-07'), ('631867f1-9ab3-419e-a31b-e69c5dda184e', 3123119, '2022-04-04'), ('c6fe46f0-d714-49e6-84b2-0d19da6bc82f', 3643794, '2023-10-25'), ('2956e054-2dfe-4e26-bc50-238c70a600ff', 3028422, '2024-10-07'), ('ac3091d6-a49b-4162-83ac-6aba185f6894', 11276305, '2023-10-26'), ('066b28fb-1d69-4502-9101-e4ee3f7fa675', 11627903, '2022-08-11'), ('8218e591-ca4e-4c40-a66f-286c0d980528', 6987324, '2024-03-06'), ('1aa14e0f-1aac-4fb5-9d26-a92220f1df6d', 3091172, '2022-01-14'), ('3463812e-03d2-4172-a998-e318c5eb153e', 5782063, '2023-08-23'), ('1efcd3e8-4e2b-4b62-9c11-e93ab4138e89', 4542750, '2022-10-28'), ('55311910-8552-4dc2-9552-b51f46fac4d7', 2722648, '2023-07-17'), ('6fcccc21-898d-41f0-8a6b-c85894ca50c9', 6963222, '2024-05-26'), ('2882febf-eae4-4cc8-8349-6f3856c7b743', 10271756, '2024-07-25'), ('383c377e-4b6a-49f8-a4a3-32cdd4504387', 3603695, '2023-01-21'), ('9018fb09-9eb7-47fb-84fe-1949f159227f', 6691950, '2022-12-05'), ('8ed856e5-ce86-4af2-aa66-114a4d4f657f', 7024403, '2022-09-25'), ('665b89f3-031d-4749-8b02-f5e010f77a2a', 3474263, '2022-02-20'), ('ee6b8055-4906-428b-a054-2210f507a6ed', 8642760, '2024-07-28'), ('0dcb33b6-6a67-40db-b63f-4788f32890b9', 8325366, '2022-03-10'), ('5deae309-874e-4c48-9362-e44f9cbf8bcd', 3748076, '2023-01-10'), ('adcb33d3-c8e9-47b5-8dc1-3f4dfb6203dd', 6660361, '2023-08-31'), ('12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', 8323668, '2023-12-19'), ('5ebeadd3-6b4c-422d-b542-bb0cf9451d99', 3053505, '2024-09-28'), ('2df7520a-e617-491e-a4ce-4594ea2d30ef', 9026086, '2024-11-02'), ('441bca38-fe2d-48e4-a863-e67183cd592b', 9579322, '2024-08-27'), ('a329b25c-2ccb-44d6-82ff-f0df72fcc6c5', 6109309, '2024-06-09'), ('8ce66417-211e-4a89-8d4e-074020ee6cd2', 8336343, '2024-11-03'), ('4dacb4ce-e483-4ca2-aa9a-917c60af44c0', 5450580, '2024-12-07'), ('fb08ac2f-7574-4f9d-882e-bafb489ab6c6', 7010443, '2024-03-03'), ('0911c959-8399-4583-b154-1250ecf41f63', 11648077, '2024-08-08'), ('b512d154-f044-4b48-80c4-72fee740e5e4', 4323061, '2024-05-12'), ('df6b0675-d8e7-499c-8855-abcd4c61afc0', 3902517, '2023-01-27'), ('2742cde7-5985-484d-a77e-4236b06cec1a', 4306090, '2022-08-22'), ('fa7a2e9e-9590-425c-a80f-5b4add1bb8dc', 8016622, '2024-01-16'), ('bfa4bfc0-f623-4356-b499-8412142c8775', 7389916, '2022-10-10'), ('77d9b3a2-4296-432f-bc1a-10e0151fa8ba', 7704117, '2022-11-01'), ('f939bb94-c817-4b87-a117-25370e794711', 8434128, '2022-08-01'), ('7a39968e-cf6f-4cff-921c-1dc10ab181af', 2507470, '2022-05-08'), ('de7303b6-d244-4632-9b6f-cd62641e0d10', 9163129, '2023-05-24'), ('543f9b04-fea5-4a71-83bd-f6911063ff90', 8689332, '2024-06-23'), ('08aeba94-6421-4abc-88a4-4bb497b67cf6', 8125688, '2024-07-27'), ('8d470b03-ead5-4898-b373-d61a64bf50eb', 6816835, '2023-02-08'), ('cea1fb2f-0029-4162-8ea3-926c2585fa4c', 9030207, '2022-05-18'), ('c8e99b37-c722-4216-b011-a2a4159d348c', 3087424, '2023-03-06'), ('baaafb44-6e56-42c5-ba39-a467a941acff', 9788196, '2023-02-13'), ('2db46bc8-8fd1-407f-bbef-404374d4aedf', 2657073, '2023-09-30'), ('60e04dc1-54e6-4d7d-9856-7949cbdad615', 2847693, '2024-10-30'), ('258dd4a8-9659-4d14-9fe5-4f787cbc1737', 3349039, '2022-04-17'), ('d426508d-26b5-4b1e-8d91-995d59481d6f', 11017671, '2023-05-31'), ('50c71fa1-f737-4b2e-ba4b-b7e24d01a971', 4251995, '2023-03-24'), ('cb336c9b-219d-424a-98b7-7feb1f010215', 5491545, '2022-06-12'), ('91bcb4a9-f683-481e-b05b-741a1b4d4098', 6133722, '2024-11-22'), ('8904a6b4-a958-4c3d-a589-2b35a9866ad3', 11843083, '2022-01-22'), ('94674f5e-7045-461c-a0f3-194672e1e595', 6075950, '2022-09-18'), ('a061e9a9-f245-4405-8630-ec63808ad6e7', 10871169, '2022-09-14'), ('8fc08a9a-80b9-4a90-87bf-2894cfca5e27', 4882823, '2023-10-02'), ('51f44fd2-a657-4dcd-8526-177573074a91', 5461542, '2024-07-07'), ('2b02e017-625e-4ea5-bbb4-fa23b2cd07f2', 3839783, '2023-10-12'), ('834951ab-fdac-46ef-b04b-bbf13d9e6640', 3807938, '2022-03-22'), ('fb512a8d-5ffd-4747-8bca-8ad14f7aeebe', 4028644, '2022-11-30'), ('a78b17c5-ec54-4d38-9526-6577d7e87056', 7363870, '2022-11-09'), ('e0e4add6-4ea2-4bce-9b68-eec5c56b9744', 2819150, '2023-07-29'), ('35198028-c785-4e70-87ef-4caacc693c76', 8373554, '2022-12-15'), ('379d9eba-ab8b-4805-ac74-ce489d58da1f', 7558041, '2023-11-16'), ('735e6ab2-1449-4c45-bbc6-a5996b555bd0', 6850530, '2023-09-27'), ('7bae3531-8f73-4c32-8429-c494e1734834', 3442122, '2024-07-31'), ('5b12fa9a-7dae-46ec-9b2f-eb05b48cec2e', 3508090, '2023-06-27'), ('7afbe7e0-9d31-45ff-86ea-1ce6f96cd9d7', 7053602, '2024-02-11'), ('4b9f178d-d365-4efa-9c02-9e6b9ce492c7', 9944609, '2024-10-06'), ('e0bcb3ab-32c3-48f2-a8a8-fae5e4ad6c9e', 3335768, '2024-01-06'), ('28125096-ee9e-4d86-a026-4a5dedf2f39e', 10295397, '2024-03-27'), ('9a7d8464-cc62-46d7-b3ab-28a153978bd2', 7584096, '2024-06-25'), ('87f2dec9-e680-4512-b5a0-3d41e11c0257', 7255857, '2024-03-22'), ('9cf2c037-2e1a-47ea-b765-0f4b31be3e48', 2772277, '2023-11-04'), ('66bb1b56-3b9b-49e2-bf15-f4a23ed15830', 5048917, '2022-04-09'), ('77f3cfe1-6040-44a4-b3bc-bfdfc234131c', 9660380, '2022-01-11'), ('f768f1e4-0c2f-4eb0-ada5-dc614dec582f', 11653569, '2024-12-17'), ('47607ca4-472a-489b-815d-b502536b3eee', 9993658, '2024-06-26'), ('568413c1-aa2f-4f8c-b735-816cd1a58368', 5363076, '2022-06-21'), ('22b96265-975c-4bec-a908-3d04bd237fd3', 10054958, '2023-11-09'), ('6493e68d-b22c-4f63-96ae-29178d3e4d0d', 5787229, '2024-02-19'), ('81ad28f1-98c0-497d-adf3-629396e34faa', 3973899, '2024-11-14'), ('2f1f4eb8-17a3-4e77-b359-e47e4bbb9ecf', 11729962, '2022-08-24'), ('a538f6e8-18c3-4e09-82cd-9c52954f35ce', 10212086, '2024-11-16'), ('2f04f9d8-dab4-4638-982e-5760d2bb096a', 3840411, '2023-03-17'), ('3bb9ac54-8021-4fb8-9c34-a2fc346614af', 7113690, '2022-06-14'), ('57bfd0c8-deb9-4d56-9fa1-add2c6246a26', 6936877, '2022-06-26'), ('bd87f375-7bae-42ce-b9f6-d38b80f50b3e', 8864751, '2023-09-10'), ('18c3a4f5-bd47-4294-9bce-bbdf05efba8c', 2619804, '2023-01-09'), ('4980c8e5-75a4-4964-b741-f6317f82a7f8', 3635007, '2023-08-25'), ('eeabd4f5-03a2-4ceb-8935-aeee66123034', 8913736, '2024-01-30'), ('8de7548d-1b05-4137-ad64-1913bdec7147', 7545408, '2024-04-01'), ('160a2dd3-a10e-4814-9ccc-2d35ef2115f0', 9751682, '2024-01-05'), ('08e22eca-b786-4211-92ee-f77b6e60c9a8', 3185574, '2024-07-21'), ('d053a295-946b-41e3-9b39-e5992ff18b85', 11140983, '2024-12-11'), ('f86f0f56-cfbe-4657-b15f-9f1f3180bad5', 7640828, '2024-05-09'), ('50baf05f-a15e-4141-9cd7-e24c0f273829', 10414403, '2022-05-08'), ('98470b77-4c3a-4ec0-8933-9c4918ae2264', 2784151, '2022-06-15'), ('43ccfa5f-1b19-4c06-b1c4-71468f2bce1f', 5660907, '2023-02-16'), ('eafa90c7-c170-486d-9ae9-a0d7400824ec', 2727971, '2023-10-04'), ('ddab7d7c-23cd-48fc-85fc-b888ec57acc3', 6326039, '2022-01-27'), ('22c3fc65-1c3f-461a-b07f-fbe9850d79f7', 4006411, '2022-10-22'), ('520e0743-700a-42e4-b081-2161dcafac52', 11233430, '2024-05-02'), ('fe2cd0d0-5bc0-47e6-99bb-2e0fa1d4eeb1', 7453693, '2023-03-06'), ('d636752c-12c8-4f66-9a7d-6ab845385ea6', 4396176, '2022-06-16'), ('f5007e17-6c33-40c8-9fc6-7cd9f5ba0f16', 6661985, '2023-09-25'), ('68dd7eed-cbbe-4f06-ac1c-3f99f6029e15', 6601037, '2022-06-14'), ('4a639de5-61f6-49fd-a395-373e8ced41d3', 6894115, '2022-07-16'), ('dd48fcd2-5c34-492d-9db3-b7ff283db1f2', 3491945, '2024-05-03'), ('0a972d48-de32-46d1-aeb8-eaa3e248be11', 9290037, '2024-05-30'), ('f53b8c3d-2752-4744-9a4b-269b65e9120f', 2894241, '2022-02-10'), ('469141ac-8d7b-4f30-809a-2c6f86d9baa0', 6347357, '2022-03-11'), ('f61935c1-8f88-41d0-b894-2d74a3e69a08', 8922031, '2023-02-25'), ('337a16ef-19f5-4e72-a414-9812048be8d2', 8461476, '2024-11-09'), ('0ff0c276-9181-4355-bcfc-aeb890af6926', 3052294, '2023-11-12'), ('7fcf647c-d1c8-43bb-9da1-1a2c5b6c6852', 7792193, '2023-08-18'), ('864dafb5-dbac-4253-b1db-794b27e56c0e', 5910818, '2024-10-03'), ('d1ad4abe-5fa5-4ead-94b2-8e7a82e77774', 7271937, '2023-09-19'), ('72b9e80e-9c19-403b-8112-a560242438cd', 7616008, '2024-01-20'), ('9b73bfa4-555f-492b-9b40-aa486a467bd4', 9693144, '2022-07-19'), ('da222234-ec2a-4e7c-9291-b577eab8a19e', 10450762, '2023-03-21'), ('5f757802-6550-4127-b81e-74e9d6748738', 8994990, '2022-06-16'), ('845bc92f-9e9b-4b1a-83ba-6318d53b5bbf', 3769166, '2024-06-09'), ('7a82d465-e309-4b82-aef1-ef058b19ad31', 7359769, '2022-11-03'), ('0780524d-cce1-45e8-958c-3e4954255ad7', 5560444, '2022-01-05'), ('412fc9e3-89bf-4a4e-9279-948b4332a575', 10527074, '2022-12-11'), ('de9820a0-9c1c-4b78-83b1-2b02e778d645', 4760606, '2024-08-22'), ('4bd0f175-27b1-4cd4-bfca-5cb9d6e57ee6', 7980666, '2023-11-07'), ('542bd5d4-350a-4a63-be0e-fdc118d3ab95', 4431406, '2022-11-01'), ('d73d8fb7-8e20-4f43-b687-a1a60a5b2471', 3211595, '2023-12-07'), ('c29d7e63-1fd0-4ca7-b99d-cd33090efae7', 5896045, '2024-05-18'), ('788dd437-2ac8-48c3-aa1f-66eb8bc405ad', 10632870, '2023-03-04'), ('54ab1f4e-b841-4f1d-a737-b26afb11728f', 7384813, '2022-11-17'), ('5a076111-c959-45d2-9c69-a7bb54a1581f', 2949273, '2022-01-02'), ('eb563105-5388-43f5-8ea1-394eae002c04', 8703626, '2024-12-27'), ('568f0d7e-55eb-46bf-a8b9-96619bb875bc', 6545003, '2024-10-09'), ('7b0f328a-f264-4728-8122-2925c2077b87', 5092596, '2022-11-28'), ('0a3d61d3-a5ea-4b82-90f5-6a4b147ea0bf', 2551000, '2024-04-09'), ('ddbdba42-4ba7-4e7a-bb11-fdc337a1d066', 2741382, '2023-08-08'), ('438706d9-6ac5-4ad9-af46-2ebed14f54f9', 4553969, '2023-04-16'), ('6d608a88-517e-48ac-b2c2-e633f445f46b', 7225289, '2022-05-09'), ('63d847a8-4cbb-4e32-8597-a1a45c13d180', 4732825, '2024-10-22'), ('8675b70f-3476-4576-a4de-95c369a76d2a', 3797793, '2023-06-25'), ('4338ab23-cbe0-41ba-becd-0ad76667cbe0', 2660311, '2023-08-16'), ('df25c42b-703e-48e4-b270-cb3f95e8e2c0', 4647765, '2024-11-21'), ('2eb759e2-6bcc-4196-9d70-7ea34f689380', 8000924, '2022-11-07'), ('9f9de4d3-af49-4448-a771-d2d0ba455612', 9470541, '2024-06-15'), ('d8370fb4-308a-433e-991f-6e0fc8354140', 9902840, '2024-06-20'), ('a423ca3f-595c-4b7c-9538-51e8caedab4f', 9739522, '2022-02-21'), ('94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', 10809738, '2024-08-02'), ('edeb601c-4721-442e-ab3b-ad4f01f218d9', 5195052, '2024-11-28'), ('1e020116-7d9d-4b51-a86f-73c0f5b408ae', 6487090, '2024-12-14'), ('3cc06bae-36d3-4e9e-a661-a56f32705925', 10597226, '2024-07-07'), ('7fd90d65-5493-4cd6-904f-3088b26382d0', 4902876, '2022-02-04'), ('8900c328-4b65-420f-a529-4874c0ccce71', 3771545, '2024-03-06'), ('77d1dee3-39bd-41ca-806f-59f1dc9289ef', 3554580, '2022-06-18'), ('4a616f6b-ad5c-4509-9ca8-d7e4cd39d520', 10554432, '2024-06-17'), ('b744dceb-5c80-4ad0-be62-febb9622703b', 11473242, '2023-03-21'), ('85cac177-703e-4c92-a36c-8d6cad5bd100', 9088133, '2023-06-16'), ('4883c4f6-882f-45cb-95e6-59f4da35cb84', 6628783, '2023-11-30'), ('c2695c2d-2a9c-4669-a51f-3336e2ef72b2', 10430745, '2022-10-29'), ('830350d2-1904-48fd-937a-af37134a7071', 5388544, '2023-06-17'), ('aa454e57-3904-4e9a-aa5e-15121b813993', 4794778, '2023-12-09'), ('8f1934e2-9e45-44cd-962a-d19ae5e87d4f', 7735070, '2024-01-06'), ('1e62efcc-b7ed-43ae-97be-d4d58598af5c', 9553713, '2022-05-01'), ('358dc6c4-9385-4284-8a37-c188e9a52101', 11491510, '2024-01-01'), ('591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', 4018055, '2024-12-01'), ('fc9782dc-f3c8-415e-a9cd-4ad3d87b4297', 6389247, '2024-03-16'), ('2fb57514-1b55-4737-b2ea-ea6d7225a08f', 4665778, '2023-07-09'), ('581291a8-0888-436f-9518-68795b6a99ba', 11599766, '2024-09-27'), ('80ec8511-dfb5-469e-8040-76f9025eb0b3', 9207991, '2024-04-26'), ('9a144cb3-e4c3-4029-a54e-2b295ccbfb53', 8075955, '2022-01-05'), ('f7d6e307-f488-4786-ac71-0d1c474cd8e9', 6499744, '2023-04-14'), ('11a0edab-2027-4cc2-8881-b37db063b454', 11132003, '2024-08-24'), ('82d7a493-1242-47ac-bb05-e16c4326f00e', 10566327, '2024-03-30'), ('f7cec624-a67d-46d9-85da-2d8445fe6b62', 11775647, '2024-06-22'), ('9f009394-74f7-438d-a072-8c2f2e0a3130', 8888249, '2024-03-17'), ('68df453b-06cc-4570-84fb-646e1a184338', 10484419, '2022-12-09'), ('4a44fc76-309d-4446-811d-6e33c6fac6b2', 9095553, '2022-07-22'), ('8d02d12a-0f5b-4d4e-8cc7-13d3a4d36939', 11728863, '2022-07-10'), ('c38f7614-899e-4cb4-aab3-a6b5dec59c8d', 7007942, '2023-05-10'), ('835312cf-fcd8-41cf-b8ed-f109d251c362', 11477269, '2024-12-19'), ('c78438a2-5a57-43e2-904e-cec549315fb6', 7440139, '2023-12-10'), ('b35fc239-0fdf-4454-92e0-ffc4b7d263a5', 10123442, '2023-07-20'), ('7ac730b3-3bd2-48d9-9fe0-d7d076ac2739', 10272683, '2022-01-18'), ('dca6ff3c-ad85-4366-b05d-35d00ed5bc23', 9914969, '2022-09-16'), ('b9531362-35af-4193-9b85-e4a9283fa15a', 4430694, '2023-04-05'), ('643dde90-8e7a-4b00-a6b0-335e9805565e', 9949610, '2022-10-13'), ('ef4d0fe8-6487-4224-bdce-0b8dc6ae8292', 11869628, '2024-11-29'), ('16aabf39-d0c1-4e70-b701-1f36dddb45a8', 10815588, '2023-07-06'), ('1aef1416-adf9-4c92-9536-4ecd231f7418', 2593864, '2023-11-22'), ('960e494c-1751-4a33-9469-64d3b17d94f0', 6302038, '2024-03-16'), ('002fe3b4-56d3-4611-a839-8b65910bb7ee', 3809959, '2022-05-25'), ('d7e51d89-d39e-4c32-b54e-2ef150d6ab5e', 10700022, '2023-07-02'), ('c662243f-9da5-492a-988d-213f8d4d0164', 4949912, '2023-10-11'), ('8b722aad-86a8-498b-921f-aac40b29d698', 11302339, '2024-07-15'), ('6e4aa712-a812-457d-b3cc-4622de964f72', 10222930, '2022-04-07'), ('fb9956e2-07f3-4627-bff5-8c13b8dd346b', 10581584, '2022-03-21'), ('70046b84-b760-4084-aad4-19b3b7ab8d10', 9527865, '2023-08-29'), ('f3609092-8ad4-4012-9749-5481f6f03ccf', 3948799, '2022-01-02'), ('98f02809-2152-4807-9fe9-15c7d26b9ce8', 4342149, '2024-01-20'), ('417adbed-5aaa-46e2-bc0c-e191585c948d', 5368152, '2024-01-16');

-- 15. Employee Histories
INSERT INTO public.employee_histories (employee_id, performed_by_id, action, details) VALUES ('568f0d7e-55eb-46bf-a8b9-96619bb875bc', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('c6fe46f0-d714-49e6-84b2-0d19da6bc82f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('6e4aa712-a812-457d-b3cc-4622de964f72', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('eeabd4f5-03a2-4ceb-8935-aeee66123034', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('68df453b-06cc-4570-84fb-646e1a184338', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('8d470b03-ead5-4898-b373-d61a64bf50eb', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('469141ac-8d7b-4f30-809a-2c6f86d9baa0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('665b89f3-031d-4749-8b02-f5e010f77a2a', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('9cf2c037-2e1a-47ea-b765-0f4b31be3e48', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('9018fb09-9eb7-47fb-84fe-1949f159227f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('2b02e017-625e-4ea5-bbb4-fa23b2cd07f2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('8904a6b4-a958-4c3d-a589-2b35a9866ad3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('0dde516a-e582-4e79-a261-5830a28b4456', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('5b12fa9a-7dae-46ec-9b2f-eb05b48cec2e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('81ad28f1-98c0-497d-adf3-629396e34faa', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('16aabf39-d0c1-4e70-b701-1f36dddb45a8', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('35198028-c785-4e70-87ef-4caacc693c76', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9018fb09-9eb7-47fb-84fe-1949f159227f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('a78b17c5-ec54-4d38-9526-6577d7e87056', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('4b9f178d-d365-4efa-9c02-9e6b9ce492c7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('54ab1f4e-b841-4f1d-a737-b26afb11728f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('50c71fa1-f737-4b2e-ba4b-b7e24d01a971', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('3463812e-03d2-4172-a998-e318c5eb153e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('7a88f361-ead6-4f01-959a-b75974113f67', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('5deae309-874e-4c48-9362-e44f9cbf8bcd', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('337a16ef-19f5-4e72-a414-9812048be8d2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('066b28fb-1d69-4502-9101-e4ee3f7fa675', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('2eb759e2-6bcc-4196-9d70-7ea34f689380', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('0911c959-8399-4583-b154-1250ecf41f63', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('f741c042-05dc-425c-9c26-661d9a2c6174', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('ef4d0fe8-6487-4224-bdce-0b8dc6ae8292', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('830350d2-1904-48fd-937a-af37134a7071', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9cf2c037-2e1a-47ea-b765-0f4b31be3e48', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('0780524d-cce1-45e8-958c-3e4954255ad7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('7a39968e-cf6f-4cff-921c-1dc10ab181af', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('d73d8fb7-8e20-4f43-b687-a1a60a5b2471', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('22b96265-975c-4bec-a908-3d04bd237fd3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('1e62efcc-b7ed-43ae-97be-d4d58598af5c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('edeb601c-4721-442e-ab3b-ad4f01f218d9', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('4a44fc76-309d-4446-811d-6e33c6fac6b2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('70046b84-b760-4084-aad4-19b3b7ab8d10', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('cd10c9b4-e685-4fdd-a6fd-eeac8254d089', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('8f1934e2-9e45-44cd-962a-d19ae5e87d4f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('517c54d0-11e6-450f-92ae-12782859d481', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9018fb09-9eb7-47fb-84fe-1949f159227f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('665b89f3-031d-4749-8b02-f5e010f77a2a', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('3463812e-03d2-4172-a998-e318c5eb153e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('7309d852-1c71-4f1f-8faa-b60612eb23db', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('8ed856e5-ce86-4af2-aa66-114a4d4f657f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('08aeba94-6421-4abc-88a4-4bb497b67cf6', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('9b73bfa4-555f-492b-9b40-aa486a467bd4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('f7cec624-a67d-46d9-85da-2d8445fe6b62', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('0a3d61d3-a5ea-4b82-90f5-6a4b147ea0bf', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('8d02d12a-0f5b-4d4e-8cc7-13d3a4d36939', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('ddbdba42-4ba7-4e7a-bb11-fdc337a1d066', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('d69b9ab9-8b08-481d-8c4d-5fd61ff53b51', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('aa454e57-3904-4e9a-aa5e-15121b813993', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('85cac177-703e-4c92-a36c-8d6cad5bd100', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('4bd0f175-27b1-4cd4-bfca-5cb9d6e57ee6', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('0dde516a-e582-4e79-a261-5830a28b4456', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('85cac177-703e-4c92-a36c-8d6cad5bd100', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('55311910-8552-4dc2-9552-b51f46fac4d7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('3bb9ac54-8021-4fb8-9c34-a2fc346614af', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('8fc08a9a-80b9-4a90-87bf-2894cfca5e27', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('f939bb94-c817-4b87-a117-25370e794711', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('9f9de4d3-af49-4448-a771-d2d0ba455612', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('542bd5d4-350a-4a63-be0e-fdc118d3ab95', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('18c3a4f5-bd47-4294-9bce-bbdf05efba8c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('9f06fef4-c8f2-41ca-ae29-023f6133c188', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('643dde90-8e7a-4b00-a6b0-335e9805565e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('779412db-d4ac-4877-9569-8b0997eebed1', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('46bcef6c-9f49-4f22-89aa-1f755b57dea4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('438706d9-6ac5-4ad9-af46-2ebed14f54f9', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('469141ac-8d7b-4f30-809a-2c6f86d9baa0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('8900c328-4b65-420f-a529-4874c0ccce71', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('22c3fc65-1c3f-461a-b07f-fbe9850d79f7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('d426508d-26b5-4b1e-8d91-995d59481d6f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('b5440d7a-b818-428b-8049-001fd75e1f69', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('d69b9ab9-8b08-481d-8c4d-5fd61ff53b51', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('2f04f9d8-dab4-4638-982e-5760d2bb096a', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('22fcb604-d993-43de-92b2-f35ea9634385', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('18c3a4f5-bd47-4294-9bce-bbdf05efba8c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('fe2cd0d0-5bc0-47e6-99bb-2e0fa1d4eeb1', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('379d9eba-ab8b-4805-ac74-ce489d58da1f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('9895f032-5c21-4b19-959b-ca9133c0045e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('bb68c1fb-fd0c-4c1d-a1d4-7cddea66a25e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('4a616f6b-ad5c-4509-9ca8-d7e4cd39d520', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('d72316f5-21b5-44fc-bff2-34fd957131c2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('ddab7d7c-23cd-48fc-85fc-b888ec57acc3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('4883c4f6-882f-45cb-95e6-59f4da35cb84', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('4eb18d84-c2f9-4705-90ee-df8e38e4ae1a', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('9cf2c037-2e1a-47ea-b765-0f4b31be3e48', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('e0e4add6-4ea2-4bce-9b68-eec5c56b9744', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('4338ab23-cbe0-41ba-becd-0ad76667cbe0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('b744dceb-5c80-4ad0-be62-febb9622703b', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('47607ca4-472a-489b-815d-b502536b3eee', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('eb563105-5388-43f5-8ea1-394eae002c04', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('d69b9ab9-8b08-481d-8c4d-5fd61ff53b51', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('469141ac-8d7b-4f30-809a-2c6f86d9baa0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('453213f7-1a7f-464b-8104-2b96e6d67a39', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('11a0edab-2027-4cc2-8881-b37db063b454', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('2882febf-eae4-4cc8-8349-6f3856c7b743', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('ddbdba42-4ba7-4e7a-bb11-fdc337a1d066', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('f3609092-8ad4-4012-9749-5481f6f03ccf', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('4b9f178d-d365-4efa-9c02-9e6b9ce492c7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('258dd4a8-9659-4d14-9fe5-4f787cbc1737', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('df6b0675-d8e7-499c-8855-abcd4c61afc0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('7fd90d65-5493-4cd6-904f-3088b26382d0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('e0bcb3ab-32c3-48f2-a8a8-fae5e4ad6c9e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('a061e9a9-f245-4405-8630-ec63808ad6e7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('d426508d-26b5-4b1e-8d91-995d59481d6f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('8218e591-ca4e-4c40-a66f-286c0d980528', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('57bfd0c8-deb9-4d56-9fa1-add2c6246a26', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('e3a20d1a-633c-41b1-aa5c-687fca1ea849', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('4338ab23-cbe0-41ba-becd-0ad76667cbe0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('d69b9ab9-8b08-481d-8c4d-5fd61ff53b51', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('68df453b-06cc-4570-84fb-646e1a184338', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('bfa4bfc0-f623-4356-b499-8412142c8775', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('0780524d-cce1-45e8-958c-3e4954255ad7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('830350d2-1904-48fd-937a-af37134a7071', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('dca6ff3c-ad85-4366-b05d-35d00ed5bc23', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('4a44fc76-309d-4446-811d-6e33c6fac6b2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('9895f032-5c21-4b19-959b-ca9133c0045e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('cd10c9b4-e685-4fdd-a6fd-eeac8254d089', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('66bb1b56-3b9b-49e2-bf15-f4a23ed15830', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('b35fc239-0fdf-4454-92e0-ffc4b7d263a5', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('6e4aa712-a812-457d-b3cc-4622de964f72', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('50baf05f-a15e-4141-9cd7-e24c0f273829', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('18c3a4f5-bd47-4294-9bce-bbdf05efba8c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('d69b9ab9-8b08-481d-8c4d-5fd61ff53b51', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('2eb759e2-6bcc-4196-9d70-7ea34f689380', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('2df7520a-e617-491e-a4ce-4594ea2d30ef', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('63d847a8-4cbb-4e32-8597-a1a45c13d180', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('d69b9ab9-8b08-481d-8c4d-5fd61ff53b51', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('c6fe46f0-d714-49e6-84b2-0d19da6bc82f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('543f9b04-fea5-4a71-83bd-f6911063ff90', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('fe2cd0d0-5bc0-47e6-99bb-2e0fa1d4eeb1', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('1e62efcc-b7ed-43ae-97be-d4d58598af5c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('6493e68d-b22c-4f63-96ae-29178d3e4d0d', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('98470b77-4c3a-4ec0-8933-9c4918ae2264', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('453213f7-1a7f-464b-8104-2b96e6d67a39', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('830350d2-1904-48fd-937a-af37134a7071', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('b5440d7a-b818-428b-8049-001fd75e1f69', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('441bca38-fe2d-48e4-a863-e67183cd592b', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('77f3cfe1-6040-44a4-b3bc-bfdfc234131c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('cb336c9b-219d-424a-98b7-7feb1f010215', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('b744dceb-5c80-4ad0-be62-febb9622703b', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('568413c1-aa2f-4f8c-b735-816cd1a58368', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('fe2cd0d0-5bc0-47e6-99bb-2e0fa1d4eeb1', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('066b28fb-1d69-4502-9101-e4ee3f7fa675', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('7afbe7e0-9d31-45ff-86ea-1ce6f96cd9d7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('4338ab23-cbe0-41ba-becd-0ad76667cbe0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('2eb759e2-6bcc-4196-9d70-7ea34f689380', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('643dde90-8e7a-4b00-a6b0-335e9805565e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('22b96265-975c-4bec-a908-3d04bd237fd3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('4b9f178d-d365-4efa-9c02-9e6b9ce492c7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('6493e68d-b22c-4f63-96ae-29178d3e4d0d', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9f9de4d3-af49-4448-a771-d2d0ba455612', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('d053a295-946b-41e3-9b39-e5992ff18b85', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('8ed856e5-ce86-4af2-aa66-114a4d4f657f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('d7e51d89-d39e-4c32-b54e-2ef150d6ab5e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('46bcef6c-9f49-4f22-89aa-1f755b57dea4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('bee3a61a-9f0b-469e-acdf-19df15b47b1c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('18bb5752-4f65-4a80-92ac-90fc0defc14f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('834951ab-fdac-46ef-b04b-bbf13d9e6640', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('9f9de4d3-af49-4448-a771-d2d0ba455612', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('543f9b04-fea5-4a71-83bd-f6911063ff90', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9b73bfa4-555f-492b-9b40-aa486a467bd4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('358dc6c4-9385-4284-8a37-c188e9a52101', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('2f04f9d8-dab4-4638-982e-5760d2bb096a', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('779412db-d4ac-4877-9569-8b0997eebed1', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('960e494c-1751-4a33-9469-64d3b17d94f0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('c38f7614-899e-4cb4-aab3-a6b5dec59c8d', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('337a16ef-19f5-4e72-a414-9812048be8d2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('d1ad4abe-5fa5-4ead-94b2-8e7a82e77774', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('1aef1416-adf9-4c92-9536-4ecd231f7418', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('7a82d465-e309-4b82-aef1-ef058b19ad31', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('d053a295-946b-41e3-9b39-e5992ff18b85', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('543f9b04-fea5-4a71-83bd-f6911063ff90', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('ddbdba42-4ba7-4e7a-bb11-fdc337a1d066', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('960e494c-1751-4a33-9469-64d3b17d94f0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('9a7d8464-cc62-46d7-b3ab-28a153978bd2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('2fb57514-1b55-4737-b2ea-ea6d7225a08f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('43ccfa5f-1b19-4c06-b1c4-71468f2bce1f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('d636752c-12c8-4f66-9a7d-6ab845385ea6', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('8d02d12a-0f5b-4d4e-8cc7-13d3a4d36939', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('08e22eca-b786-4211-92ee-f77b6e60c9a8', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('df25c42b-703e-48e4-b270-cb3f95e8e2c0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('63d847a8-4cbb-4e32-8597-a1a45c13d180', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('a061e9a9-f245-4405-8630-ec63808ad6e7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('12fe531c-ca94-4beb-bece-d66bee2468d8', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('4bd0f175-27b1-4cd4-bfca-5cb9d6e57ee6', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('3463812e-03d2-4172-a998-e318c5eb153e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('fa7a2e9e-9590-425c-a80f-5b4add1bb8dc', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('8ab48564-ed6a-4866-bc75-64275052c44c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9f9de4d3-af49-4448-a771-d2d0ba455612', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('f53b8c3d-2752-4744-9a4b-269b65e9120f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('337a16ef-19f5-4e72-a414-9812048be8d2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('6d608a88-517e-48ac-b2c2-e633f445f46b', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('2956e054-2dfe-4e26-bc50-238c70a600ff', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('72b9e80e-9c19-403b-8112-a560242438cd', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('50f361d7-ec04-4367-9cbf-ba2ac1d82c9c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('cb336c9b-219d-424a-98b7-7feb1f010215', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('fa7a2e9e-9590-425c-a80f-5b4add1bb8dc', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('4338ab23-cbe0-41ba-becd-0ad76667cbe0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('12fe531c-ca94-4beb-bece-d66bee2468d8', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('df25c42b-703e-48e4-b270-cb3f95e8e2c0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('7309d852-1c71-4f1f-8faa-b60612eb23db', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('4883c4f6-882f-45cb-95e6-59f4da35cb84', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('864dafb5-dbac-4253-b1db-794b27e56c0e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('5d8f7338-f23b-41d1-8c9e-6673cfd79834', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('543f9b04-fea5-4a71-83bd-f6911063ff90', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('da222234-ec2a-4e7c-9291-b577eab8a19e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('81ad28f1-98c0-497d-adf3-629396e34faa', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('d1ad4abe-5fa5-4ead-94b2-8e7a82e77774', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('a329b25c-2ccb-44d6-82ff-f0df72fcc6c5', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('1efcd3e8-4e2b-4b62-9c11-e93ab4138e89', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('5ebeadd3-6b4c-422d-b542-bb0cf9451d99', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('ddab7d7c-23cd-48fc-85fc-b888ec57acc3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('379d9eba-ab8b-4805-ac74-ce489d58da1f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('3a8febc3-0af3-43a4-9c0c-c0e4fd5b168d', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('b35fc239-0fdf-4454-92e0-ffc4b7d263a5', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('f3609092-8ad4-4012-9749-5481f6f03ccf', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('4883c4f6-882f-45cb-95e6-59f4da35cb84', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('0780524d-cce1-45e8-958c-3e4954255ad7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('08aeba94-6421-4abc-88a4-4bb497b67cf6', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('80ec8511-dfb5-469e-8040-76f9025eb0b3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('50baf05f-a15e-4141-9cd7-e24c0f273829', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('e3a20d1a-633c-41b1-aa5c-687fca1ea849', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('c2695c2d-2a9c-4669-a51f-3336e2ef72b2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('fb512a8d-5ffd-4747-8bca-8ad14f7aeebe', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('0a3d61d3-a5ea-4b82-90f5-6a4b147ea0bf', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('b512d154-f044-4b48-80c4-72fee740e5e4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('5ebeadd3-6b4c-422d-b542-bb0cf9451d99', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('22c3fc65-1c3f-461a-b07f-fbe9850d79f7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('eafa90c7-c170-486d-9ae9-a0d7400824ec', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('bd87f375-7bae-42ce-b9f6-d38b80f50b3e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('dd48fcd2-5c34-492d-9db3-b7ff283db1f2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('70046b84-b760-4084-aad4-19b3b7ab8d10', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('46bcef6c-9f49-4f22-89aa-1f755b57dea4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('8218e591-ca4e-4c40-a66f-286c0d980528', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('d8370fb4-308a-433e-991f-6e0fc8354140', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('803d4a09-488b-4f79-8163-60076e291e7a', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('61f02dd6-b98b-42d0-a1da-90d414575aad', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('568f0d7e-55eb-46bf-a8b9-96619bb875bc', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('08aeba94-6421-4abc-88a4-4bb497b67cf6', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('d69b9ab9-8b08-481d-8c4d-5fd61ff53b51', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('50f361d7-ec04-4367-9cbf-ba2ac1d82c9c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('60e04dc1-54e6-4d7d-9856-7949cbdad615', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('4bd0f175-27b1-4cd4-bfca-5cb9d6e57ee6', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('0a972d48-de32-46d1-aeb8-eaa3e248be11', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('7955fa69-9edc-40bf-ad38-09956bb6cfd4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('631867f1-9ab3-419e-a31b-e69c5dda184e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('412fc9e3-89bf-4a4e-9279-948b4332a575', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('8904a6b4-a958-4c3d-a589-2b35a9866ad3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('5deae309-874e-4c48-9362-e44f9cbf8bcd', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('0a3d61d3-a5ea-4b82-90f5-6a4b147ea0bf', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('cea1fb2f-0029-4162-8ea3-926c2585fa4c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('8ce66417-211e-4a89-8d4e-074020ee6cd2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('0a3d61d3-a5ea-4b82-90f5-6a4b147ea0bf', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('4883c4f6-882f-45cb-95e6-59f4da35cb84', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('50f361d7-ec04-4367-9cbf-ba2ac1d82c9c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('22fcb604-d993-43de-92b2-f35ea9634385', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('eafa90c7-c170-486d-9ae9-a0d7400824ec', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('9c8e8c0f-e526-42bd-b8f2-80f17eee07b2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('57bfd0c8-deb9-4d56-9fa1-add2c6246a26', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('22b96265-975c-4bec-a908-3d04bd237fd3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('8ed856e5-ce86-4af2-aa66-114a4d4f657f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('5d8f7338-f23b-41d1-8c9e-6673cfd79834', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9018fb09-9eb7-47fb-84fe-1949f159227f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('68dd7eed-cbbe-4f06-ac1c-3f99f6029e15', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('543f9b04-fea5-4a71-83bd-f6911063ff90', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('61f02dd6-b98b-42d0-a1da-90d414575aad', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('0ff0c276-9181-4355-bcfc-aeb890af6926', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('379d9eba-ab8b-4805-ac74-ce489d58da1f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('fb08ac2f-7574-4f9d-882e-bafb489ab6c6', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('543f9b04-fea5-4a71-83bd-f6911063ff90', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('3a824e73-ac35-4fcd-99c8-6c7963e4ba4c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('94674f5e-7045-461c-a0f3-194672e1e595', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('5f757802-6550-4127-b81e-74e9d6748738', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('b9531362-35af-4193-9b85-e4a9283fa15a', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('ac7c8a30-1f54-44fd-a251-a17dddaba75c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('258dd4a8-9659-4d14-9fe5-4f787cbc1737', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('9a7d8464-cc62-46d7-b3ab-28a153978bd2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('1efcd3e8-4e2b-4b62-9c11-e93ab4138e89', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('94674f5e-7045-461c-a0f3-194672e1e595', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('81ad28f1-98c0-497d-adf3-629396e34faa', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('60e04dc1-54e6-4d7d-9856-7949cbdad615', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('70046b84-b760-4084-aad4-19b3b7ab8d10', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('70046b84-b760-4084-aad4-19b3b7ab8d10', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('70c3e444-892e-4209-8a46-2fb9205e1521', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('2b02e017-625e-4ea5-bbb4-fa23b2cd07f2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('98f02809-2152-4807-9fe9-15c7d26b9ce8', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('1efcd3e8-4e2b-4b62-9c11-e93ab4138e89', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('98f02809-2152-4807-9fe9-15c7d26b9ce8', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('441bca38-fe2d-48e4-a863-e67183cd592b', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('ef4d0fe8-6487-4224-bdce-0b8dc6ae8292', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('7955fa69-9edc-40bf-ad38-09956bb6cfd4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('b5440d7a-b818-428b-8049-001fd75e1f69', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('4a44fc76-309d-4446-811d-6e33c6fac6b2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('d636752c-12c8-4f66-9a7d-6ab845385ea6', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('568413c1-aa2f-4f8c-b735-816cd1a58368', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('9a144cb3-e4c3-4029-a54e-2b295ccbfb53', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('358dc6c4-9385-4284-8a37-c188e9a52101', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('7bae3531-8f73-4c32-8429-c494e1734834', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('80ec8511-dfb5-469e-8040-76f9025eb0b3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('c78438a2-5a57-43e2-904e-cec549315fb6', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('9b73bfa4-555f-492b-9b40-aa486a467bd4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('631867f1-9ab3-419e-a31b-e69c5dda184e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('453213f7-1a7f-464b-8104-2b96e6d67a39', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('4bd0f175-27b1-4cd4-bfca-5cb9d6e57ee6', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('7309d852-1c71-4f1f-8faa-b60612eb23db', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('91bcb4a9-f683-481e-b05b-741a1b4d4098', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('eeabd4f5-03a2-4ceb-8935-aeee66123034', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('adcb33d3-c8e9-47b5-8dc1-3f4dfb6203dd', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('643dde90-8e7a-4b00-a6b0-335e9805565e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('a35edab8-80ea-47a4-a2ab-4ad33d448f99', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('788dd437-2ac8-48c3-aa1f-66eb8bc405ad', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('f6c85151-899e-4487-902e-e2e81d9d0cfd', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('417adbed-5aaa-46e2-bc0c-e191585c948d', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('fb9956e2-07f3-4627-bff5-8c13b8dd346b', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('e0e4add6-4ea2-4bce-9b68-eec5c56b9744', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('3a8febc3-0af3-43a4-9c0c-c0e4fd5b168d', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('2fb57514-1b55-4737-b2ea-ea6d7225a08f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('bd87f375-7bae-42ce-b9f6-d38b80f50b3e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('8675b70f-3476-4576-a4de-95c369a76d2a', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('51f44fd2-a657-4dcd-8526-177573074a91', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('438706d9-6ac5-4ad9-af46-2ebed14f54f9', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('160a2dd3-a10e-4814-9ccc-2d35ef2115f0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('f6c85151-899e-4487-902e-e2e81d9d0cfd', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('da222234-ec2a-4e7c-9291-b577eab8a19e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('e3a20d1a-633c-41b1-aa5c-687fca1ea849', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('0ff0c276-9181-4355-bcfc-aeb890af6926', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('63d847a8-4cbb-4e32-8597-a1a45c13d180', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('2b0e0cc6-43e6-4e33-aec9-638f61c9cae4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('edeb601c-4721-442e-ab3b-ad4f01f218d9', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('779412db-d4ac-4877-9569-8b0997eebed1', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('6493e68d-b22c-4f63-96ae-29178d3e4d0d', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('4eb18d84-c2f9-4705-90ee-df8e38e4ae1a', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('0911c959-8399-4583-b154-1250ecf41f63', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('5d8f7338-f23b-41d1-8c9e-6673cfd79834', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('bf508636-10e2-4986-8118-c3da68caa0eb', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('9a144cb3-e4c3-4029-a54e-2b295ccbfb53', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9018fb09-9eb7-47fb-84fe-1949f159227f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('f6c85151-899e-4487-902e-e2e81d9d0cfd', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('77d1dee3-39bd-41ca-806f-59f1dc9289ef', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('8f1934e2-9e45-44cd-962a-d19ae5e87d4f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('9c8e8c0f-e526-42bd-b8f2-80f17eee07b2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('efc95de0-845d-4b67-8683-c3c132fd5bff', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('6493e68d-b22c-4f63-96ae-29178d3e4d0d', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('18c3a4f5-bd47-4294-9bce-bbdf05efba8c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('1aef1416-adf9-4c92-9536-4ecd231f7418', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('4a44fc76-309d-4446-811d-6e33c6fac6b2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('1e62efcc-b7ed-43ae-97be-d4d58598af5c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('50c71fa1-f737-4b2e-ba4b-b7e24d01a971', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('8de7548d-1b05-4137-ad64-1913bdec7147', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('358dc6c4-9385-4284-8a37-c188e9a52101', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('cd10c9b4-e685-4fdd-a6fd-eeac8254d089', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('631867f1-9ab3-419e-a31b-e69c5dda184e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('9cf2c037-2e1a-47ea-b765-0f4b31be3e48', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('4338ab23-cbe0-41ba-becd-0ad76667cbe0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('72b9e80e-9c19-403b-8112-a560242438cd', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('3cc06bae-36d3-4e9e-a661-a56f32705925', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('8ce66417-211e-4a89-8d4e-074020ee6cd2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('9f009394-74f7-438d-a072-8c2f2e0a3130', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('c662243f-9da5-492a-988d-213f8d4d0164', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('e0bcb3ab-32c3-48f2-a8a8-fae5e4ad6c9e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('568f0d7e-55eb-46bf-a8b9-96619bb875bc', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('57bfd0c8-deb9-4d56-9fa1-add2c6246a26', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('77f3cfe1-6040-44a4-b3bc-bfdfc234131c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9f009394-74f7-438d-a072-8c2f2e0a3130', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('8f1934e2-9e45-44cd-962a-d19ae5e87d4f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('520e0743-700a-42e4-b081-2161dcafac52', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9cf2c037-2e1a-47ea-b765-0f4b31be3e48', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('7a82d465-e309-4b82-aef1-ef058b19ad31', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('bb68c1fb-fd0c-4c1d-a1d4-7cddea66a25e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('d053a295-946b-41e3-9b39-e5992ff18b85', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('61f02dd6-b98b-42d0-a1da-90d414575aad', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('50baf05f-a15e-4141-9cd7-e24c0f273829', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('0780524d-cce1-45e8-958c-3e4954255ad7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('7afbe7e0-9d31-45ff-86ea-1ce6f96cd9d7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('4980c8e5-75a4-4964-b741-f6317f82a7f8', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('9018fb09-9eb7-47fb-84fe-1949f159227f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('1efcd3e8-4e2b-4b62-9c11-e93ab4138e89', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('42e39dd1-06a3-4848-bc97-f808b76f5cb5', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('77d9b3a2-4296-432f-bc1a-10e0151fa8ba', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('c6fe46f0-d714-49e6-84b2-0d19da6bc82f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('5d8f7338-f23b-41d1-8c9e-6673cfd79834', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('df6b0675-d8e7-499c-8855-abcd4c61afc0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('788dd437-2ac8-48c3-aa1f-66eb8bc405ad', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('98f02809-2152-4807-9fe9-15c7d26b9ce8', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('8b722aad-86a8-498b-921f-aac40b29d698', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('d426508d-26b5-4b1e-8d91-995d59481d6f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('568413c1-aa2f-4f8c-b735-816cd1a58368', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('d8370fb4-308a-433e-991f-6e0fc8354140', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('2742cde7-5985-484d-a77e-4236b06cec1a', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('2df7520a-e617-491e-a4ce-4594ea2d30ef', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('0dde516a-e582-4e79-a261-5830a28b4456', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('50baf05f-a15e-4141-9cd7-e24c0f273829', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('6493e68d-b22c-4f63-96ae-29178d3e4d0d', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('12fe531c-ca94-4beb-bece-d66bee2468d8', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('12fe531c-ca94-4beb-bece-d66bee2468d8', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('543f9b04-fea5-4a71-83bd-f6911063ff90', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('91bcb4a9-f683-481e-b05b-741a1b4d4098', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('7ac730b3-3bd2-48d9-9fe0-d7d076ac2739', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('a78b17c5-ec54-4d38-9526-6577d7e87056', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('8ce66417-211e-4a89-8d4e-074020ee6cd2', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('b35fc239-0fdf-4454-92e0-ffc4b7d263a5', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('0ff0c276-9181-4355-bcfc-aeb890af6926', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('22b96265-975c-4bec-a908-3d04bd237fd3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9cf2c037-2e1a-47ea-b765-0f4b31be3e48', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('4a639de5-61f6-49fd-a395-373e8ced41d3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('4a639de5-61f6-49fd-a395-373e8ced41d3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9f9de4d3-af49-4448-a771-d2d0ba455612', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('7fcf647c-d1c8-43bb-9da1-1a2c5b6c6852', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('b512d154-f044-4b48-80c4-72fee740e5e4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('453213f7-1a7f-464b-8104-2b96e6d67a39', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('72b9e80e-9c19-403b-8112-a560242438cd', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('50baf05f-a15e-4141-9cd7-e24c0f273829', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('5a076111-c959-45d2-9c69-a7bb54a1581f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('4dacb4ce-e483-4ca2-aa9a-917c60af44c0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('a061e9a9-f245-4405-8630-ec63808ad6e7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('82d7a493-1242-47ac-bb05-e16c4326f00e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('788dd437-2ac8-48c3-aa1f-66eb8bc405ad', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('9f9de4d3-af49-4448-a771-d2d0ba455612', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('a6f0f025-d6d3-4dad-a360-c7ff095eda11', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('1aa14e0f-1aac-4fb5-9d26-a92220f1df6d', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('834951ab-fdac-46ef-b04b-bbf13d9e6640', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('77d9b3a2-4296-432f-bc1a-10e0151fa8ba', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('55311910-8552-4dc2-9552-b51f46fac4d7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('4a616f6b-ad5c-4509-9ca8-d7e4cd39d520', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('eb563105-5388-43f5-8ea1-394eae002c04', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('8904a6b4-a958-4c3d-a589-2b35a9866ad3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('0780524d-cce1-45e8-958c-3e4954255ad7', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('2eb759e2-6bcc-4196-9d70-7ea34f689380', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('f741c042-05dc-425c-9c26-661d9a2c6174', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('1aa14e0f-1aac-4fb5-9d26-a92220f1df6d', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('5deae309-874e-4c48-9362-e44f9cbf8bcd', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('4a639de5-61f6-49fd-a395-373e8ced41d3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('47607ca4-472a-489b-815d-b502536b3eee', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('438706d9-6ac5-4ad9-af46-2ebed14f54f9', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('7a82d465-e309-4b82-aef1-ef058b19ad31', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('5a076111-c959-45d2-9c69-a7bb54a1581f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('ddbdba42-4ba7-4e7a-bb11-fdc337a1d066', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('eeabd4f5-03a2-4ceb-8935-aeee66123034', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('a329b25c-2ccb-44d6-82ff-f0df72fcc6c5', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('08aeba94-6421-4abc-88a4-4bb497b67cf6', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('b512d154-f044-4b48-80c4-72fee740e5e4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('2f1f4eb8-17a3-4e77-b359-e47e4bbb9ecf', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('9b73bfa4-555f-492b-9b40-aa486a467bd4', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('7a88f361-ead6-4f01-959a-b75974113f67', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('b2c4454f-9d5b-414f-92c2-99388a7c9a7c', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('8de7548d-1b05-4137-ad64-1913bdec7147', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('66bb1b56-3b9b-49e2-bf15-f4a23ed15830', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('f53b8c3d-2752-4744-9a4b-269b65e9120f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('72b9e80e-9c19-403b-8112-a560242438cd', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('7b0f328a-f264-4728-8122-2925c2077b87', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('9f06fef4-c8f2-41ca-ae29-023f6133c188', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9018fb09-9eb7-47fb-84fe-1949f159227f', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('ddab7d7c-23cd-48fc-85fc-b888ec57acc3', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('7309d852-1c71-4f1f-8faa-b60612eb23db', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('a35edab8-80ea-47a4-a2ab-4ad33d448f99', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('eb563105-5388-43f5-8ea1-394eae002c04', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('4a616f6b-ad5c-4509-9ca8-d7e4cd39d520', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('7a88f361-ead6-4f01-959a-b75974113f67', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('0dde516a-e582-4e79-a261-5830a28b4456', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('8218e591-ca4e-4c40-a66f-286c0d980528', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('4dacb4ce-e483-4ca2-aa9a-917c60af44c0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('6fcccc21-898d-41f0-8a6b-c85894ca50c9', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('7bae3531-8f73-4c32-8429-c494e1734834', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('da222234-ec2a-4e7c-9291-b577eab8a19e', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('830350d2-1904-48fd-937a-af37134a7071', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('9a144cb3-e4c3-4029-a54e-2b295ccbfb53', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('94674f5e-7045-461c-a0f3-194672e1e595', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('834951ab-fdac-46ef-b04b-bbf13d9e6640', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('542bd5d4-350a-4a63-be0e-fdc118d3ab95', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('4f53b12b-fe1a-4dce-8c38-fa8372f5dffe', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Promotion', 'System generated history'), ('9a144cb3-e4c3-4029-a54e-2b295ccbfb53', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history'), ('966a8046-23bf-488f-aa31-5ce0a5af3ac1', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('469141ac-8d7b-4f30-809a-2c6f86d9baa0', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('4eb18d84-c2f9-4705-90ee-df8e38e4ae1a', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Role Change', 'System generated history'), ('5cd15a13-3854-40fe-b029-939db99a3481', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Hiring', 'System generated history'), ('9f06fef4-c8f2-41ca-ae29-023f6133c188', '8ab48564-ed6a-4866-bc75-64275052c44c', 'Data Update', 'System generated history');

-- 16. Notifications
INSERT INTO public.notifications (recipient_id, title, message, is_read) VALUES ('568f0d7e-55eb-46bf-a8b9-96619bb875bc', 'System Maintenance', 'Generated notification message', false), ('87f2dec9-e680-4512-b5a0-3d41e11c0257', 'Request Update', 'Generated notification message', true), ('543f9b04-fea5-4a71-83bd-f6911063ff90', 'Request Update', 'Generated notification message', false), ('7955fa69-9edc-40bf-ad38-09956bb6cfd4', 'System Maintenance', 'Generated notification message', true), ('7955fa69-9edc-40bf-ad38-09956bb6cfd4', 'Request Update', 'Generated notification message', true), ('a061e9a9-f245-4405-8630-ec63808ad6e7', 'Welcome', 'Generated notification message', true), ('8f1934e2-9e45-44cd-962a-d19ae5e87d4f', 'System Maintenance', 'Generated notification message', true), ('baaafb44-6e56-42c5-ba39-a467a941acff', 'Request Update', 'Generated notification message', false), ('fb512a8d-5ffd-4747-8bca-8ad14f7aeebe', 'System Maintenance', 'Generated notification message', true), ('c38f7614-899e-4cb4-aab3-a6b5dec59c8d', 'Request Update', 'Generated notification message', true), ('9f06fef4-c8f2-41ca-ae29-023f6133c188', 'Policy Update', 'Generated notification message', true), ('2742cde7-5985-484d-a77e-4236b06cec1a', 'Welcome', 'Generated notification message', false), ('bd87f375-7bae-42ce-b9f6-d38b80f50b3e', 'Welcome', 'Generated notification message', false), ('337a16ef-19f5-4e72-a414-9812048be8d2', 'Policy Update', 'Generated notification message', true), ('e0e4add6-4ea2-4bce-9b68-eec5c56b9744', 'Welcome', 'Generated notification message', true), ('7bae3531-8f73-4c32-8429-c494e1734834', 'Welcome', 'Generated notification message', true), ('f3609092-8ad4-4012-9749-5481f6f03ccf', 'System Maintenance', 'Generated notification message', true), ('87f2dec9-e680-4512-b5a0-3d41e11c0257', 'Request Update', 'Generated notification message', false), ('517c54d0-11e6-450f-92ae-12782859d481', 'Policy Update', 'Generated notification message', true), ('bf508636-10e2-4986-8118-c3da68caa0eb', 'System Maintenance', 'Generated notification message', true), ('7955fa69-9edc-40bf-ad38-09956bb6cfd4', 'System Maintenance', 'Generated notification message', false), ('7955fa69-9edc-40bf-ad38-09956bb6cfd4', 'Policy Update', 'Generated notification message', true), ('b2c4454f-9d5b-414f-92c2-99388a7c9a7c', 'Policy Update', 'Generated notification message', false), ('9c8e8c0f-e526-42bd-b8f2-80f17eee07b2', 'Policy Update', 'Generated notification message', false), ('4a616f6b-ad5c-4509-9ca8-d7e4cd39d520', 'Welcome', 'Generated notification message', true), ('eb563105-5388-43f5-8ea1-394eae002c04', 'Policy Update', 'Generated notification message', false), ('4f53b12b-fe1a-4dce-8c38-fa8372f5dffe', 'Welcome', 'Generated notification message', false), ('41435551-a36a-4d3b-8a4f-5040da653a49', 'Request Update', 'Generated notification message', false), ('fb9956e2-07f3-4627-bff5-8c13b8dd346b', 'Request Update', 'Generated notification message', false), ('f7cec624-a67d-46d9-85da-2d8445fe6b62', 'System Maintenance', 'Generated notification message', true), ('b512d154-f044-4b48-80c4-72fee740e5e4', 'Request Update', 'Generated notification message', false), ('a35edab8-80ea-47a4-a2ab-4ad33d448f99', 'Request Update', 'Generated notification message', false), ('c8e99b37-c722-4216-b011-a2a4159d348c', 'Policy Update', 'Generated notification message', true), ('453213f7-1a7f-464b-8104-2b96e6d67a39', 'Request Update', 'Generated notification message', false), ('2882febf-eae4-4cc8-8349-6f3856c7b743', 'Policy Update', 'Generated notification message', false), ('438706d9-6ac5-4ad9-af46-2ebed14f54f9', 'Welcome', 'Generated notification message', true), ('bee3a61a-9f0b-469e-acdf-19df15b47b1c', 'Request Update', 'Generated notification message', false), ('9a144cb3-e4c3-4029-a54e-2b295ccbfb53', 'System Maintenance', 'Generated notification message', true), ('3a8febc3-0af3-43a4-9c0c-c0e4fd5b168d', 'Welcome', 'Generated notification message', false), ('4980c8e5-75a4-4964-b741-f6317f82a7f8', 'System Maintenance', 'Generated notification message', true), ('72b9e80e-9c19-403b-8112-a560242438cd', 'Welcome', 'Generated notification message', true), ('379d9eba-ab8b-4805-ac74-ce489d58da1f', 'System Maintenance', 'Generated notification message', false), ('a423ca3f-595c-4b7c-9538-51e8caedab4f', 'Welcome', 'Generated notification message', true), ('8ed856e5-ce86-4af2-aa66-114a4d4f657f', 'Policy Update', 'Generated notification message', true), ('5ebeadd3-6b4c-422d-b542-bb0cf9451d99', 'Policy Update', 'Generated notification message', false), ('dd48fcd2-5c34-492d-9db3-b7ff283db1f2', 'Policy Update', 'Generated notification message', true), ('f7d6e307-f488-4786-ac71-0d1c474cd8e9', 'Policy Update', 'Generated notification message', true), ('c6fe46f0-d714-49e6-84b2-0d19da6bc82f', 'Policy Update', 'Generated notification message', false), ('ee6b8055-4906-428b-a054-2210f507a6ed', 'System Maintenance', 'Generated notification message', false), ('581291a8-0888-436f-9518-68795b6a99ba', 'Policy Update', 'Generated notification message', true), ('cd10c9b4-e685-4fdd-a6fd-eeac8254d089', 'System Maintenance', 'Generated notification message', true), ('8d02d12a-0f5b-4d4e-8cc7-13d3a4d36939', 'Request Update', 'Generated notification message', false), ('f939bb94-c817-4b87-a117-25370e794711', 'Policy Update', 'Generated notification message', true), ('ac3091d6-a49b-4162-83ac-6aba185f6894', 'Welcome', 'Generated notification message', true), ('9f009394-74f7-438d-a072-8c2f2e0a3130', 'Policy Update', 'Generated notification message', false), ('9f06fef4-c8f2-41ca-ae29-023f6133c188', 'Welcome', 'Generated notification message', true), ('7ac730b3-3bd2-48d9-9fe0-d7d076ac2739', 'Request Update', 'Generated notification message', true), ('82d7a493-1242-47ac-bb05-e16c4326f00e', 'Policy Update', 'Generated notification message', false), ('a329b25c-2ccb-44d6-82ff-f0df72fcc6c5', 'System Maintenance', 'Generated notification message', false), ('55311910-8552-4dc2-9552-b51f46fac4d7', 'Request Update', 'Generated notification message', true), ('9895f032-5c21-4b19-959b-ca9133c0045e', 'Policy Update', 'Generated notification message', false), ('42e39dd1-06a3-4848-bc97-f808b76f5cb5', 'System Maintenance', 'Generated notification message', false), ('f61935c1-8f88-41d0-b894-2d74a3e69a08', 'Welcome', 'Generated notification message', false), ('4a639de5-61f6-49fd-a395-373e8ced41d3', 'Policy Update', 'Generated notification message', false), ('5b12fa9a-7dae-46ec-9b2f-eb05b48cec2e', 'Policy Update', 'Generated notification message', true), ('358dc6c4-9385-4284-8a37-c188e9a52101', 'Policy Update', 'Generated notification message', false), ('94674f5e-7045-461c-a0f3-194672e1e595', 'Welcome', 'Generated notification message', false), ('8218e591-ca4e-4c40-a66f-286c0d980528', 'Welcome', 'Generated notification message', true), ('835312cf-fcd8-41cf-b8ed-f109d251c362', 'Request Update', 'Generated notification message', true), ('11a0edab-2027-4cc2-8881-b37db063b454', 'Policy Update', 'Generated notification message', true), ('e0e4add6-4ea2-4bce-9b68-eec5c56b9744', 'Policy Update', 'Generated notification message', false), ('de7303b6-d244-4632-9b6f-cd62641e0d10', 'System Maintenance', 'Generated notification message', true), ('8b722aad-86a8-498b-921f-aac40b29d698', 'System Maintenance', 'Generated notification message', true), ('779412db-d4ac-4877-9569-8b0997eebed1', 'Request Update', 'Generated notification message', false), ('160a2dd3-a10e-4814-9ccc-2d35ef2115f0', 'System Maintenance', 'Generated notification message', true), ('b512d154-f044-4b48-80c4-72fee740e5e4', 'Request Update', 'Generated notification message', false), ('de7303b6-d244-4632-9b6f-cd62641e0d10', 'System Maintenance', 'Generated notification message', false), ('441bca38-fe2d-48e4-a863-e67183cd592b', 'Request Update', 'Generated notification message', false), ('835312cf-fcd8-41cf-b8ed-f109d251c362', 'System Maintenance', 'Generated notification message', true), ('e0bcb3ab-32c3-48f2-a8a8-fae5e4ad6c9e', 'Request Update', 'Generated notification message', false), ('ac3091d6-a49b-4162-83ac-6aba185f6894', 'System Maintenance', 'Generated notification message', false), ('cd10c9b4-e685-4fdd-a6fd-eeac8254d089', 'Policy Update', 'Generated notification message', true), ('1de663a2-2b10-411c-9232-99004ca7edf8', 'System Maintenance', 'Generated notification message', true), ('f53b8c3d-2752-4744-9a4b-269b65e9120f', 'System Maintenance', 'Generated notification message', true), ('a6f0f025-d6d3-4dad-a360-c7ff095eda11', 'Welcome', 'Generated notification message', false), ('8904a6b4-a958-4c3d-a589-2b35a9866ad3', 'Policy Update', 'Generated notification message', false), ('3463812e-03d2-4172-a998-e318c5eb153e', 'System Maintenance', 'Generated notification message', true), ('631867f1-9ab3-419e-a31b-e69c5dda184e', 'Welcome', 'Generated notification message', true), ('eeabd4f5-03a2-4ceb-8935-aeee66123034', 'System Maintenance', 'Generated notification message', false), ('91bcb4a9-f683-481e-b05b-741a1b4d4098', 'System Maintenance', 'Generated notification message', false), ('a329b25c-2ccb-44d6-82ff-f0df72fcc6c5', 'Welcome', 'Generated notification message', false), ('d73d8fb7-8e20-4f43-b687-a1a60a5b2471', 'Welcome', 'Generated notification message', false), ('3a824e73-ac35-4fcd-99c8-6c7963e4ba4c', 'Welcome', 'Generated notification message', false), ('baaafb44-6e56-42c5-ba39-a467a941acff', 'Request Update', 'Generated notification message', false), ('f768f1e4-0c2f-4eb0-ada5-dc614dec582f', 'Welcome', 'Generated notification message', true), ('845bc92f-9e9b-4b1a-83ba-6318d53b5bbf', 'Welcome', 'Generated notification message', false), ('df6b0675-d8e7-499c-8855-abcd4c61afc0', 'Welcome', 'Generated notification message', true), ('f741c042-05dc-425c-9c26-661d9a2c6174', 'System Maintenance', 'Generated notification message', true), ('bb68c1fb-fd0c-4c1d-a1d4-7cddea66a25e', 'Welcome', 'Generated notification message', true), ('803d4a09-488b-4f79-8163-60076e291e7a', 'System Maintenance', 'Generated notification message', false), ('ddbdba42-4ba7-4e7a-bb11-fdc337a1d066', 'Policy Update', 'Generated notification message', false), ('568413c1-aa2f-4f8c-b735-816cd1a58368', 'System Maintenance', 'Generated notification message', true), ('453213f7-1a7f-464b-8104-2b96e6d67a39', 'Request Update', 'Generated notification message', false), ('0dcb33b6-6a67-40db-b63f-4788f32890b9', 'Welcome', 'Generated notification message', true), ('d73d8fb7-8e20-4f43-b687-a1a60a5b2471', 'Request Update', 'Generated notification message', true), ('a35edab8-80ea-47a4-a2ab-4ad33d448f99', 'Request Update', 'Generated notification message', true), ('ac7c8a30-1f54-44fd-a251-a17dddaba75c', 'System Maintenance', 'Generated notification message', false), ('7afbe7e0-9d31-45ff-86ea-1ce6f96cd9d7', 'Policy Update', 'Generated notification message', false), ('8ed856e5-ce86-4af2-aa66-114a4d4f657f', 'Welcome', 'Generated notification message', false), ('d1ad4abe-5fa5-4ead-94b2-8e7a82e77774', 'System Maintenance', 'Generated notification message', true), ('a78b17c5-ec54-4d38-9526-6577d7e87056', 'System Maintenance', 'Generated notification message', false), ('c78438a2-5a57-43e2-904e-cec549315fb6', 'Welcome', 'Generated notification message', true), ('9018fb09-9eb7-47fb-84fe-1949f159227f', 'Request Update', 'Generated notification message', false), ('df25c42b-703e-48e4-b270-cb3f95e8e2c0', 'Welcome', 'Generated notification message', true), ('bb68c1fb-fd0c-4c1d-a1d4-7cddea66a25e', 'Welcome', 'Generated notification message', false), ('8ce66417-211e-4a89-8d4e-074020ee6cd2', 'Policy Update', 'Generated notification message', false), ('ac3091d6-a49b-4162-83ac-6aba185f6894', 'Welcome', 'Generated notification message', true), ('8d470b03-ead5-4898-b373-d61a64bf50eb', 'Policy Update', 'Generated notification message', false), ('0dcb33b6-6a67-40db-b63f-4788f32890b9', 'Policy Update', 'Generated notification message', false), ('2b02e017-625e-4ea5-bbb4-fa23b2cd07f2', 'Policy Update', 'Generated notification message', false), ('08aeba94-6421-4abc-88a4-4bb497b67cf6', 'Policy Update', 'Generated notification message', false), ('5f757802-6550-4127-b81e-74e9d6748738', 'Request Update', 'Generated notification message', true), ('337a16ef-19f5-4e72-a414-9812048be8d2', 'System Maintenance', 'Generated notification message', false), ('9cf2c037-2e1a-47ea-b765-0f4b31be3e48', 'System Maintenance', 'Generated notification message', false), ('379d9eba-ab8b-4805-ac74-ce489d58da1f', 'Welcome', 'Generated notification message', true), ('e3a20d1a-633c-41b1-aa5c-687fca1ea849', 'Policy Update', 'Generated notification message', false), ('d8370fb4-308a-433e-991f-6e0fc8354140', 'Policy Update', 'Generated notification message', true), ('f53b8c3d-2752-4744-9a4b-269b65e9120f', 'Policy Update', 'Generated notification message', true), ('47607ca4-472a-489b-815d-b502536b3eee', 'Policy Update', 'Generated notification message', true), ('fb08ac2f-7574-4f9d-882e-bafb489ab6c6', 'Welcome', 'Generated notification message', true), ('441bca38-fe2d-48e4-a863-e67183cd592b', 'Welcome', 'Generated notification message', false), ('46bcef6c-9f49-4f22-89aa-1f755b57dea4', 'Request Update', 'Generated notification message', false), ('4bd0f175-27b1-4cd4-bfca-5cb9d6e57ee6', 'System Maintenance', 'Generated notification message', false), ('3cc06bae-36d3-4e9e-a661-a56f32705925', 'System Maintenance', 'Generated notification message', false), ('60e04dc1-54e6-4d7d-9856-7949cbdad615', 'Welcome', 'Generated notification message', true), ('66bb1b56-3b9b-49e2-bf15-f4a23ed15830', 'Policy Update', 'Generated notification message', true), ('a78b17c5-ec54-4d38-9526-6577d7e87056', 'Policy Update', 'Generated notification message', true), ('51f44fd2-a657-4dcd-8526-177573074a91', 'Request Update', 'Generated notification message', true), ('631867f1-9ab3-419e-a31b-e69c5dda184e', 'System Maintenance', 'Generated notification message', false), ('80ec8511-dfb5-469e-8040-76f9025eb0b3', 'System Maintenance', 'Generated notification message', true), ('f3609092-8ad4-4012-9749-5481f6f03ccf', 'Request Update', 'Generated notification message', true), ('df25c42b-703e-48e4-b270-cb3f95e8e2c0', 'System Maintenance', 'Generated notification message', true), ('55311910-8552-4dc2-9552-b51f46fac4d7', 'Welcome', 'Generated notification message', true), ('002fe3b4-56d3-4611-a839-8b65910bb7ee', 'Policy Update', 'Generated notification message', true), ('4bd0f175-27b1-4cd4-bfca-5cb9d6e57ee6', 'Policy Update', 'Generated notification message', false), ('98470b77-4c3a-4ec0-8933-9c4918ae2264', 'Welcome', 'Generated notification message', true), ('2df7520a-e617-491e-a4ce-4594ea2d30ef', 'System Maintenance', 'Generated notification message', false), ('2f1f4eb8-17a3-4e77-b359-e47e4bbb9ecf', 'System Maintenance', 'Generated notification message', false), ('2742cde7-5985-484d-a77e-4236b06cec1a', 'Policy Update', 'Generated notification message', false), ('2fb57514-1b55-4737-b2ea-ea6d7225a08f', 'System Maintenance', 'Generated notification message', true), ('43ccfa5f-1b19-4c06-b1c4-71468f2bce1f', 'System Maintenance', 'Generated notification message', true), ('7a39968e-cf6f-4cff-921c-1dc10ab181af', 'System Maintenance', 'Generated notification message', true), ('12fe531c-ca94-4beb-bece-d66bee2468d8', 'Request Update', 'Generated notification message', true), ('50c71fa1-f737-4b2e-ba4b-b7e24d01a971', 'Request Update', 'Generated notification message', true), ('f26a5611-432c-4263-bcd8-c454ae0b5c79', 'System Maintenance', 'Generated notification message', true), ('98f02809-2152-4807-9fe9-15c7d26b9ce8', 'Policy Update', 'Generated notification message', false), ('258dd4a8-9659-4d14-9fe5-4f787cbc1737', 'Welcome', 'Generated notification message', true), ('0a3d61d3-a5ea-4b82-90f5-6a4b147ea0bf', 'System Maintenance', 'Generated notification message', true), ('7bae3531-8f73-4c32-8429-c494e1734834', 'Policy Update', 'Generated notification message', false), ('779412db-d4ac-4877-9569-8b0997eebed1', 'System Maintenance', 'Generated notification message', false), ('7a88f361-ead6-4f01-959a-b75974113f67', 'Welcome', 'Generated notification message', true), ('c2695c2d-2a9c-4669-a51f-3336e2ef72b2', 'Request Update', 'Generated notification message', true), ('bee3a61a-9f0b-469e-acdf-19df15b47b1c', 'Welcome', 'Generated notification message', true), ('4980c8e5-75a4-4964-b741-f6317f82a7f8', 'Welcome', 'Generated notification message', false), ('4b9f178d-d365-4efa-9c02-9e6b9ce492c7', 'Request Update', 'Generated notification message', true), ('830350d2-1904-48fd-937a-af37134a7071', 'System Maintenance', 'Generated notification message', true), ('412fc9e3-89bf-4a4e-9279-948b4332a575', 'Request Update', 'Generated notification message', true), ('591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', 'Welcome', 'Generated notification message', false), ('dca6ff3c-ad85-4366-b05d-35d00ed5bc23', 'System Maintenance', 'Generated notification message', false), ('f86f0f56-cfbe-4657-b15f-9f1f3180bad5', 'Welcome', 'Generated notification message', false), ('ac7c8a30-1f54-44fd-a251-a17dddaba75c', 'Request Update', 'Generated notification message', true), ('4a616f6b-ad5c-4509-9ca8-d7e4cd39d520', 'System Maintenance', 'Generated notification message', false), ('68df453b-06cc-4570-84fb-646e1a184338', 'Policy Update', 'Generated notification message', true), ('f741c042-05dc-425c-9c26-661d9a2c6174', 'Welcome', 'Generated notification message', true), ('a538f6e8-18c3-4e09-82cd-9c52954f35ce', 'Policy Update', 'Generated notification message', false), ('11a0edab-2027-4cc2-8881-b37db063b454', 'Welcome', 'Generated notification message', true), ('c6fe46f0-d714-49e6-84b2-0d19da6bc82f', 'Policy Update', 'Generated notification message', false), ('d426508d-26b5-4b1e-8d91-995d59481d6f', 'Welcome', 'Generated notification message', true), ('fe2cd0d0-5bc0-47e6-99bb-2e0fa1d4eeb1', 'Request Update', 'Generated notification message', true), ('50f361d7-ec04-4367-9cbf-ba2ac1d82c9c', 'Request Update', 'Generated notification message', true), ('2f04f9d8-dab4-4638-982e-5760d2bb096a', 'Welcome', 'Generated notification message', false), ('8ce66417-211e-4a89-8d4e-074020ee6cd2', 'Welcome', 'Generated notification message', false), ('3a8febc3-0af3-43a4-9c0c-c0e4fd5b168d', 'Request Update', 'Generated notification message', true), ('fb08ac2f-7574-4f9d-882e-bafb489ab6c6', 'Policy Update', 'Generated notification message', false), ('2fb57514-1b55-4737-b2ea-ea6d7225a08f', 'Welcome', 'Generated notification message', false), ('ef4d0fe8-6487-4224-bdce-0b8dc6ae8292', 'Policy Update', 'Generated notification message', true), ('c2695c2d-2a9c-4669-a51f-3336e2ef72b2', 'Request Update', 'Generated notification message', false), ('830350d2-1904-48fd-937a-af37134a7071', 'Request Update', 'Generated notification message', true), ('08aeba94-6421-4abc-88a4-4bb497b67cf6', 'Policy Update', 'Generated notification message', false), ('df25c42b-703e-48e4-b270-cb3f95e8e2c0', 'Policy Update', 'Generated notification message', false), ('9f009394-74f7-438d-a072-8c2f2e0a3130', 'Request Update', 'Generated notification message', true), ('966a8046-23bf-488f-aa31-5ce0a5af3ac1', 'Policy Update', 'Generated notification message', true), ('eeabd4f5-03a2-4ceb-8935-aeee66123034', 'Welcome', 'Generated notification message', false), ('e0e4add6-4ea2-4bce-9b68-eec5c56b9744', 'Request Update', 'Generated notification message', true), ('ddbdba42-4ba7-4e7a-bb11-fdc337a1d066', 'Welcome', 'Generated notification message', true), ('a35edab8-80ea-47a4-a2ab-4ad33d448f99', 'Request Update', 'Generated notification message', false), ('ac7c8a30-1f54-44fd-a251-a17dddaba75c', 'Welcome', 'Generated notification message', true), ('f7d6e307-f488-4786-ac71-0d1c474cd8e9', 'System Maintenance', 'Generated notification message', false), ('77d9b3a2-4296-432f-bc1a-10e0151fa8ba', 'Welcome', 'Generated notification message', false), ('77d9b3a2-4296-432f-bc1a-10e0151fa8ba', 'Request Update', 'Generated notification message', true), ('61f02dd6-b98b-42d0-a1da-90d414575aad', 'Request Update', 'Generated notification message', false), ('72b9e80e-9c19-403b-8112-a560242438cd', 'System Maintenance', 'Generated notification message', true), ('8de7548d-1b05-4137-ad64-1913bdec7147', 'Welcome', 'Generated notification message', true), ('542bd5d4-350a-4a63-be0e-fdc118d3ab95', 'System Maintenance', 'Generated notification message', false), ('1de663a2-2b10-411c-9232-99004ca7edf8', 'System Maintenance', 'Generated notification message', true), ('28125096-ee9e-4d86-a026-4a5dedf2f39e', 'Policy Update', 'Generated notification message', true), ('453213f7-1a7f-464b-8104-2b96e6d67a39', 'System Maintenance', 'Generated notification message', false), ('eb563105-5388-43f5-8ea1-394eae002c04', 'Welcome', 'Generated notification message', false), ('568f0d7e-55eb-46bf-a8b9-96619bb875bc', 'Welcome', 'Generated notification message', true), ('cd10c9b4-e685-4fdd-a6fd-eeac8254d089', 'Request Update', 'Generated notification message', false), ('1e62efcc-b7ed-43ae-97be-d4d58598af5c', 'Welcome', 'Generated notification message', false), ('591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', 'Welcome', 'Generated notification message', false), ('1efcd3e8-4e2b-4b62-9c11-e93ab4138e89', 'Welcome', 'Generated notification message', true), ('8b722aad-86a8-498b-921f-aac40b29d698', 'System Maintenance', 'Generated notification message', false), ('edeb601c-4721-442e-ab3b-ad4f01f218d9', 'System Maintenance', 'Generated notification message', true), ('441bca38-fe2d-48e4-a863-e67183cd592b', 'System Maintenance', 'Generated notification message', true), ('fe2cd0d0-5bc0-47e6-99bb-2e0fa1d4eeb1', 'Welcome', 'Generated notification message', false), ('12fe531c-ca94-4beb-bece-d66bee2468d8', 'Welcome', 'Generated notification message', true), ('bf508636-10e2-4986-8118-c3da68caa0eb', 'Request Update', 'Generated notification message', true), ('a538f6e8-18c3-4e09-82cd-9c52954f35ce', 'System Maintenance', 'Generated notification message', true), ('2db46bc8-8fd1-407f-bbef-404374d4aedf', 'Request Update', 'Generated notification message', true), ('834951ab-fdac-46ef-b04b-bbf13d9e6640', 'Request Update', 'Generated notification message', false), ('568413c1-aa2f-4f8c-b735-816cd1a58368', 'Policy Update', 'Generated notification message', true), ('4338ab23-cbe0-41ba-becd-0ad76667cbe0', 'Welcome', 'Generated notification message', true), ('3a8febc3-0af3-43a4-9c0c-c0e4fd5b168d', 'Policy Update', 'Generated notification message', true), ('7bae3531-8f73-4c32-8429-c494e1734834', 'Welcome', 'Generated notification message', false), ('9f009394-74f7-438d-a072-8c2f2e0a3130', 'Welcome', 'Generated notification message', true), ('c8e99b37-c722-4216-b011-a2a4159d348c', 'Policy Update', 'Generated notification message', false), ('f7d6e307-f488-4786-ac71-0d1c474cd8e9', 'Policy Update', 'Generated notification message', true), ('9895f032-5c21-4b19-959b-ca9133c0045e', 'System Maintenance', 'Generated notification message', false), ('8ab48564-ed6a-4866-bc75-64275052c44c', 'Policy Update', 'Generated notification message', true), ('4a639de5-61f6-49fd-a395-373e8ced41d3', 'System Maintenance', 'Generated notification message', true), ('a423ca3f-595c-4b7c-9538-51e8caedab4f', 'Request Update', 'Generated notification message', false), ('6e4aa712-a812-457d-b3cc-4622de964f72', 'Welcome', 'Generated notification message', false), ('ae59061a-5ac3-477a-aa7a-5d019d525221', 'Welcome', 'Generated notification message', true), ('80ec8511-dfb5-469e-8040-76f9025eb0b3', 'Request Update', 'Generated notification message', true), ('d1ad4abe-5fa5-4ead-94b2-8e7a82e77774', 'Welcome', 'Generated notification message', true), ('77d1dee3-39bd-41ca-806f-59f1dc9289ef', 'System Maintenance', 'Generated notification message', false), ('94674f5e-7045-461c-a0f3-194672e1e595', 'Welcome', 'Generated notification message', true), ('98f02809-2152-4807-9fe9-15c7d26b9ce8', 'Welcome', 'Generated notification message', false), ('5b12fa9a-7dae-46ec-9b2f-eb05b48cec2e', 'Policy Update', 'Generated notification message', true), ('12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', 'System Maintenance', 'Generated notification message', true), ('779412db-d4ac-4877-9569-8b0997eebed1', 'Welcome', 'Generated notification message', false), ('4338ab23-cbe0-41ba-becd-0ad76667cbe0', 'Request Update', 'Generated notification message', true), ('41435551-a36a-4d3b-8a4f-5040da653a49', 'System Maintenance', 'Generated notification message', true), ('7b0f328a-f264-4728-8122-2925c2077b87', 'Request Update', 'Generated notification message', false), ('22b96265-975c-4bec-a908-3d04bd237fd3', 'Welcome', 'Generated notification message', false), ('568413c1-aa2f-4f8c-b735-816cd1a58368', 'System Maintenance', 'Generated notification message', false), ('68df453b-06cc-4570-84fb-646e1a184338', 'Policy Update', 'Generated notification message', true), ('412fc9e3-89bf-4a4e-9279-948b4332a575', 'System Maintenance', 'Generated notification message', false), ('08e22eca-b786-4211-92ee-f77b6e60c9a8', 'Policy Update', 'Generated notification message', false), ('dca6ff3c-ad85-4366-b05d-35d00ed5bc23', 'Welcome', 'Generated notification message', true), ('4a639de5-61f6-49fd-a395-373e8ced41d3', 'Welcome', 'Generated notification message', true), ('22b96265-975c-4bec-a908-3d04bd237fd3', 'System Maintenance', 'Generated notification message', false), ('9018fb09-9eb7-47fb-84fe-1949f159227f', 'System Maintenance', 'Generated notification message', false), ('68df453b-06cc-4570-84fb-646e1a184338', 'Policy Update', 'Generated notification message', true), ('fb9956e2-07f3-4627-bff5-8c13b8dd346b', 'System Maintenance', 'Generated notification message', false), ('ac3091d6-a49b-4162-83ac-6aba185f6894', 'Request Update', 'Generated notification message', true), ('a538f6e8-18c3-4e09-82cd-9c52954f35ce', 'System Maintenance', 'Generated notification message', false), ('f26a5611-432c-4263-bcd8-c454ae0b5c79', 'Welcome', 'Generated notification message', true), ('7955fa69-9edc-40bf-ad38-09956bb6cfd4', 'Policy Update', 'Generated notification message', false), ('2f04f9d8-dab4-4638-982e-5760d2bb096a', 'Request Update', 'Generated notification message', true), ('35198028-c785-4e70-87ef-4caacc693c76', 'Request Update', 'Generated notification message', false), ('2882febf-eae4-4cc8-8349-6f3856c7b743', 'System Maintenance', 'Generated notification message', false), ('2f1f4eb8-17a3-4e77-b359-e47e4bbb9ecf', 'Policy Update', 'Generated notification message', false), ('8ed856e5-ce86-4af2-aa66-114a4d4f657f', 'Welcome', 'Generated notification message', false), ('2b02e017-625e-4ea5-bbb4-fa23b2cd07f2', 'Policy Update', 'Generated notification message', false), ('966a8046-23bf-488f-aa31-5ce0a5af3ac1', 'Policy Update', 'Generated notification message', false), ('12fe531c-ca94-4beb-bece-d66bee2468d8', 'Welcome', 'Generated notification message', true), ('ee6b8055-4906-428b-a054-2210f507a6ed', 'System Maintenance', 'Generated notification message', true), ('77f3cfe1-6040-44a4-b3bc-bfdfc234131c', 'System Maintenance', 'Generated notification message', true), ('d72316f5-21b5-44fc-bff2-34fd957131c2', 'Welcome', 'Generated notification message', false), ('469141ac-8d7b-4f30-809a-2c6f86d9baa0', 'System Maintenance', 'Generated notification message', true), ('a35edab8-80ea-47a4-a2ab-4ad33d448f99', 'Policy Update', 'Generated notification message', true), ('5f757802-6550-4127-b81e-74e9d6748738', 'Welcome', 'Generated notification message', true), ('4f53b12b-fe1a-4dce-8c38-fa8372f5dffe', 'System Maintenance', 'Generated notification message', false), ('7b0f328a-f264-4728-8122-2925c2077b87', 'System Maintenance', 'Generated notification message', true), ('960e494c-1751-4a33-9469-64d3b17d94f0', 'Welcome', 'Generated notification message', false), ('8d470b03-ead5-4898-b373-d61a64bf50eb', 'Policy Update', 'Generated notification message', false), ('eafa90c7-c170-486d-9ae9-a0d7400824ec', 'Policy Update', 'Generated notification message', false), ('9b73bfa4-555f-492b-9b40-aa486a467bd4', 'Request Update', 'Generated notification message', true), ('35198028-c785-4e70-87ef-4caacc693c76', 'Request Update', 'Generated notification message', false), ('eb563105-5388-43f5-8ea1-394eae002c04', 'System Maintenance', 'Generated notification message', true), ('2956e054-2dfe-4e26-bc50-238c70a600ff', 'System Maintenance', 'Generated notification message', false), ('9cf2c037-2e1a-47ea-b765-0f4b31be3e48', 'Request Update', 'Generated notification message', true), ('8de7548d-1b05-4137-ad64-1913bdec7147', 'Welcome', 'Generated notification message', true), ('412fc9e3-89bf-4a4e-9279-948b4332a575', 'Policy Update', 'Generated notification message', true), ('18bb5752-4f65-4a80-92ac-90fc0defc14f', 'Welcome', 'Generated notification message', false), ('0ff0c276-9181-4355-bcfc-aeb890af6926', 'Request Update', 'Generated notification message', false), ('adcb33d3-c8e9-47b5-8dc1-3f4dfb6203dd', 'Policy Update', 'Generated notification message', true), ('ddbdba42-4ba7-4e7a-bb11-fdc337a1d066', 'Welcome', 'Generated notification message', false), ('665b89f3-031d-4749-8b02-f5e010f77a2a', 'Request Update', 'Generated notification message', true), ('fb9956e2-07f3-4627-bff5-8c13b8dd346b', 'Policy Update', 'Generated notification message', false), ('e0bcb3ab-32c3-48f2-a8a8-fae5e4ad6c9e', 'Request Update', 'Generated notification message', true), ('803d4a09-488b-4f79-8163-60076e291e7a', 'Request Update', 'Generated notification message', false), ('3a8febc3-0af3-43a4-9c0c-c0e4fd5b168d', 'Policy Update', 'Generated notification message', false), ('379d9eba-ab8b-4805-ac74-ce489d58da1f', 'System Maintenance', 'Generated notification message', true), ('7309d852-1c71-4f1f-8faa-b60612eb23db', 'Policy Update', 'Generated notification message', false), ('1e020116-7d9d-4b51-a86f-73c0f5b408ae', 'Request Update', 'Generated notification message', false), ('ac3091d6-a49b-4162-83ac-6aba185f6894', 'Welcome', 'Generated notification message', true), ('568413c1-aa2f-4f8c-b735-816cd1a58368', 'Welcome', 'Generated notification message', false), ('dd48fcd2-5c34-492d-9db3-b7ff283db1f2', 'Policy Update', 'Generated notification message', true), ('7a88f361-ead6-4f01-959a-b75974113f67', 'System Maintenance', 'Generated notification message', false), ('5cd15a13-3854-40fe-b029-939db99a3481', 'Policy Update', 'Generated notification message', false), ('845bc92f-9e9b-4b1a-83ba-6318d53b5bbf', 'Welcome', 'Generated notification message', false), ('d73d8fb7-8e20-4f43-b687-a1a60a5b2471', 'Welcome', 'Generated notification message', true), ('1de663a2-2b10-411c-9232-99004ca7edf8', 'System Maintenance', 'Generated notification message', true), ('bf508636-10e2-4986-8118-c3da68caa0eb', 'Policy Update', 'Generated notification message', false), ('2db46bc8-8fd1-407f-bbef-404374d4aedf', 'Policy Update', 'Generated notification message', false), ('51f44fd2-a657-4dcd-8526-177573074a91', 'Policy Update', 'Generated notification message', true), ('8ce66417-211e-4a89-8d4e-074020ee6cd2', 'System Maintenance', 'Generated notification message', true), ('ddbdba42-4ba7-4e7a-bb11-fdc337a1d066', 'Welcome', 'Generated notification message', true), ('788dd437-2ac8-48c3-aa1f-66eb8bc405ad', 'Welcome', 'Generated notification message', true), ('7a39968e-cf6f-4cff-921c-1dc10ab181af', 'Welcome', 'Generated notification message', true), ('ddab7d7c-23cd-48fc-85fc-b888ec57acc3', 'Policy Update', 'Generated notification message', true), ('3463812e-03d2-4172-a998-e318c5eb153e', 'Request Update', 'Generated notification message', false), ('16aabf39-d0c1-4e70-b701-1f36dddb45a8', 'Policy Update', 'Generated notification message', false), ('4338ab23-cbe0-41ba-becd-0ad76667cbe0', 'Request Update', 'Generated notification message', false), ('85cac177-703e-4c92-a36c-8d6cad5bd100', 'Policy Update', 'Generated notification message', false), ('5f757802-6550-4127-b81e-74e9d6748738', 'System Maintenance', 'Generated notification message', true), ('9a144cb3-e4c3-4029-a54e-2b295ccbfb53', 'Policy Update', 'Generated notification message', false), ('5ebeadd3-6b4c-422d-b542-bb0cf9451d99', 'Policy Update', 'Generated notification message', true), ('1e020116-7d9d-4b51-a86f-73c0f5b408ae', 'System Maintenance', 'Generated notification message', true), ('9cf2c037-2e1a-47ea-b765-0f4b31be3e48', 'Request Update', 'Generated notification message', false), ('70046b84-b760-4084-aad4-19b3b7ab8d10', 'System Maintenance', 'Generated notification message', true), ('735e6ab2-1449-4c45-bbc6-a5996b555bd0', 'Request Update', 'Generated notification message', false), ('5d8f7338-f23b-41d1-8c9e-6673cfd79834', 'Request Update', 'Generated notification message', false), ('258dd4a8-9659-4d14-9fe5-4f787cbc1737', 'Welcome', 'Generated notification message', false), ('77d1dee3-39bd-41ca-806f-59f1dc9289ef', 'Welcome', 'Generated notification message', false), ('631867f1-9ab3-419e-a31b-e69c5dda184e', 'Welcome', 'Generated notification message', true), ('6e4aa712-a812-457d-b3cc-4622de964f72', 'System Maintenance', 'Generated notification message', true), ('bf508636-10e2-4986-8118-c3da68caa0eb', 'Policy Update', 'Generated notification message', false), ('08aeba94-6421-4abc-88a4-4bb497b67cf6', 'Welcome', 'Generated notification message', true), ('c78438a2-5a57-43e2-904e-cec549315fb6', 'Request Update', 'Generated notification message', true), ('453213f7-1a7f-464b-8104-2b96e6d67a39', 'Welcome', 'Generated notification message', true), ('568413c1-aa2f-4f8c-b735-816cd1a58368', 'System Maintenance', 'Generated notification message', true), ('bfa4bfc0-f623-4356-b499-8412142c8775', 'Policy Update', 'Generated notification message', false), ('dca6ff3c-ad85-4366-b05d-35d00ed5bc23', 'Welcome', 'Generated notification message', true), ('a423ca3f-595c-4b7c-9538-51e8caedab4f', 'System Maintenance', 'Generated notification message', false), ('08aeba94-6421-4abc-88a4-4bb497b67cf6', 'Policy Update', 'Generated notification message', false), ('12fe531c-ca94-4beb-bece-d66bee2468d8', 'Request Update', 'Generated notification message', true), ('41435551-a36a-4d3b-8a4f-5040da653a49', 'Policy Update', 'Generated notification message', true), ('835312cf-fcd8-41cf-b8ed-f109d251c362', 'Welcome', 'Generated notification message', false), ('7a88f361-ead6-4f01-959a-b75974113f67', 'System Maintenance', 'Generated notification message', true), ('ac3091d6-a49b-4162-83ac-6aba185f6894', 'Policy Update', 'Generated notification message', false), ('c38f7614-899e-4cb4-aab3-a6b5dec59c8d', 'Request Update', 'Generated notification message', true), ('9b73bfa4-555f-492b-9b40-aa486a467bd4', 'Policy Update', 'Generated notification message', true), ('5cd15a13-3854-40fe-b029-939db99a3481', 'Welcome', 'Generated notification message', false), ('fb512a8d-5ffd-4747-8bca-8ad14f7aeebe', 'Policy Update', 'Generated notification message', true), ('258dd4a8-9659-4d14-9fe5-4f787cbc1737', 'Request Update', 'Generated notification message', false), ('cd10c9b4-e685-4fdd-a6fd-eeac8254d089', 'System Maintenance', 'Generated notification message', false), ('542bd5d4-350a-4a63-be0e-fdc118d3ab95', 'Request Update', 'Generated notification message', true), ('61f02dd6-b98b-42d0-a1da-90d414575aad', 'Request Update', 'Generated notification message', true), ('469141ac-8d7b-4f30-809a-2c6f86d9baa0', 'Policy Update', 'Generated notification message', false), ('2eb759e2-6bcc-4196-9d70-7ea34f689380', 'Welcome', 'Generated notification message', false), ('7b0f328a-f264-4728-8122-2925c2077b87', 'Welcome', 'Generated notification message', true), ('98470b77-4c3a-4ec0-8933-9c4918ae2264', 'Request Update', 'Generated notification message', true), ('8904a6b4-a958-4c3d-a589-2b35a9866ad3', 'System Maintenance', 'Generated notification message', true), ('12fe531c-ca94-4beb-bece-d66bee2468d8', 'Policy Update', 'Generated notification message', true), ('3a824e73-ac35-4fcd-99c8-6c7963e4ba4c', 'Policy Update', 'Generated notification message', false), ('c2695c2d-2a9c-4669-a51f-3336e2ef72b2', 'Request Update', 'Generated notification message', true), ('70046b84-b760-4084-aad4-19b3b7ab8d10', 'System Maintenance', 'Generated notification message', false), ('77d1dee3-39bd-41ca-806f-59f1dc9289ef', 'System Maintenance', 'Generated notification message', false), ('b2c4454f-9d5b-414f-92c2-99388a7c9a7c', 'Request Update', 'Generated notification message', true), ('e3a20d1a-633c-41b1-aa5c-687fca1ea849', 'Welcome', 'Generated notification message', false), ('a329b25c-2ccb-44d6-82ff-f0df72fcc6c5', 'System Maintenance', 'Generated notification message', true), ('18c3a4f5-bd47-4294-9bce-bbdf05efba8c', 'Welcome', 'Generated notification message', true), ('77d1dee3-39bd-41ca-806f-59f1dc9289ef', 'Request Update', 'Generated notification message', true), ('cd10c9b4-e685-4fdd-a6fd-eeac8254d089', 'Policy Update', 'Generated notification message', true), ('3cc06bae-36d3-4e9e-a661-a56f32705925', 'Request Update', 'Generated notification message', false), ('8900c328-4b65-420f-a529-4874c0ccce71', 'Policy Update', 'Generated notification message', true), ('9f06fef4-c8f2-41ca-ae29-023f6133c188', 'System Maintenance', 'Generated notification message', false), ('665b89f3-031d-4749-8b02-f5e010f77a2a', 'Policy Update', 'Generated notification message', false), ('de9820a0-9c1c-4b78-83b1-2b02e778d645', 'System Maintenance', 'Generated notification message', true), ('ee6b8055-4906-428b-a054-2210f507a6ed', 'Policy Update', 'Generated notification message', false), ('543f9b04-fea5-4a71-83bd-f6911063ff90', 'Request Update', 'Generated notification message', false), ('55311910-8552-4dc2-9552-b51f46fac4d7', 'System Maintenance', 'Generated notification message', true), ('5deae309-874e-4c48-9362-e44f9cbf8bcd', 'Request Update', 'Generated notification message', true), ('94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', 'Policy Update', 'Generated notification message', false), ('9f9de4d3-af49-4448-a771-d2d0ba455612', 'Welcome', 'Generated notification message', true), ('12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', 'Request Update', 'Generated notification message', false), ('4eb18d84-c2f9-4705-90ee-df8e38e4ae1a', 'Welcome', 'Generated notification message', false), ('b744dceb-5c80-4ad0-be62-febb9622703b', 'System Maintenance', 'Generated notification message', true), ('4b60acfd-dcbc-4de3-a6b3-d4e8a8564616', 'Request Update', 'Generated notification message', true), ('b5440d7a-b818-428b-8049-001fd75e1f69', 'System Maintenance', 'Generated notification message', true), ('5cd15a13-3854-40fe-b029-939db99a3481', 'Welcome', 'Generated notification message', true), ('6fcccc21-898d-41f0-8a6b-c85894ca50c9', 'System Maintenance', 'Generated notification message', false), ('eeabd4f5-03a2-4ceb-8935-aeee66123034', 'Welcome', 'Generated notification message', false), ('51f44fd2-a657-4dcd-8526-177573074a91', 'Welcome', 'Generated notification message', false), ('d72316f5-21b5-44fc-bff2-34fd957131c2', 'Policy Update', 'Generated notification message', true), ('18bb5752-4f65-4a80-92ac-90fc0defc14f', 'System Maintenance', 'Generated notification message', false), ('788dd437-2ac8-48c3-aa1f-66eb8bc405ad', 'System Maintenance', 'Generated notification message', true), ('2fb57514-1b55-4737-b2ea-ea6d7225a08f', 'Request Update', 'Generated notification message', false), ('e0e4add6-4ea2-4bce-9b68-eec5c56b9744', 'Request Update', 'Generated notification message', false), ('bd87f375-7bae-42ce-b9f6-d38b80f50b3e', 'Request Update', 'Generated notification message', true), ('002fe3b4-56d3-4611-a839-8b65910bb7ee', 'Request Update', 'Generated notification message', true), ('dca6ff3c-ad85-4366-b05d-35d00ed5bc23', 'System Maintenance', 'Generated notification message', true), ('6493e68d-b22c-4f63-96ae-29178d3e4d0d', 'Welcome', 'Generated notification message', true), ('1aef1416-adf9-4c92-9536-4ecd231f7418', 'Request Update', 'Generated notification message', true), ('b35fc239-0fdf-4454-92e0-ffc4b7d263a5', 'Welcome', 'Generated notification message', false), ('ac3091d6-a49b-4162-83ac-6aba185f6894', 'Policy Update', 'Generated notification message', true), ('3a824e73-ac35-4fcd-99c8-6c7963e4ba4c', 'Request Update', 'Generated notification message', true), ('e0bcb3ab-32c3-48f2-a8a8-fae5e4ad6c9e', 'Policy Update', 'Generated notification message', true), ('1e020116-7d9d-4b51-a86f-73c0f5b408ae', 'System Maintenance', 'Generated notification message', true), ('b512d154-f044-4b48-80c4-72fee740e5e4', 'Request Update', 'Generated notification message', true), ('8675b70f-3476-4576-a4de-95c369a76d2a', 'Request Update', 'Generated notification message', false), ('df6b0675-d8e7-499c-8855-abcd4c61afc0', 'Request Update', 'Generated notification message', false), ('60e04dc1-54e6-4d7d-9856-7949cbdad615', 'Policy Update', 'Generated notification message', false), ('845bc92f-9e9b-4b1a-83ba-6318d53b5bbf', 'Welcome', 'Generated notification message', true), ('591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', 'Request Update', 'Generated notification message', false), ('80ec8511-dfb5-469e-8040-76f9025eb0b3', 'Welcome', 'Generated notification message', true), ('2956e054-2dfe-4e26-bc50-238c70a600ff', 'Request Update', 'Generated notification message', false), ('0dcb33b6-6a67-40db-b63f-4788f32890b9', 'Request Update', 'Generated notification message', true), ('ee6b8055-4906-428b-a054-2210f507a6ed', 'Welcome', 'Generated notification message', false), ('fc9782dc-f3c8-415e-a9cd-4ad3d87b4297', 'Policy Update', 'Generated notification message', false), ('2eb759e2-6bcc-4196-9d70-7ea34f689380', 'Policy Update', 'Generated notification message', false), ('0a972d48-de32-46d1-aeb8-eaa3e248be11', 'Welcome', 'Generated notification message', true), ('4bd0f175-27b1-4cd4-bfca-5cb9d6e57ee6', 'Request Update', 'Generated notification message', false), ('fc9782dc-f3c8-415e-a9cd-4ad3d87b4297', 'Request Update', 'Generated notification message', true), ('82d7a493-1242-47ac-bb05-e16c4326f00e', 'Policy Update', 'Generated notification message', true), ('4338ab23-cbe0-41ba-becd-0ad76667cbe0', 'Welcome', 'Generated notification message', true), ('0780524d-cce1-45e8-958c-3e4954255ad7', 'Policy Update', 'Generated notification message', true), ('43ccfa5f-1b19-4c06-b1c4-71468f2bce1f', 'System Maintenance', 'Generated notification message', true), ('568413c1-aa2f-4f8c-b735-816cd1a58368', 'Welcome', 'Generated notification message', false), ('50f361d7-ec04-4367-9cbf-ba2ac1d82c9c', 'System Maintenance', 'Generated notification message', false), ('2882febf-eae4-4cc8-8349-6f3856c7b743', 'Request Update', 'Generated notification message', true), ('a35edab8-80ea-47a4-a2ab-4ad33d448f99', 'Welcome', 'Generated notification message', false), ('7ac730b3-3bd2-48d9-9fe0-d7d076ac2739', 'Policy Update', 'Generated notification message', false), ('8ed856e5-ce86-4af2-aa66-114a4d4f657f', 'Policy Update', 'Generated notification message', true), ('d426508d-26b5-4b1e-8d91-995d59481d6f', 'Policy Update', 'Generated notification message', true), ('542bd5d4-350a-4a63-be0e-fdc118d3ab95', 'System Maintenance', 'Generated notification message', true), ('5d8f7338-f23b-41d1-8c9e-6673cfd79834', 'Welcome', 'Generated notification message', false), ('788dd437-2ac8-48c3-aa1f-66eb8bc405ad', 'System Maintenance', 'Generated notification message', false), ('80ec8511-dfb5-469e-8040-76f9025eb0b3', 'Welcome', 'Generated notification message', true), ('4a44fc76-309d-4446-811d-6e33c6fac6b2', 'Welcome', 'Generated notification message', true), ('eeabd4f5-03a2-4ceb-8935-aeee66123034', 'Welcome', 'Generated notification message', true), ('581291a8-0888-436f-9518-68795b6a99ba', 'Policy Update', 'Generated notification message', true), ('66bb1b56-3b9b-49e2-bf15-f4a23ed15830', 'System Maintenance', 'Generated notification message', false), ('8de7548d-1b05-4137-ad64-1913bdec7147', 'Policy Update', 'Generated notification message', true), ('fc9782dc-f3c8-415e-a9cd-4ad3d87b4297', 'System Maintenance', 'Generated notification message', true), ('5d8f7338-f23b-41d1-8c9e-6673cfd79834', 'System Maintenance', 'Generated notification message', true), ('da222234-ec2a-4e7c-9291-b577eab8a19e', 'System Maintenance', 'Generated notification message', false), ('4a639de5-61f6-49fd-a395-373e8ced41d3', 'Welcome', 'Generated notification message', false), ('2f04f9d8-dab4-4638-982e-5760d2bb096a', 'Request Update', 'Generated notification message', false), ('2956e054-2dfe-4e26-bc50-238c70a600ff', 'Welcome', 'Generated notification message', true), ('2742cde7-5985-484d-a77e-4236b06cec1a', 'Welcome', 'Generated notification message', true), ('ef4d0fe8-6487-4224-bdce-0b8dc6ae8292', 'Request Update', 'Generated notification message', true), ('fb9956e2-07f3-4627-bff5-8c13b8dd346b', 'Welcome', 'Generated notification message', false), ('fb512a8d-5ffd-4747-8bca-8ad14f7aeebe', 'System Maintenance', 'Generated notification message', true), ('e3a20d1a-633c-41b1-aa5c-687fca1ea849', 'Policy Update', 'Generated notification message', true), ('3463812e-03d2-4172-a998-e318c5eb153e', 'Policy Update', 'Generated notification message', true), ('de9820a0-9c1c-4b78-83b1-2b02e778d645', 'System Maintenance', 'Generated notification message', true), ('60e04dc1-54e6-4d7d-9856-7949cbdad615', 'System Maintenance', 'Generated notification message', true), ('9a7d8464-cc62-46d7-b3ab-28a153978bd2', 'Welcome', 'Generated notification message', true), ('a538f6e8-18c3-4e09-82cd-9c52954f35ce', 'Policy Update', 'Generated notification message', false), ('85cac177-703e-4c92-a36c-8d6cad5bd100', 'System Maintenance', 'Generated notification message', true), ('e3a20d1a-633c-41b1-aa5c-687fca1ea849', 'Policy Update', 'Generated notification message', false), ('6493e68d-b22c-4f63-96ae-29178d3e4d0d', 'System Maintenance', 'Generated notification message', false), ('2742cde7-5985-484d-a77e-4236b06cec1a', 'Policy Update', 'Generated notification message', true), ('1de663a2-2b10-411c-9232-99004ca7edf8', 'Policy Update', 'Generated notification message', true), ('12473e25-56ae-4e71-9ba0-ea4e2bc9ec18', 'System Maintenance', 'Generated notification message', false), ('d053a295-946b-41e3-9b39-e5992ff18b85', 'Request Update', 'Generated notification message', false), ('c78438a2-5a57-43e2-904e-cec549315fb6', 'System Maintenance', 'Generated notification message', true), ('77f3cfe1-6040-44a4-b3bc-bfdfc234131c', 'System Maintenance', 'Generated notification message', true), ('8218e591-ca4e-4c40-a66f-286c0d980528', 'Policy Update', 'Generated notification message', false), ('08e22eca-b786-4211-92ee-f77b6e60c9a8', 'Welcome', 'Generated notification message', false), ('b744dceb-5c80-4ad0-be62-febb9622703b', 'Welcome', 'Generated notification message', true), ('803d4a09-488b-4f79-8163-60076e291e7a', 'Welcome', 'Generated notification message', true), ('c2695c2d-2a9c-4669-a51f-3336e2ef72b2', 'Request Update', 'Generated notification message', false), ('2f1f4eb8-17a3-4e77-b359-e47e4bbb9ecf', 'Policy Update', 'Generated notification message', false), ('0dcb33b6-6a67-40db-b63f-4788f32890b9', 'Request Update', 'Generated notification message', true), ('6fcccc21-898d-41f0-8a6b-c85894ca50c9', 'System Maintenance', 'Generated notification message', false), ('5cd15a13-3854-40fe-b029-939db99a3481', 'Request Update', 'Generated notification message', true), ('fa7a2e9e-9590-425c-a80f-5b4add1bb8dc', 'System Maintenance', 'Generated notification message', false), ('22b96265-975c-4bec-a908-3d04bd237fd3', 'Request Update', 'Generated notification message', true), ('82d7a493-1242-47ac-bb05-e16c4326f00e', 'System Maintenance', 'Generated notification message', true), ('ac3091d6-a49b-4162-83ac-6aba185f6894', 'Policy Update', 'Generated notification message', false), ('57bfd0c8-deb9-4d56-9fa1-add2c6246a26', 'Policy Update', 'Generated notification message', true), ('3a8febc3-0af3-43a4-9c0c-c0e4fd5b168d', 'System Maintenance', 'Generated notification message', false), ('2df7520a-e617-491e-a4ce-4594ea2d30ef', 'Policy Update', 'Generated notification message', false), ('0911c959-8399-4583-b154-1250ecf41f63', 'Welcome', 'Generated notification message', false), ('61f02dd6-b98b-42d0-a1da-90d414575aad', 'Welcome', 'Generated notification message', true), ('d72316f5-21b5-44fc-bff2-34fd957131c2', 'Request Update', 'Generated notification message', true), ('383c377e-4b6a-49f8-a4a3-32cdd4504387', 'Welcome', 'Generated notification message', true), ('46bcef6c-9f49-4f22-89aa-1f755b57dea4', 'Welcome', 'Generated notification message', true), ('f7d6e307-f488-4786-ac71-0d1c474cd8e9', 'Policy Update', 'Generated notification message', false), ('22b96265-975c-4bec-a908-3d04bd237fd3', 'System Maintenance', 'Generated notification message', true), ('87f2dec9-e680-4512-b5a0-3d41e11c0257', 'Welcome', 'Generated notification message', false), ('baaafb44-6e56-42c5-ba39-a467a941acff', 'System Maintenance', 'Generated notification message', true), ('72b9e80e-9c19-403b-8112-a560242438cd', 'Policy Update', 'Generated notification message', true), ('94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', 'Request Update', 'Generated notification message', false), ('bfa4bfc0-f623-4356-b499-8412142c8775', 'Policy Update', 'Generated notification message', true), ('469141ac-8d7b-4f30-809a-2c6f86d9baa0', 'System Maintenance', 'Generated notification message', true), ('3a8febc3-0af3-43a4-9c0c-c0e4fd5b168d', 'Request Update', 'Generated notification message', true), ('543f9b04-fea5-4a71-83bd-f6911063ff90', 'Welcome', 'Generated notification message', false), ('d053a295-946b-41e3-9b39-e5992ff18b85', 'Welcome', 'Generated notification message', true), ('81ad28f1-98c0-497d-adf3-629396e34faa', 'System Maintenance', 'Generated notification message', false), ('960e494c-1751-4a33-9469-64d3b17d94f0', 'Welcome', 'Generated notification message', false), ('f7d6e307-f488-4786-ac71-0d1c474cd8e9', 'Welcome', 'Generated notification message', false), ('a538f6e8-18c3-4e09-82cd-9c52954f35ce', 'Welcome', 'Generated notification message', false);

-- 17. Requests & Leave Requests
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('b28d5f0c-bf1e-47ac-b866-4307a0c6a8c4', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Leave', 'Leave Request #0');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('b28d5f0c-bf1e-47ac-b866-4307a0c6a8c4', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2021-10-25', '2021-11-02', 'Reason #0', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('b2d7f594-b2a0-4ad2-a21f-3810e6982e03', '87f2dec9-e680-4512-b5a0-3d41e11c0257', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Leave', 'Leave Request #1');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('b2d7f594-b2a0-4ad2-a21f-3810e6982e03', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2022-08-15', '2022-08-23', 'Reason #1', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('b55bb1f5-e818-4bab-bbef-41dbd5042afa', '12fe531c-ca94-4beb-bece-d66bee2468d8', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #2');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('b55bb1f5-e818-4bab-bbef-41dbd5042afa', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Paternity'), '2024-09-17', '2024-09-23', 'Reason #2', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('2c39262e-1f15-4073-ac21-f97adfaf26ce', '68df453b-06cc-4570-84fb-646e1a184338', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Leave', 'Leave Request #3');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('2c39262e-1f15-4073-ac21-f97adfaf26ce', (SELECT leave_type_id FROM public.leave_types WHERE name = 'General Illness'), '2024-02-27', '2024-03-05', 'Reason #3', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('c5f76bbf-8940-4976-bf4a-89ecfae11371', 'df6b0675-d8e7-499c-8855-abcd4c61afc0', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Leave', 'Leave Request #4');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('c5f76bbf-8940-4976-bf4a-89ecfae11371', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2024-10-15', '2024-10-17', 'Reason #4', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('5dc3bf1e-57b7-455e-a216-4f1fd635da18', 'f741c042-05dc-425c-9c26-661d9a2c6174', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #5');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('5dc3bf1e-57b7-455e-a216-4f1fd635da18', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2020-09-21', '2020-09-29', 'Reason #5', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('640cdc13-1922-4c47-af25-cc284470c263', '835312cf-fcd8-41cf-b8ed-f109d251c362', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Leave', 'Leave Request #6');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('640cdc13-1922-4c47-af25-cc284470c263', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Paternity'), '2025-08-02', '2025-08-09', 'Reason #6', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('b1f252f1-7e76-4748-8b72-629a58761fcb', 'bb68c1fb-fd0c-4c1d-a1d4-7cddea66a25e', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Leave', 'Leave Request #7');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('b1f252f1-7e76-4748-8b72-629a58761fcb', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2021-04-07', '2021-04-19', 'Reason #7', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('915bc830-6266-41a6-b691-61d6d2789c29', 'c78438a2-5a57-43e2-904e-cec549315fb6', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Leave', 'Leave Request #8');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('915bc830-6266-41a6-b691-61d6d2789c29', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2025-05-16', '2025-05-22', 'Reason #8', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('f85cdec2-6149-48bc-bd74-b1e1e378f5d6', '591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #9');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('f85cdec2-6149-48bc-bd74-b1e1e378f5d6', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Paternity'), '2025-07-09', '2025-07-16', 'Reason #9', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('1732618a-a5c2-4f30-b11f-4e1579d49312', '6d608a88-517e-48ac-b2c2-e633f445f46b', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Leave', 'Leave Request #10');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('1732618a-a5c2-4f30-b11f-4e1579d49312', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2023-02-04', '2023-02-14', 'Reason #10', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('58a6da67-8a57-412d-bba8-81102e074ea8', 'd72316f5-21b5-44fc-bff2-34fd957131c2', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Leave', 'Leave Request #11');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('58a6da67-8a57-412d-bba8-81102e074ea8', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2024-05-12', '2024-05-23', 'Reason #11', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('8f747930-6e91-47bf-a549-960f459d3958', '9a7d8464-cc62-46d7-b3ab-28a153978bd2', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Leave', 'Leave Request #12');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('8f747930-6e91-47bf-a549-960f459d3958', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Paternity'), '2023-04-15', '2023-04-18', 'Reason #12', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('1a309047-6a56-4ff5-88a2-8d2b8a37de32', 'fb512a8d-5ffd-4747-8bca-8ad14f7aeebe', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Leave', 'Leave Request #13');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('1a309047-6a56-4ff5-88a2-8d2b8a37de32', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2022-09-28', '2022-10-13', 'Reason #13', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('6acf05f3-fef0-47a6-ba91-58ea8dfe2b00', '5a076111-c959-45d2-9c69-a7bb54a1581f', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Leave', 'Leave Request #14');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('6acf05f3-fef0-47a6-ba91-58ea8dfe2b00', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2022-01-13', '2022-01-16', 'Reason #14', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('3548434a-7ca0-47cf-a947-4b6e5e8c3dbd', '337a16ef-19f5-4e72-a414-9812048be8d2', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Leave', 'Leave Request #15');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('3548434a-7ca0-47cf-a947-4b6e5e8c3dbd', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2020-11-26', '2020-12-02', 'Reason #15', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('9432b6c2-2297-43e3-9e39-1d02dfb4d01f', '258dd4a8-9659-4d14-9fe5-4f787cbc1737', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #16');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('9432b6c2-2297-43e3-9e39-1d02dfb4d01f', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2025-06-13', '2025-06-26', 'Reason #16', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('4848df1e-e1f5-4172-ac18-f3960980d05b', '9f9de4d3-af49-4448-a771-d2d0ba455612', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #17');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('4848df1e-e1f5-4172-ac18-f3960980d05b', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2024-01-30', '2024-02-11', 'Reason #17', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('1a1d3085-b141-46ea-a4c8-240213c6e689', 'adcb33d3-c8e9-47b5-8dc1-3f4dfb6203dd', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Leave', 'Leave Request #18');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('1a1d3085-b141-46ea-a4c8-240213c6e689', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2024-09-14', '2024-09-17', 'Reason #18', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('44b68aeb-fb98-4807-9f6a-27bfbc83ec32', '2fb57514-1b55-4737-b2ea-ea6d7225a08f', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Leave', 'Leave Request #19');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('44b68aeb-fb98-4807-9f6a-27bfbc83ec32', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2022-07-18', '2022-07-30', 'Reason #19', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('1375ce78-7e9d-4c20-b383-df35fa952ab7', '543f9b04-fea5-4a71-83bd-f6911063ff90', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #20');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('1375ce78-7e9d-4c20-b383-df35fa952ab7', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2022-08-23', '2022-08-31', 'Reason #20', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('72bdba81-5869-4537-a379-1b455729ed57', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #21');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('72bdba81-5869-4537-a379-1b455729ed57', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Paternity'), '2022-10-16', '2022-10-28', 'Reason #21', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('74dc25df-bf74-4a0c-a954-8104d70eb6e0', '1efcd3e8-4e2b-4b62-9c11-e93ab4138e89', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #22');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('74dc25df-bf74-4a0c-a954-8104d70eb6e0', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2025-09-08', '2025-09-22', 'Reason #22', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('15fff484-5215-4080-91d5-6336f6d57b9b', '966a8046-23bf-488f-aa31-5ce0a5af3ac1', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Leave', 'Leave Request #23');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('15fff484-5215-4080-91d5-6336f6d57b9b', (SELECT leave_type_id FROM public.leave_types WHERE name = 'General Illness'), '2023-07-13', '2023-07-19', 'Reason #23', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('4e8f7def-7288-48df-81f8-8ba57ae0ddd0', 'c38f7614-899e-4cb4-aab3-a6b5dec59c8d', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Leave', 'Leave Request #24');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('4e8f7def-7288-48df-81f8-8ba57ae0ddd0', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2023-08-02', '2023-08-17', 'Reason #24', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('1221a901-c9c6-4f2f-a9b8-3dca78d6af72', 'f939bb94-c817-4b87-a117-25370e794711', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #25');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('1221a901-c9c6-4f2f-a9b8-3dca78d6af72', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2024-05-17', '2024-05-26', 'Reason #25', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('f310f3f9-594c-42d8-b651-7bcb281f07e9', '9c8e8c0f-e526-42bd-b8f2-80f17eee07b2', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #26');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('f310f3f9-594c-42d8-b651-7bcb281f07e9', (SELECT leave_type_id FROM public.leave_types WHERE name = 'General Illness'), '2020-07-15', '2020-07-23', 'Reason #26', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('d4e43efa-acc5-477e-80e7-84793eee578f', '337a16ef-19f5-4e72-a414-9812048be8d2', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Leave', 'Leave Request #27');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('d4e43efa-acc5-477e-80e7-84793eee578f', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2022-08-14', '2022-08-28', 'Reason #27', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('508eab3e-148c-4fe9-9031-8d56e3696617', 'f6c85151-899e-4487-902e-e2e81d9d0cfd', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #28');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('508eab3e-148c-4fe9-9031-8d56e3696617', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2024-03-23', '2024-04-07', 'Reason #28', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('c539566a-c2e3-4b57-9987-7ccb582d8997', '960e494c-1751-4a33-9469-64d3b17d94f0', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Leave', 'Leave Request #29');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('c539566a-c2e3-4b57-9987-7ccb582d8997', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2024-04-29', '2024-05-10', 'Reason #29', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('574f5102-ca28-4a9b-840e-758a02dccaf7', 'f26a5611-432c-4263-bcd8-c454ae0b5c79', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Leave', 'Leave Request #30');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('574f5102-ca28-4a9b-840e-758a02dccaf7', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2023-06-15', '2023-06-29', 'Reason #30', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('6fceb3eb-3340-49dc-b5d2-cc3f313657c0', '966a8046-23bf-488f-aa31-5ce0a5af3ac1', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #31');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('6fceb3eb-3340-49dc-b5d2-cc3f313657c0', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2025-06-04', '2025-06-14', 'Reason #31', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('3c7a381c-8e8b-418e-9376-6e07724d2dc3', 'ae59061a-5ac3-477a-aa7a-5d019d525221', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #32');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('3c7a381c-8e8b-418e-9376-6e07724d2dc3', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2025-04-24', '2025-04-26', 'Reason #32', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('38d596e7-7191-4e45-910a-b77eec4b8135', '0a972d48-de32-46d1-aeb8-eaa3e248be11', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Leave', 'Leave Request #33');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('38d596e7-7191-4e45-910a-b77eec4b8135', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2021-12-20', '2021-12-24', 'Reason #33', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('d1b968af-84f8-4303-9533-c8a08ef1108c', '864dafb5-dbac-4253-b1db-794b27e56c0e', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #34');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('d1b968af-84f8-4303-9533-c8a08ef1108c', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2024-05-09', '2024-05-24', 'Reason #34', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('c5929ee2-e76a-4c84-8454-610a52acec04', '568413c1-aa2f-4f8c-b735-816cd1a58368', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Leave', 'Leave Request #35');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('c5929ee2-e76a-4c84-8454-610a52acec04', (SELECT leave_type_id FROM public.leave_types WHERE name = 'General Illness'), '2021-11-30', '2021-12-11', 'Reason #35', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('4aa6c33f-49dc-4423-8523-dd56ed2323fd', '1e020116-7d9d-4b51-a86f-73c0f5b408ae', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Leave', 'Leave Request #36');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('4aa6c33f-49dc-4423-8523-dd56ed2323fd', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2025-01-10', '2025-01-20', 'Reason #36', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('f90dd4f4-709b-472f-8f16-dcd49c836914', 'd426508d-26b5-4b1e-8d91-995d59481d6f', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Leave', 'Leave Request #37');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('f90dd4f4-709b-472f-8f16-dcd49c836914', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2023-10-19', '2023-10-26', 'Reason #37', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('70d0f102-96a5-4cc1-81fd-918f05a28082', '5f757802-6550-4127-b81e-74e9d6748738', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #38');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('70d0f102-96a5-4cc1-81fd-918f05a28082', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2020-04-13', '2020-04-27', 'Reason #38', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('dbe7968a-a500-434b-ab0e-9ed950310fe0', 'b5440d7a-b818-428b-8049-001fd75e1f69', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Leave', 'Leave Request #39');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('dbe7968a-a500-434b-ab0e-9ed950310fe0', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2020-02-18', '2020-02-25', 'Reason #39', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('776a95e9-0ce2-474a-b6e0-acfa0d1214a2', '68dd7eed-cbbe-4f06-ac1c-3f99f6029e15', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Leave', 'Leave Request #40');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('776a95e9-0ce2-474a-b6e0-acfa0d1214a2', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2024-11-10', '2024-11-19', 'Reason #40', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('4027b5b1-dc4f-4382-8514-5553041850be', '6d608a88-517e-48ac-b2c2-e633f445f46b', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #41');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('4027b5b1-dc4f-4382-8514-5553041850be', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Paternity'), '2020-02-17', '2020-02-19', 'Reason #41', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('436f1dec-af88-4f9f-b83a-758e578a682f', '16aabf39-d0c1-4e70-b701-1f36dddb45a8', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Leave', 'Leave Request #42');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('436f1dec-af88-4f9f-b83a-758e578a682f', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2020-08-19', '2020-08-23', 'Reason #42', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('a3e55117-6016-49e2-86af-0b92d031a755', '453213f7-1a7f-464b-8104-2b96e6d67a39', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Leave', 'Leave Request #43');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('a3e55117-6016-49e2-86af-0b92d031a755', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2025-03-29', '2025-04-08', 'Reason #43', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('1516492d-56ce-49f0-9b3d-886b36930ddc', '8d470b03-ead5-4898-b373-d61a64bf50eb', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #44');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('1516492d-56ce-49f0-9b3d-886b36930ddc', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2020-07-21', '2020-07-30', 'Reason #44', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('b37d18cc-0345-40f9-ada5-876080a03911', '68df453b-06cc-4570-84fb-646e1a184338', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Leave', 'Leave Request #45');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('b37d18cc-0345-40f9-ada5-876080a03911', (SELECT leave_type_id FROM public.leave_types WHERE name = 'General Illness'), '2024-09-16', '2024-09-18', 'Reason #45', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('3b73cb24-860e-4ffc-a40a-9b7901ed74bf', 'b35fc239-0fdf-4454-92e0-ffc4b7d263a5', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Leave', 'Leave Request #46');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('3b73cb24-860e-4ffc-a40a-9b7901ed74bf', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2023-10-17', '2023-10-28', 'Reason #46', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('16f34b89-f58a-405d-bb49-1867fc4103fe', '735e6ab2-1449-4c45-bbc6-a5996b555bd0', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #47');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('16f34b89-f58a-405d-bb49-1867fc4103fe', (SELECT leave_type_id FROM public.leave_types WHERE name = 'General Illness'), '2025-03-03', '2025-03-16', 'Reason #47', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('544f6291-67b2-404f-9991-64e7d2c8119e', '8f1934e2-9e45-44cd-962a-d19ae5e87d4f', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Leave', 'Leave Request #48');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('544f6291-67b2-404f-9991-64e7d2c8119e', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Domestic Calamity'), '2022-03-14', '2022-03-18', 'Reason #48', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('702af9ea-041d-43d7-b8e5-96d30517dcba', '520e0743-700a-42e4-b081-2161dcafac52', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Leave', 'Leave Request #49');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('702af9ea-041d-43d7-b8e5-96d30517dcba', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2022-04-06', '2022-04-16', 'Reason #49', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('662daff9-92e0-40ee-9807-912fb665a38a', 'baaafb44-6e56-42c5-ba39-a467a941acff', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Leave', 'Leave Request #50');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('662daff9-92e0-40ee-9807-912fb665a38a', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2021-08-25', '2021-09-08', 'Reason #50', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('720a0d47-9762-431b-9772-23fb34e78915', 'ef4d0fe8-6487-4224-bdce-0b8dc6ae8292', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Leave', 'Leave Request #51');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('720a0d47-9762-431b-9772-23fb34e78915', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Unpaid Leave'), '2022-11-30', '2022-12-15', 'Reason #51', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('fe87508c-b423-452b-93d0-2cb1704d38d9', '2eb759e2-6bcc-4196-9d70-7ea34f689380', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Leave', 'Leave Request #52');
INSERT INTO public.leave_requests (request_id, leave_type_id, start_date, end_date, reason, is_paid) VALUES ('fe87508c-b423-452b-93d0-2cb1704d38d9', (SELECT leave_type_id FROM public.leave_types WHERE name = 'Maternity'), '2024-01-25', '2024-02-05', 'Reason #52', true);

-- 18. Requests & Vacation Requests
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('a1b16882-2f59-4c69-a7d4-2de64a021081', 'b35fc239-0fdf-4454-92e0-ffc4b7d263a5', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Vacation', 'Vacation Request #0');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('a1b16882-2f59-4c69-a7d4-2de64a021081', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Legal Vacation'), '2021-12-23', '2021-12-28', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('cbfdedcf-fd13-44e6-8448-8845a6eaf49a', 'e0e4add6-4ea2-4bce-9b68-eec5c56b9744', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation Request #1');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('cbfdedcf-fd13-44e6-8448-8845a6eaf49a', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Collective Vacation'), '2024-02-16', '2024-03-01', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('cda7e492-71db-4cf2-a237-2f679f5189b4', '3cc06bae-36d3-4e9e-a661-a56f32705925', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation Request #2');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('cda7e492-71db-4cf2-a237-2f679f5189b4', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Compensatory Days'), '2020-12-20', '2020-12-28', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('85117e61-3eff-4fe7-87f2-8f5fe73955d9', '7fcf647c-d1c8-43bb-9da1-1a2c5b6c6852', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Vacation', 'Vacation Request #3');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('85117e61-3eff-4fe7-87f2-8f5fe73955d9', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Legal Vacation'), '2023-07-05', '2023-07-23', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('9d7ecbf5-8a5e-4a7d-9a9b-de9cc3728719', 'f741c042-05dc-425c-9c26-661d9a2c6174', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Vacation', 'Vacation Request #4');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('9d7ecbf5-8a5e-4a7d-9a9b-de9cc3728719', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Vacation Advance'), '2021-09-17', '2021-10-03', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('0b7ebe50-bcc8-4461-88c9-0307ff78aa9b', 'c38f7614-899e-4cb4-aab3-a6b5dec59c8d', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Vacation', 'Vacation Request #5');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('0b7ebe50-bcc8-4461-88c9-0307ff78aa9b', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Collective Vacation'), '2021-10-19', '2021-11-07', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('c4e0a682-96b1-40eb-ad26-bf814a4bffc3', '5ebeadd3-6b4c-422d-b542-bb0cf9451d99', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation Request #6');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('c4e0a682-96b1-40eb-ad26-bf814a4bffc3', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Collective Vacation'), '2020-01-08', '2020-01-19', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('e4166ebd-c09e-4274-b4fa-8757cd6613dc', 'f53b8c3d-2752-4744-9a4b-269b65e9120f', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation Request #7');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('e4166ebd-c09e-4274-b4fa-8757cd6613dc', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Sabbatical'), '2023-11-19', '2023-12-03', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('56972a2d-28f1-4c1d-9863-76d1a5ae9251', '517c54d0-11e6-450f-92ae-12782859d481', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Vacation', 'Vacation Request #8');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('56972a2d-28f1-4c1d-9863-76d1a5ae9251', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Vacation Advance'), '2021-04-20', '2021-05-10', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('af2cedac-43a7-4c3e-b65c-94f595e8a1c3', '77d9b3a2-4296-432f-bc1a-10e0151fa8ba', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Vacation', 'Vacation Request #9');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('af2cedac-43a7-4c3e-b65c-94f595e8a1c3', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Sabbatical'), '2023-02-13', '2023-02-19', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('439d22fc-6a95-4b2f-9d7d-4c57d6bc479b', 'c78438a2-5a57-43e2-904e-cec549315fb6', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Vacation', 'Vacation Request #10');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('439d22fc-6a95-4b2f-9d7d-4c57d6bc479b', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Collective Vacation'), '2021-10-15', '2021-11-02', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('fc5aab2c-f5b9-4917-9d75-8e011a34d835', 'ddab7d7c-23cd-48fc-85fc-b888ec57acc3', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Vacation', 'Vacation Request #11');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('fc5aab2c-f5b9-4917-9d75-8e011a34d835', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Compensatory Days'), '2020-05-19', '2020-06-08', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('620dd763-00ea-44c2-ad38-f988b8267a78', '568f0d7e-55eb-46bf-a8b9-96619bb875bc', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation Request #12');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('620dd763-00ea-44c2-ad38-f988b8267a78', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Collective Vacation'), '2020-10-16', '2020-10-21', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('b6a4b962-e725-45d9-a647-a5e5f67c08c3', '5deae309-874e-4c48-9362-e44f9cbf8bcd', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Vacation', 'Vacation Request #13');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('b6a4b962-e725-45d9-a647-a5e5f67c08c3', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Vacation Advance'), '2025-08-24', '2025-09-10', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('a60c98c8-5372-44bf-9c7a-6d4cedb70f7d', '9018fb09-9eb7-47fb-84fe-1949f159227f', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation Request #14');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('a60c98c8-5372-44bf-9c7a-6d4cedb70f7d', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Legal Vacation'), '2024-05-05', '2024-05-19', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('3dc16fc6-e50e-46da-af3f-3ffc201c7296', '9a7d8464-cc62-46d7-b3ab-28a153978bd2', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Vacation', 'Vacation Request #15');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('3dc16fc6-e50e-46da-af3f-3ffc201c7296', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Legal Vacation'), '2025-07-27', '2025-08-10', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('e5f5b80d-b4af-4419-ab68-95e371922f1f', 'a423ca3f-595c-4b7c-9538-51e8caedab4f', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Vacation', 'Vacation Request #16');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('e5f5b80d-b4af-4419-ab68-95e371922f1f', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Collective Vacation'), '2024-08-15', '2024-08-23', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('764167a7-4424-4fb5-ba60-0e713afc57a1', 'fb08ac2f-7574-4f9d-882e-bafb489ab6c6', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation Request #17');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('764167a7-4424-4fb5-ba60-0e713afc57a1', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Collective Vacation'), '2024-08-29', '2024-09-09', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('ba6c5ec3-9391-4c44-84df-ac6dfcbfd262', '066b28fb-1d69-4502-9101-e4ee3f7fa675', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation Request #18');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('ba6c5ec3-9391-4c44-84df-ac6dfcbfd262', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Legal Vacation'), '2022-08-01', '2022-08-15', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('d84afb24-3ecd-4120-96f1-3174656979f4', 'ac3091d6-a49b-4162-83ac-6aba185f6894', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation Request #19');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('d84afb24-3ecd-4120-96f1-3174656979f4', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Vacation Advance'), '2023-10-07', '2023-10-15', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('c37a0bfa-26b5-41f1-b01e-40e6fd4df402', 'c662243f-9da5-492a-988d-213f8d4d0164', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Vacation', 'Vacation Request #20');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('c37a0bfa-26b5-41f1-b01e-40e6fd4df402', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Legal Vacation'), '2025-12-24', '2026-01-07', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('0fa9d472-4ced-41ec-a100-166829bc6ee2', '94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation Request #21');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('0fa9d472-4ced-41ec-a100-166829bc6ee2', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Compensatory Days'), '2023-05-17', '2023-05-28', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('639f42c7-fc16-4447-97d0-8068b0f7fa03', 'c6fe46f0-d714-49e6-84b2-0d19da6bc82f', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Vacation', 'Vacation Request #22');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('639f42c7-fc16-4447-97d0-8068b0f7fa03', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Collective Vacation'), '2023-08-16', '2023-08-27', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('0d63ded6-945e-47ff-8422-b537f41acfb9', '80ec8511-dfb5-469e-8040-76f9025eb0b3', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation Request #23');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('0d63ded6-945e-47ff-8422-b537f41acfb9', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Collective Vacation'), '2024-02-14', '2024-03-01', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('b292105e-0cc9-4916-8b53-02917f734bfa', '94bd1d3b-d54f-42ff-889c-fc7d23c6f1e5', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Vacation', 'Vacation Request #24');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('b292105e-0cc9-4916-8b53-02917f734bfa', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Vacation Advance'), '2022-02-21', '2022-02-26', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('c5242f9f-089d-4a3e-8126-70ee831d477f', 'c8e99b37-c722-4216-b011-a2a4159d348c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Vacation', 'Vacation Request #25');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('c5242f9f-089d-4a3e-8126-70ee831d477f', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Compensatory Days'), '2020-02-16', '2020-03-07', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('58cc6484-e1ad-47d0-b975-2c6844afc6e8', '82d7a493-1242-47ac-bb05-e16c4326f00e', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Vacation', 'Vacation Request #26');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('58cc6484-e1ad-47d0-b975-2c6844afc6e8', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Compensatory Days'), '2023-04-07', '2023-04-18', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('a8a04b8d-9973-4977-ab52-cb9a95f4f08a', '2eb759e2-6bcc-4196-9d70-7ea34f689380', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Vacation', 'Vacation Request #27');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('a8a04b8d-9973-4977-ab52-cb9a95f4f08a', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Sabbatical'), '2024-08-26', '2024-09-10', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('239076ca-3e4e-437f-908b-08b812dfc9b8', '864dafb5-dbac-4253-b1db-794b27e56c0e', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Vacation', 'Vacation Request #28');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('239076ca-3e4e-437f-908b-08b812dfc9b8', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Legal Vacation'), '2021-06-28', '2021-07-09', true);
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('4861183b-5ad0-40d3-94e6-f48daf8550c4', 'df25c42b-703e-48e4-b270-cb3f95e8e2c0', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Vacation', 'Vacation Request #29');
INSERT INTO public.vacation_requests (request_id, vacation_type_id, start_date, end_date, is_paid) VALUES ('4861183b-5ad0-40d3-94e6-f48daf8550c4', (SELECT vacation_type_id FROM public.vacation_types WHERE name = 'Legal Vacation'), '2023-06-21', '2023-06-26', true);

-- 19. Requests & Certificate Requests
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('6f14f03b-add0-4cb5-b397-08d09328e802', '77d9b3a2-4296-432f-bc1a-10e0151fa8ba', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Certificate', 'Certificate Request #0');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('6f14f03b-add0-4cb5-b397-08d09328e802', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Income Certificate'), 'Note for cert #0');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('79dfc832-4bd1-4886-8f5e-35593f73d8c4', '4a616f6b-ad5c-4509-9ca8-d7e4cd39d520', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Certificate', 'Certificate Request #1');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('79dfc832-4bd1-4886-8f5e-35593f73d8c4', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Recommendation Letter'), 'Note for cert #1');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('0a4a5093-b19e-4231-b6b7-b44ede542c75', 'd1ad4abe-5fa5-4ead-94b2-8e7a82e77774', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Certificate', 'Certificate Request #2');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('0a4a5093-b19e-4231-b6b7-b44ede542c75', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Recommendation Letter'), 'Note for cert #2');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('e9476ce1-5c60-4e87-9346-92221e6efd66', '2fb57514-1b55-4737-b2ea-ea6d7225a08f', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Certificate', 'Certificate Request #3');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('e9476ce1-5c60-4e87-9346-92221e6efd66', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Income Certificate'), 'Note for cert #3');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('dba1b488-66d3-477f-ba8b-a5f8f44af661', 'f768f1e4-0c2f-4eb0-ada5-dc614dec582f', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Certificate', 'Certificate Request #4');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('dba1b488-66d3-477f-ba8b-a5f8f44af661', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Income Certificate'), 'Note for cert #4');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('c65fd707-7b49-4bef-92d0-7a1ce50478a6', '9f9de4d3-af49-4448-a771-d2d0ba455612', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Certificate', 'Certificate Request #5');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('c65fd707-7b49-4bef-92d0-7a1ce50478a6', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Income Certificate'), 'Note for cert #5');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('38371263-17ec-4f95-bcf6-d51918c37edd', '7b0f328a-f264-4728-8122-2925c2077b87', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Certificate', 'Certificate Request #6');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('38371263-17ec-4f95-bcf6-d51918c37edd', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Income Certificate'), 'Note for cert #6');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('e1481490-d7af-4f42-b6e3-e970b6454f26', '517c54d0-11e6-450f-92ae-12782859d481', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Certificate', 'Certificate Request #7');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('e1481490-d7af-4f42-b6e3-e970b6454f26', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Functions Certificate'), 'Note for cert #7');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('97a7f04a-0d79-4630-9294-e613ee9043cc', '81ad28f1-98c0-497d-adf3-629396e34faa', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Certificate', 'Certificate Request #8');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('97a7f04a-0d79-4630-9294-e613ee9043cc', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Recommendation Letter'), 'Note for cert #8');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('726bad15-3071-448f-99c1-336837beb46d', 'c662243f-9da5-492a-988d-213f8d4d0164', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Certificate', 'Certificate Request #9');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('726bad15-3071-448f-99c1-336837beb46d', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Bank Certificate'), 'Note for cert #9');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('8dbb7cdd-40e7-4b63-bf54-7fbd18596427', '8ce66417-211e-4a89-8d4e-074020ee6cd2', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Certificate', 'Certificate Request #10');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('8dbb7cdd-40e7-4b63-bf54-7fbd18596427', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Employment Certificate'), 'Note for cert #10');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('9d209dd0-b014-4d16-8365-a94773c70c7a', 'bee3a61a-9f0b-469e-acdf-19df15b47b1c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'Certificate', 'Certificate Request #11');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('9d209dd0-b014-4d16-8365-a94773c70c7a', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Bank Certificate'), 'Note for cert #11');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('85ee10c3-b405-403d-9c24-3fdc2c587d45', 'a538f6e8-18c3-4e09-82cd-9c52954f35ce', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Certificate', 'Certificate Request #12');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('85ee10c3-b405-403d-9c24-3fdc2c587d45', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Functions Certificate'), 'Note for cert #12');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('ba404ffa-c7b2-49f9-b9ef-6d6f0f08d1d6', 'b744dceb-5c80-4ad0-be62-febb9622703b', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Certificate', 'Certificate Request #13');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('ba404ffa-c7b2-49f9-b9ef-6d6f0f08d1d6', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Recommendation Letter'), 'Note for cert #13');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('419c4fd2-6d80-49c4-b780-46f8eaf9d4d6', 'ac3091d6-a49b-4162-83ac-6aba185f6894', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Pending'), 'Certificate', 'Certificate Request #14');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('419c4fd2-6d80-49c4-b780-46f8eaf9d4d6', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Functions Certificate'), 'Note for cert #14');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('c1ff0281-6dd0-4937-b71b-b0d101c3b47b', '9018fb09-9eb7-47fb-84fe-1949f159227f', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Certificate', 'Certificate Request #15');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('c1ff0281-6dd0-4937-b71b-b0d101c3b47b', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Recommendation Letter'), 'Note for cert #15');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('ef3ee108-0c3f-4a0a-8c50-0c8e81315a66', 'b744dceb-5c80-4ad0-be62-febb9622703b', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'Certificate', 'Certificate Request #16');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('ef3ee108-0c3f-4a0a-8c50-0c8e81315a66', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Employment Certificate'), 'Note for cert #16');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('4164a8db-16a9-4ffa-a690-cba5c3338284', '066b28fb-1d69-4502-9101-e4ee3f7fa675', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Cancelled'), 'Certificate', 'Certificate Request #17');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('4164a8db-16a9-4ffa-a690-cba5c3338284', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Employment Certificate'), 'Note for cert #17');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('e497c083-6984-45f0-8ef5-bba3859a2ef4', 'ddab7d7c-23cd-48fc-85fc-b888ec57acc3', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Certificate', 'Certificate Request #18');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('e497c083-6984-45f0-8ef5-bba3859a2ef4', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Employment Certificate'), 'Note for cert #18');
INSERT INTO public.requests (request_id, employee_id, status_id, request_type, description) VALUES ('0ab618c5-d2b3-4d1a-8e0d-a0f0ba4aa399', 'b35fc239-0fdf-4454-92e0-ffc4b7d263a5', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Under Review'), 'Certificate', 'Certificate Request #19');
INSERT INTO public.certificate_requests (request_id, certificate_type_id, notes) VALUES ('0ab618c5-d2b3-4d1a-8e0d-a0f0ba4aa399', (SELECT certificate_type_id FROM public.certificate_types WHERE name = 'Bank Certificate'), 'Note for cert #19');

-- 20. Approvals
INSERT INTO public.approvals (request_id, approver_id, status_id, comments) VALUES ('b28d5f0c-bf1e-47ac-b866-4307a0c6a8c4', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('b2d7f594-b2a0-4ad2-a21f-3810e6982e03', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('b1f252f1-7e76-4748-8b72-629a58761fcb', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('58a6da67-8a57-412d-bba8-81102e074ea8', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('8f747930-6e91-47bf-a549-960f459d3958', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('1a309047-6a56-4ff5-88a2-8d2b8a37de32', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('6acf05f3-fef0-47a6-ba91-58ea8dfe2b00', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('1a1d3085-b141-46ea-a4c8-240213c6e689', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('4e8f7def-7288-48df-81f8-8ba57ae0ddd0', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('d4e43efa-acc5-477e-80e7-84793eee578f', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('38d596e7-7191-4e45-910a-b77eec4b8135', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('f90dd4f4-709b-472f-8f16-dcd49c836914', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('436f1dec-af88-4f9f-b83a-758e578a682f', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('544f6291-67b2-404f-9991-64e7d2c8119e', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('702af9ea-041d-43d7-b8e5-96d30517dcba', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('662daff9-92e0-40ee-9807-912fb665a38a', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('fe87508c-b423-452b-93d0-2cb1704d38d9', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('a1b16882-2f59-4c69-a7d4-2de64a021081', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('b6a4b962-e725-45d9-a647-a5e5f67c08c3', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('c37a0bfa-26b5-41f1-b01e-40e6fd4df402', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('b292105e-0cc9-4916-8b53-02917f734bfa', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('c5242f9f-089d-4a3e-8126-70ee831d477f', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('58cc6484-e1ad-47d0-b975-2c6844afc6e8', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('0a4a5093-b19e-4231-b6b7-b44ede542c75', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('c65fd707-7b49-4bef-92d0-7a1ce50478a6', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('e1481490-d7af-4f42-b6e3-e970b6454f26', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('726bad15-3071-448f-99c1-336837beb46d', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('9d209dd0-b014-4d16-8365-a94773c70c7a', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Approved'), 'System Auto-comment'), ('ba404ffa-c7b2-49f9-b9ef-6d6f0f08d1d6', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment'), ('ef3ee108-0c3f-4a0a-8c50-0c8e81315a66', '8ab48564-ed6a-4866-bc75-64275052c44c', (SELECT request_status_id FROM public.request_statuses WHERE name = 'Rejected'), 'System Auto-comment');

-- 21. Attached Documents
INSERT INTO public.attached_documents (request_id, uploaded_by_id, file_name, file_url) VALUES ('ef3ee108-0c3f-4a0a-8c50-0c8e81315a66', 'bee3a61a-9f0b-469e-acdf-19df15b47b1c', 'file_0.pdf', 'http://files.hexalink.com/file_0.pdf'), ('38371263-17ec-4f95-bcf6-d51918c37edd', '3bb9ac54-8021-4fb8-9c34-a2fc346614af', 'file_1.pdf', 'http://files.hexalink.com/file_1.pdf'), ('239076ca-3e4e-437f-908b-08b812dfc9b8', '6d608a88-517e-48ac-b2c2-e633f445f46b', 'file_2.pdf', 'http://files.hexalink.com/file_2.pdf'), ('640cdc13-1922-4c47-af25-cc284470c263', '9018fb09-9eb7-47fb-84fe-1949f159227f', 'file_3.pdf', 'http://files.hexalink.com/file_3.pdf'), ('639f42c7-fc16-4447-97d0-8068b0f7fa03', '066b28fb-1d69-4502-9101-e4ee3f7fa675', 'file_4.pdf', 'http://files.hexalink.com/file_4.pdf'), ('4861183b-5ad0-40d3-94e6-f48daf8550c4', 'bb68c1fb-fd0c-4c1d-a1d4-7cddea66a25e', 'file_5.pdf', 'http://files.hexalink.com/file_5.pdf'), ('9d7ecbf5-8a5e-4a7d-9a9b-de9cc3728719', '77d9b3a2-4296-432f-bc1a-10e0151fa8ba', 'file_6.pdf', 'http://files.hexalink.com/file_6.pdf'), ('9d209dd0-b014-4d16-8365-a94773c70c7a', '591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', 'file_7.pdf', 'http://files.hexalink.com/file_7.pdf'), ('97a7f04a-0d79-4630-9294-e613ee9043cc', 'fb9956e2-07f3-4627-bff5-8c13b8dd346b', 'file_8.pdf', 'http://files.hexalink.com/file_8.pdf'), ('620dd763-00ea-44c2-ad38-f988b8267a78', '18bb5752-4f65-4a80-92ac-90fc0defc14f', 'file_9.pdf', 'http://files.hexalink.com/file_9.pdf'), ('4e8f7def-7288-48df-81f8-8ba57ae0ddd0', '8904a6b4-a958-4c3d-a589-2b35a9866ad3', 'file_10.pdf', 'http://files.hexalink.com/file_10.pdf'), ('776a95e9-0ce2-474a-b6e0-acfa0d1214a2', '87f2dec9-e680-4512-b5a0-3d41e11c0257', 'file_11.pdf', 'http://files.hexalink.com/file_11.pdf'), ('fc5aab2c-f5b9-4917-9d75-8e011a34d835', 'f7cec624-a67d-46d9-85da-2d8445fe6b62', 'file_12.pdf', 'http://files.hexalink.com/file_12.pdf'), ('8f747930-6e91-47bf-a549-960f459d3958', '591730fc-5dfb-40bd-bb9f-fa2d6ca8b7c1', 'file_13.pdf', 'http://files.hexalink.com/file_13.pdf'), ('ba6c5ec3-9391-4c44-84df-ac6dfcbfd262', '779412db-d4ac-4877-9569-8b0997eebed1', 'file_14.pdf', 'http://files.hexalink.com/file_14.pdf'), ('dbe7968a-a500-434b-ab0e-9ed950310fe0', 'a329b25c-2ccb-44d6-82ff-f0df72fcc6c5', 'file_15.pdf', 'http://files.hexalink.com/file_15.pdf'), ('ba6c5ec3-9391-4c44-84df-ac6dfcbfd262', '54ab1f4e-b841-4f1d-a737-b26afb11728f', 'file_16.pdf', 'http://files.hexalink.com/file_16.pdf'), ('f310f3f9-594c-42d8-b651-7bcb281f07e9', '2b02e017-625e-4ea5-bbb4-fa23b2cd07f2', 'file_17.pdf', 'http://files.hexalink.com/file_17.pdf'), ('0b7ebe50-bcc8-4461-88c9-0307ff78aa9b', '77f3cfe1-6040-44a4-b3bc-bfdfc234131c', 'file_18.pdf', 'http://files.hexalink.com/file_18.pdf'), ('6fceb3eb-3340-49dc-b5d2-cc3f313657c0', '7955fa69-9edc-40bf-ad38-09956bb6cfd4', 'file_19.pdf', 'http://files.hexalink.com/file_19.pdf'), ('776a95e9-0ce2-474a-b6e0-acfa0d1214a2', '438706d9-6ac5-4ad9-af46-2ebed14f54f9', 'file_20.pdf', 'http://files.hexalink.com/file_20.pdf'), ('0b7ebe50-bcc8-4461-88c9-0307ff78aa9b', '5f757802-6550-4127-b81e-74e9d6748738', 'file_21.pdf', 'http://files.hexalink.com/file_21.pdf'), ('a8a04b8d-9973-4977-ab52-cb9a95f4f08a', '830350d2-1904-48fd-937a-af37134a7071', 'file_22.pdf', 'http://files.hexalink.com/file_22.pdf'), ('f85cdec2-6149-48bc-bd74-b1e1e378f5d6', '4a616f6b-ad5c-4509-9ca8-d7e4cd39d520', 'file_23.pdf', 'http://files.hexalink.com/file_23.pdf'), ('e9476ce1-5c60-4e87-9346-92221e6efd66', '8218e591-ca4e-4c40-a66f-286c0d980528', 'file_24.pdf', 'http://files.hexalink.com/file_24.pdf'), ('d1b968af-84f8-4303-9533-c8a08ef1108c', '9f009394-74f7-438d-a072-8c2f2e0a3130', 'file_25.pdf', 'http://files.hexalink.com/file_25.pdf'), ('dbe7968a-a500-434b-ab0e-9ed950310fe0', 'c38f7614-899e-4cb4-aab3-a6b5dec59c8d', 'file_26.pdf', 'http://files.hexalink.com/file_26.pdf'), ('6f14f03b-add0-4cb5-b397-08d09328e802', 'bee3a61a-9f0b-469e-acdf-19df15b47b1c', 'file_27.pdf', 'http://files.hexalink.com/file_27.pdf'), ('a60c98c8-5372-44bf-9c7a-6d4cedb70f7d', '04ebbfb7-db73-4c1c-890d-ee78c5ad7bf0', 'file_28.pdf', 'http://files.hexalink.com/file_28.pdf'), ('cda7e492-71db-4cf2-a237-2f679f5189b4', '7afbe7e0-9d31-45ff-86ea-1ce6f96cd9d7', 'file_29.pdf', 'http://files.hexalink.com/file_29.pdf'), ('3dc16fc6-e50e-46da-af3f-3ffc201c7296', '1de663a2-2b10-411c-9232-99004ca7edf8', 'file_30.pdf', 'http://files.hexalink.com/file_30.pdf'), ('d84afb24-3ecd-4120-96f1-3174656979f4', '7fcf647c-d1c8-43bb-9da1-1a2c5b6c6852', 'file_31.pdf', 'http://files.hexalink.com/file_31.pdf'), ('0b7ebe50-bcc8-4461-88c9-0307ff78aa9b', '42e39dd1-06a3-4848-bc97-f808b76f5cb5', 'file_32.pdf', 'http://files.hexalink.com/file_32.pdf'), ('cbfdedcf-fd13-44e6-8448-8845a6eaf49a', 'f741c042-05dc-425c-9c26-661d9a2c6174', 'file_33.pdf', 'http://files.hexalink.com/file_33.pdf'), ('b1f252f1-7e76-4748-8b72-629a58761fcb', '7955fa69-9edc-40bf-ad38-09956bb6cfd4', 'file_34.pdf', 'http://files.hexalink.com/file_34.pdf'), ('dba1b488-66d3-477f-ba8b-a5f8f44af661', 'd8370fb4-308a-433e-991f-6e0fc8354140', 'file_35.pdf', 'http://files.hexalink.com/file_35.pdf'), ('544f6291-67b2-404f-9991-64e7d2c8119e', '966a8046-23bf-488f-aa31-5ce0a5af3ac1', 'file_36.pdf', 'http://files.hexalink.com/file_36.pdf'), ('c37a0bfa-26b5-41f1-b01e-40e6fd4df402', '8d470b03-ead5-4898-b373-d61a64bf50eb', 'file_37.pdf', 'http://files.hexalink.com/file_37.pdf'), ('a8a04b8d-9973-4977-ab52-cb9a95f4f08a', '0ff0c276-9181-4355-bcfc-aeb890af6926', 'file_38.pdf', 'http://files.hexalink.com/file_38.pdf'), ('0a4a5093-b19e-4231-b6b7-b44ede542c75', '0a3d61d3-a5ea-4b82-90f5-6a4b147ea0bf', 'file_39.pdf', 'http://files.hexalink.com/file_39.pdf'), ('4848df1e-e1f5-4172-ac18-f3960980d05b', 'f7cec624-a67d-46d9-85da-2d8445fe6b62', 'file_40.pdf', 'http://files.hexalink.com/file_40.pdf'), ('639f42c7-fc16-4447-97d0-8068b0f7fa03', '2db46bc8-8fd1-407f-bbef-404374d4aedf', 'file_41.pdf', 'http://files.hexalink.com/file_41.pdf'), ('e497c083-6984-45f0-8ef5-bba3859a2ef4', '16aabf39-d0c1-4e70-b701-1f36dddb45a8', 'file_42.pdf', 'http://files.hexalink.com/file_42.pdf'), ('239076ca-3e4e-437f-908b-08b812dfc9b8', 'c662243f-9da5-492a-988d-213f8d4d0164', 'file_43.pdf', 'http://files.hexalink.com/file_43.pdf'), ('d84afb24-3ecd-4120-96f1-3174656979f4', '966a8046-23bf-488f-aa31-5ce0a5af3ac1', 'file_44.pdf', 'http://files.hexalink.com/file_44.pdf'), ('1375ce78-7e9d-4c20-b383-df35fa952ab7', 'd053a295-946b-41e3-9b39-e5992ff18b85', 'file_45.pdf', 'http://files.hexalink.com/file_45.pdf'), ('a60c98c8-5372-44bf-9c7a-6d4cedb70f7d', '0ff0c276-9181-4355-bcfc-aeb890af6926', 'file_46.pdf', 'http://files.hexalink.com/file_46.pdf'), ('e9476ce1-5c60-4e87-9346-92221e6efd66', 'fb512a8d-5ffd-4747-8bca-8ad14f7aeebe', 'file_47.pdf', 'http://files.hexalink.com/file_47.pdf'), ('4861183b-5ad0-40d3-94e6-f48daf8550c4', 'cd10c9b4-e685-4fdd-a6fd-eeac8254d089', 'file_48.pdf', 'http://files.hexalink.com/file_48.pdf'), ('fe87508c-b423-452b-93d0-2cb1704d38d9', 'ee6b8055-4906-428b-a054-2210f507a6ed', 'file_49.pdf', 'http://files.hexalink.com/file_49.pdf');

-- 22. Password Reset Tokens
INSERT INTO public.password_reset_tokens (employee_id, token, email, expires_at) VALUES ('f768f1e4-0c2f-4eb0-ada5-dc614dec582f', 'token_8f35010c-c52c-4168-9c52-e4a43fbe04d7', 'sofia.smith114@hexalink.com', '2025-12-14 19:12:37'), ('c8e99b37-c722-4216-b011-a2a4159d348c', 'token_4d21cc08-4568-4aaf-a855-fbac478d5662', 'jennifer.martinez81@hexalink.com', '2025-12-14 19:12:37'), ('bee3a61a-9f0b-469e-acdf-19df15b47b1c', 'token_e97cc6de-3804-4f4d-b7f2-7f118ee9c5f4', 'sofia.garcia3@hexalink.com', '2025-12-14 19:12:37'), ('fb512a8d-5ffd-4747-8bca-8ad14f7aeebe', 'token_6f8eedfb-64fb-4108-9312-19f8331f8082', 'santiago.perez97@hexalink.com', '2025-12-14 19:12:37'), ('2df7520a-e617-491e-a4ce-4594ea2d30ef', 'token_d42f9408-78a9-46a9-a638-25fecb444541', 'linda.ramirez61@hexalink.com', '2025-12-14 19:12:37'), ('63d847a8-4cbb-4e32-8597-a1a45c13d180', 'token_abf7d11f-49c4-49db-a530-edd622796007', 'richard.brown179@hexalink.com', '2025-12-14 19:12:37'), ('8675b70f-3476-4576-a4de-95c369a76d2a', 'token_32619cc2-a24f-4e3f-a614-f60a08e62e57', 'richard.martinez180@hexalink.com', '2025-12-14 19:12:37'), ('df25c42b-703e-48e4-b270-cb3f95e8e2c0', 'token_6e4bcfe9-c495-4c38-9e76-bbd234e65dfb', 'felipe.sanchez182@hexalink.com', '2025-12-14 19:12:37'), ('df6b0675-d8e7-499c-8855-abcd4c61afc0', 'token_c7672746-c4d6-4699-ae5e-bf6a64eee993', 'joseph.williams69@hexalink.com', '2025-12-14 19:12:37'), ('eb563105-5388-43f5-8ea1-394eae002c04', 'token_893a5af1-c286-44db-bbeb-0fb7d35786ea', 'sebastian.garcia172@hexalink.com', '2025-12-14 19:12:37'), ('8900c328-4b65-420f-a529-4874c0ccce71', 'token_939f0e2d-a2fa-428a-9dc4-2bc26e674b58', 'daniel.davis192@hexalink.com', '2025-12-14 19:12:37'), ('de7303b6-d244-4632-9b6f-cd62641e0d10', 'token_2247c8ef-1fa0-4b0d-9944-3e97d9f20461', 'michael.jones76@hexalink.com', '2025-12-14 19:12:37'), ('3463812e-03d2-4172-a998-e318c5eb153e', 'token_cd391d39-e2fe-459a-817c-92c9ad06751a', 'james.hernandez46@hexalink.com', '2025-12-14 19:12:37'), ('54ab1f4e-b841-4f1d-a737-b26afb11728f', 'token_8587b664-6923-406c-9e53-45558f5d4f6e', 'susan.davis170@hexalink.com', '2025-12-14 19:12:37'), ('bb68c1fb-fd0c-4c1d-a1d4-7cddea66a25e', 'token_d04ff5ed-6059-47eb-8f97-7d19c60a8e12', 'ana.martinez@hexalink.com', '2025-12-14 19:12:37'), ('85cac177-703e-4c92-a36c-8d6cad5bd100', 'token_c3f28d1e-ddfd-46d2-b9b2-a1237e522c1f', 'sofia.gonzalez196@hexalink.com', '2025-12-14 19:12:37'), ('0a972d48-de32-46d1-aeb8-eaa3e248be11', 'token_f41bd90b-17ed-4b6c-a416-792634ef3774', 'susan.johnson147@hexalink.com', '2025-12-14 19:12:37'), ('d053a295-946b-41e3-9b39-e5992ff18b85', 'token_09d60d2b-0711-4701-9175-33dbbfc4d05a', 'david.hernandez132@hexalink.com', '2025-12-14 19:12:37'), ('a061e9a9-f245-4405-8630-ec63808ad6e7', 'token_fb701d49-ed67-4bde-b1dd-cc38554cf5c9', 'richard.gonzalez92@hexalink.com', '2025-12-14 19:12:37'), ('1efcd3e8-4e2b-4b62-9c11-e93ab4138e89', 'token_47b3c81c-b8d7-4f18-97f3-3cc14688015b', 'richard.williams47@hexalink.com', '2025-12-14 19:12:37'), ('643dde90-8e7a-4b00-a6b0-335e9805565e', 'token_ec952e8c-1c8a-4246-8f58-e642ad79bcfe', 'daniela.torres225@hexalink.com', '2025-12-14 19:12:37'), ('baaafb44-6e56-42c5-ba39-a467a941acff', 'token_51d28635-6a02-4ced-b03f-8e2bc4ef17f3', 'felipe.brown82@hexalink.com', '2025-12-14 19:12:37'), ('d73d8fb7-8e20-4f43-b687-a1a60a5b2471', 'token_566061f4-7a84-416e-bee7-b95b0d4dabe5', 'gabriela.perez167@hexalink.com', '2025-12-14 19:12:37'), ('a6f0f025-d6d3-4dad-a360-c7ff095eda11', 'token_c1b59abd-d538-412b-93fe-ab5591cc0ec5', 'victoria.johnson27@hexalink.com', '2025-12-14 19:12:37'), ('379d9eba-ab8b-4805-ac74-ce489d58da1f', 'token_679dcf3a-199b-47d6-bce7-b302c0b7f7ab', 'mary.smith101@hexalink.com', '2025-12-14 19:12:37'), ('0ff0c276-9181-4355-bcfc-aeb890af6926', 'token_a372e587-fe93-48f4-841c-bac8e21fd491', 'linda.miller152@hexalink.com', '2025-12-14 19:12:37'), ('834951ab-fdac-46ef-b04b-bbf13d9e6640', 'token_36d86488-eb6b-4e08-bf25-a2ff24bf2173', 'jennifer.brown96@hexalink.com', '2025-12-14 19:12:37'), ('eafa90c7-c170-486d-9ae9-a0d7400824ec', 'token_67288d67-9ffc-47e7-9ddf-e7fd47b47fc3', 'elizabeth.ramirez137@hexalink.com', '2025-12-14 19:12:37'), ('5ebeadd3-6b4c-422d-b542-bb0cf9451d99', 'token_e48e0496-aed9-4a7d-8267-04ad32423f3f', 'mariana.martinez60@hexalink.com', '2025-12-14 19:12:37'), ('2956e054-2dfe-4e26-bc50-238c70a600ff', 'token_2e188979-e9b4-41ae-8207-bc956137ca23', 'susan.davis41@hexalink.com', '2025-12-14 19:12:37'), ('8904a6b4-a958-4c3d-a589-2b35a9866ad3', 'token_7b49e245-8cca-4d45-b29f-65899ab7b7fe', 'mariana.davis90@hexalink.com', '2025-12-14 19:12:37'), ('c2695c2d-2a9c-4669-a51f-3336e2ef72b2', 'token_cc27fcca-a255-48d7-ae95-3ffbb6cf552d', 'camila.jones198@hexalink.com', '2025-12-14 19:12:37'), ('8ce66417-211e-4a89-8d4e-074020ee6cd2', 'token_15738a96-88d9-4580-9db4-b7ef43e39fac', 'richard.jones64@hexalink.com', '2025-12-14 19:12:37'), ('4a616f6b-ad5c-4509-9ca8-d7e4cd39d520', 'token_58fa68e4-dedc-4b03-84ed-5b02c23dda7e', 'barbara.johnson194@hexalink.com', '2025-12-14 19:12:37'), ('9f009394-74f7-438d-a072-8c2f2e0a3130', 'token_01326d58-245a-4a1f-a22c-1aecb2ab2482', 'richard.lopez214@hexalink.com', '2025-12-14 19:12:37'), ('ac3091d6-a49b-4162-83ac-6aba185f6894', 'token_9021a26e-c4ee-454b-a6b2-abe537deacd3', 'victoria.miller42@hexalink.com', '2025-12-14 19:12:37'), ('f6c85151-899e-4487-902e-e2e81d9d0cfd', 'token_9fd6256e-1a47-4f03-89de-dd7617c4de08', 'laura.gomez@hexalink.com', '2025-12-14 19:12:37'), ('9a144cb3-e4c3-4029-a54e-2b295ccbfb53', 'token_e6426cb8-a7fe-4920-8b65-dd3319a4ef49', 'richard.rodriguez209@hexalink.com', '2025-12-14 19:12:37'), ('c29d7e63-1fd0-4ca7-b99d-cd33090efae7', 'token_a08ec152-2f1a-4929-b3db-0dc38d13b9ff', 'alejandro.williams168@hexalink.com', '2025-12-14 19:12:37'), ('0dcb33b6-6a67-40db-b63f-4788f32890b9', 'token_91c7b88d-71eb-4bf5-8107-2e1be900480f', 'elizabeth.rodriguez56@hexalink.com', '2025-12-14 19:12:37'), ('81ad28f1-98c0-497d-adf3-629396e34faa', 'token_3e9bbc8f-c5eb-4aa4-8a5b-bc0cfa56e1c2', 'richard.garcia119@hexalink.com', '2025-12-14 19:12:37'), ('1de663a2-2b10-411c-9232-99004ca7edf8', 'token_9e87cde9-8568-4fc8-af67-6389adf58c3c', 'robert.johnson24@hexalink.com', '2025-12-14 19:12:37'), ('8ed856e5-ce86-4af2-aa66-114a4d4f657f', 'token_1b8e9e28-aa1a-4cf4-b970-bc4b5c2ab663', 'valentina.hernandez53@hexalink.com', '2025-12-14 19:12:37'), ('68df453b-06cc-4570-84fb-646e1a184338', 'token_ec6e17ac-b0cd-4601-9abf-50d44e8753b8', 'victoria.johnson215@hexalink.com', '2025-12-14 19:12:37'), ('70c3e444-892e-4209-8a46-2fb9205e1521', 'token_fec02c00-d78f-4faf-85aa-d6a2c3c0da69', 'alejandro.jones15@hexalink.com', '2025-12-14 19:12:37'), ('a423ca3f-595c-4b7c-9538-51e8caedab4f', 'token_ea0aabe4-f233-4317-8f2b-dc0da0139b57', 'david.hernandez186@hexalink.com', '2025-12-14 19:12:37'), ('55311910-8552-4dc2-9552-b51f46fac4d7', 'token_dfe88b64-b170-402a-84c4-7cd887ec0d23', 'mary.ramirez48@hexalink.com', '2025-12-14 19:12:37'), ('41435551-a36a-4d3b-8a4f-5040da653a49', 'token_bf57a3c1-8248-4aef-9b50-20d3bde2fc40', 'mateo.williams26@hexalink.com', '2025-12-14 19:12:37'), ('82d7a493-1242-47ac-bb05-e16c4326f00e', 'token_34b863e9-9dbd-4bef-b769-6bf8aea7c836', 'victoria.lopez212@hexalink.com', '2025-12-14 19:12:37'), ('50baf05f-a15e-4141-9cd7-e24c0f273829', 'token_20703042-9045-4c12-9d21-41b74390f69f', 'elizabeth.miller134@hexalink.com', '2025-12-14 19:12:37');