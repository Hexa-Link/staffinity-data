-- ------------------------------------------------------------
-- EXTENSIONS
-- ------------------------------------------------------------
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";


-- ------------------------------------------------------------
-- FUNCTION: update_timestamp
-- Automatically manages created_at and updated_at fields
-- ------------------------------------------------------------
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


-- ============================================================
-- TABLES
-- ============================================================

-- ------------------------------------------------------------
-- Table: genders
-- ------------------------------------------------------------
CREATE TABLE public.genders (
    gender_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL UNIQUE,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.genders OWNER TO "hexalink_user";

CREATE TRIGGER set_genders_timestamp
BEFORE INSERT OR UPDATE ON public.genders
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: identification_types
-- ------------------------------------------------------------
CREATE TABLE public.identification_types (
    identification_type_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL UNIQUE,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.identification_types OWNER TO "hexalink_user";

CREATE TRIGGER set_identification_types_timestamp
BEFORE INSERT OR UPDATE ON public.identification_types
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: headquarters
-- ------------------------------------------------------------
CREATE TABLE public.headquarters (
    headquarters_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL UNIQUE,
    address TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.headquarters OWNER TO "hexalink_user";

CREATE TRIGGER set_headquarters_timestamp
BEFORE INSERT OR UPDATE ON public.headquarters
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: access_levels
-- ------------------------------------------------------------
CREATE TABLE public.access_levels (
    access_level_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL UNIQUE,
    description text,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.access_levels OWNER TO "hexalink_user";

CREATE TRIGGER set_access_levels_timestamp
BEFORE INSERT OR UPDATE ON public.access_levels
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: employee_statuses
-- ------------------------------------------------------------
CREATE TABLE public.employee_statuses (
    employee_status_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL UNIQUE,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.employee_statuses OWNER TO "hexalink_user";

CREATE TRIGGER set_employee_statuses_timestamp
BEFORE INSERT OR UPDATE ON public.employee_statuses
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: employees
-- ------------------------------------------------------------
CREATE TABLE public.employees (
    employee_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    -- Personal information
    first_name VARCHAR(40) NOT NULL,
    middle_name varchar(40),
    last_name TEXT NOT NULL,
    second_last_name varchar(40),
    email varchar(40) NOT NULL UNIQUE,
    password_hash varchar(80),
    phone_number TEXT,
    identification_number TEXT,
    date_of_birth DATE,
    hire_date date NOT NULL,
   

    -- Relationships
    gender_id UUID REFERENCES public.genders(gender_id) ON DELETE SET NULL,
    identification_type_id UUID REFERENCES public.identification_types(identification_type_id) ON DELETE SET NULL,
    headquarters_id UUID REFERENCES public.headquarters(headquarters_id) ON DELETE RESTRICT,
    access_level_id UUID REFERENCES public.access_levels(access_level_id) ON DELETE SET NULL,
    status_id UUID REFERENCES public.employee_statuses(employee_status_id) ON DELETE RESTRICT,
    manager_id UUID REFERENCES public.employees(employee_id) ON DELETE SET NULL,

    -- Audit fields
    employee_code TEXT UNIQUE,
    is_deleted bool DEFAULT false,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.employees OWNER TO "hexalink_user";

CREATE TRIGGER set_employees_timestamp
BEFORE INSERT OR UPDATE ON public.employees
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: roles
-- ------------------------------------------------------------
CREATE TABLE public.roles (
    role_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL UNIQUE,
    description TEXT,
    area varchar(40),
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.roles OWNER TO "hexalink_user";

CREATE TRIGGER set_roles_timestamp
BEFORE INSERT OR UPDATE ON public.roles
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: employee_roles
-- Many-to-many relationship between employees and roles
-- ------------------------------------------------------------
CREATE TABLE public.employee_roles (
    employee_id UUID NOT NULL,
    role_id UUID NOT NULL,

    -- Composite Primary Key (employee_id + role_id)
    PRIMARY KEY (employee_id, role_id),

    -- Foreign Keys
    FOREIGN KEY (employee_id)
        REFERENCES public.employees(employee_id)
        ON DELETE CASCADE,

    FOREIGN KEY (role_id)
        REFERENCES public.roles(role_id)
        ON DELETE CASCADE
);
ALTER TABLE public.employee_roles OWNER TO "hexalink_user";


-- ------------------------------------------------------------
-- Table: request_statuses
-- Stores the different statuses a request can have
-- ------------------------------------------------------------
CREATE TABLE public.request_statuses (
    request_status_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL UNIQUE,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.request_statuses OWNER TO "hexalink_user";

CREATE TRIGGER set_request_statuses_timestamp
BEFORE INSERT OR UPDATE ON public.request_statuses
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: requests
-- Base table for any type of request in the system
-- ------------------------------------------------------------
CREATE TABLE public.requests (
    request_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    -- Relationships
    employee_id UUID NOT NULL
        REFERENCES public.employees(employee_id)
        ON DELETE CASCADE,

    status_id UUID NOT NULL
        REFERENCES public.request_statuses(request_status_id)
        ON DELETE NO ACTION,

    -- Request metadata
    request_type TEXT NOT NULL, 
    description TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.requests OWNER TO "hexalink_user";

CREATE TRIGGER set_requests_timestamp
BEFORE INSERT OR UPDATE ON public.requests
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: approvals
-- Tracks approvals for requests, can involve two employees:
-- 1. approver_id (the person approving)
-- 2. optionally something else, but here only one approver
-- ------------------------------------------------------------
CREATE TABLE public.approvals (
    approval_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    -- Request being approved
    request_id UUID NOT NULL
        REFERENCES public.requests(request_id)
        ON DELETE CASCADE,

    -- Employee who approves the request
    approver_id UUID NOT NULL
        REFERENCES public.employees(employee_id)
        ON DELETE RESTRICT,

    -- Status (approved / rejected / pending)
    status_id UUID NOT NULL
        REFERENCES public.request_statuses(request_status_id)
        ON DELETE NO ACTION,

    comments TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.approvals OWNER TO "hexalink_user";

CREATE TRIGGER set_approvals_timestamp
BEFORE INSERT OR UPDATE ON public.approvals
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();

-- ------------------------------------------------------------
-- Table: leave_types
-- Stores the available categories of leave (sick, personal, etc.)
-- ------------------------------------------------------------
CREATE TABLE public.leave_types (
    leave_type_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL UNIQUE,
    "requires_attachment" bool DEFAULT false,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.leave_types OWNER TO "hexalink_user";

CREATE TRIGGER set_leave_types_timestamp
BEFORE INSERT OR UPDATE ON public.leave_types
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: leave_requests
-- Extends "requests" table for leave-specific data
-- Uses request_id as PK and FK (1-to-1 relationship)
-- ------------------------------------------------------------
CREATE TABLE public.leave_requests (
    request_id UUID PRIMARY KEY,

    -- Leave details
    leave_type_id UUID NOT NULL
        REFERENCES public.leave_types(leave_type_id)
        ON DELETE NO ACTION,

    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    reason text,
    is_paid bool DEFAULT false,
    payment_amount numeric(12,2)

    -- Enforce valid date range
    CHECK (end_date >= start_date),

    created_at TIMESTAMP,
    updated_at TIMESTAMP,

    -- Inherits the base request from the main request table
    FOREIGN KEY (request_id)
        REFERENCES public.requests(request_id)
        ON DELETE CASCADE
);
ALTER TABLE public.leave_requests OWNER TO "hexalink_user";

CREATE TRIGGER set_leave_requests_timestamp
BEFORE INSERT OR UPDATE ON public.leave_requests
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: vacation_types
-- Stores different vacation categories
-- ------------------------------------------------------------
CREATE TABLE public.vacation_types (
    vacation_type_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL UNIQUE,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.vacation_types OWNER TO "hexalink_user";

CREATE TRIGGER set_vacation_types_timestamp
BEFORE INSERT OR UPDATE ON public.vacation_types
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: vacation_balances
-- Tracks available vacation days per employee per year
-- ------------------------------------------------------------
CREATE TABLE public.vacation_balances (
    balance_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    employee_id UUID NOT NULL
        REFERENCES public.employees(employee_id)
        ON DELETE CASCADE,

    year INTEGER NOT NULL,
    available_days INTEGER NOT NULL DEFAULT 0,
    used_days INTEGER NOT NULL DEFAULT 0,

    created_at TIMESTAMP,
    updated_at TIMESTAMP,

    -- Ensure only one balance record per employee per year
    UNIQUE (employee_id, year)
);
ALTER TABLE public.vacation_balances OWNER TO "hexalink_user";

CREATE TRIGGER set_vacation_balances_timestamp
BEFORE INSERT OR UPDATE ON public.vacation_balances
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: vacation_requests
-- Extends "requests" table for vacation-specific data
-- Uses request_id as PK and FK (1-to-1 relationship)
-- ------------------------------------------------------------
CREATE TABLE public.vacation_requests (
    request_id UUID PRIMARY KEY,

    vacation_type_id UUID NOT NULL
        REFERENCES public.vacation_types(vacation_type_id)
        ON DELETE NO ACTION,

    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    is_paid bool DEFAULT false,
    payment_amount numeric(12,2),

    -- Date validation
    CHECK (end_date >= start_date),

    created_at TIMESTAMP,
    updated_at TIMESTAMP,

    FOREIGN KEY (request_id)
        REFERENCES public.requests(request_id)
        ON DELETE CASCADE
);
ALTER TABLE public.vacation_requests OWNER TO "hexalink_user";

CREATE TRIGGER set_vacation_requests_timestamp
BEFORE INSERT OR UPDATE ON public.vacation_requests
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: certificate_types
-- Stores the types of certificates that can be requested
-- ------------------------------------------------------------
CREATE TABLE public.certificate_types (
    certificate_type_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    name TEXT NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.certificate_types OWNER TO "hexalink_user";

CREATE TRIGGER set_certificate_types_timestamp
BEFORE INSERT OR UPDATE ON public.certificate_types
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: certificate_requests
-- Extends "requests" table (1-to-1 relationship)
-- ------------------------------------------------------------
CREATE TABLE public.certificate_requests (
    request_id UUID PRIMARY KEY,

    certificate_type_id UUID NOT NULL
        REFERENCES public.certificate_types(certificate_type_id)
        ON DELETE NO ACTION,

    notes TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP,

    FOREIGN KEY (request_id)
        REFERENCES public.requests(request_id)
        ON DELETE CASCADE
);
ALTER TABLE public.certificate_requests OWNER TO "hexalink_user";

CREATE TRIGGER set_certificate_requests_timestamp
BEFORE INSERT OR UPDATE ON public.certificate_requests
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: employee_salaries
-- Stores salary records for employees
-- ------------------------------------------------------------
CREATE TABLE public.employee_salaries (
    salary_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    employee_id UUID NOT NULL
        REFERENCES public.employees(employee_id)
        ON DELETE CASCADE,

    salary_amount NUMERIC(12,2) NOT NULL,
    effective_date DATE NOT NULL,

    -- Ensure the salary value is positive
    CHECK (salary_amount > 0),

    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.employee_salaries OWNER TO "hexalink_user";

CREATE TRIGGER set_employee_salaries_timestamp
BEFORE INSERT OR UPDATE ON public.employee_salaries
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: employee_histories
-- Stores historical actions performed on employee records
-- ------------------------------------------------------------
CREATE TABLE public.employee_histories (
    history_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    employee_id UUID NOT NULL
        REFERENCES public.employees(employee_id)
        ON DELETE CASCADE,

    -- Optional reference to the employee who performed the action
    performed_by_id UUID
        REFERENCES public.employees(employee_id)
        ON DELETE SET NULL,

    action TEXT NOT NULL,
    details TEXT,
    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.employee_histories OWNER TO "hexalink_user";

CREATE TRIGGER set_employee_histories_timestamp
BEFORE INSERT OR UPDATE ON public.employee_histories
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: notifications
-- ------------------------------------------------------------
CREATE TABLE public.notifications (
    notification_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    recipient_id UUID NOT NULL
        REFERENCES public.employees(employee_id)
        ON DELETE CASCADE,

    title TEXT NOT NULL,
    message TEXT NOT NULL,
    is_read BOOLEAN NOT NULL DEFAULT FALSE,
    related_url varchar(255),
    sent_date timestamp(6) DEFAULT now(),

    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.notifications OWNER TO "hexalink_user";

CREATE TRIGGER set_notifications_timestamp
BEFORE INSERT OR UPDATE ON public.notifications
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Table: attached_documents
-- ------------------------------------------------------------
CREATE TABLE public.attached_documents (
    document_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    request_id UUID NOT NULL
        REFERENCES public.requests(request_id)
        ON DELETE CASCADE,

    uploaded_by_id UUID NOT NULL
        REFERENCES public.employees(employee_id)
        ON DELETE NO ACTION,

    file_name TEXT NOT NULL,
    file_type TEXT,
    file_url TEXT NOT NULL,

    created_at TIMESTAMP,
    updated_at TIMESTAMP
);
ALTER TABLE public.attached_documents OWNER TO "hexalink_user";

CREATE TRIGGER set_attached_documents_timestamp
BEFORE INSERT OR UPDATE ON public.attached_documents
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();

-- ------------------------------------------------------------
-- Table: password_reset_tokens
-- ------------------------------------------------------------
CREATE TABLE public.password_reset_tokens (
    token_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

    -- Employee requesting the password reset
    employee_id UUID NOT NULL
        REFERENCES public.employees(employee_id)
        ON DELETE CASCADE,

    -- The reset token (or hash)
    token TEXT NOT NULL,

    email TEXT NOT NULL,
    expires_at TIMESTAMP NOT NULL,

    created_at TIMESTAMP,
    updated_at TIMESTAMP,

    -- Only one active token per employee
    UNIQUE (employee_id)
);
ALTER TABLE public.password_reset_tokens OWNER TO "hexalink_user";

CREATE TRIGGER set_password_reset_tokens_timestamp
BEFORE INSERT OR UPDATE ON public.password_reset_tokens
FOR EACH ROW
EXECUTE FUNCTION public.update_timestamp();


-- ------------------------------------------------------------
-- Indexes to optimize lookups
-- ------------------------------------------------------------
CREATE INDEX idx_password_reset_email
    ON public.password_reset_tokens (email);

CREATE INDEX idx_password_reset_expires
    ON public.password_reset_tokens (expires_at);

