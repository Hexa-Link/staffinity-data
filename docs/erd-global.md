# Global Entity-Relationship

This document describes the data models for the **Personnel** and **Recruiting** modules of the Staffinity application. It details the entities within each database and how they are logically interconnected.

## 1. Personnel Database (`Personnel_Staffinity_db`)

The Personnel module manages employee information, organizational structure, and administrative requests.

### Core Entities
- **Employees**: The central entity containing personal and professional details.
- **Roles**: Job titles and areas (e.g., Backend Developer, HR Analyst).
- **Headquarters**: Physical office locations.
- **Requests**: A polymorphic base table for various request types (Vacations, Leaves, Certificates).

### Key Relationships
- **Employees & Roles**: Many-to-Many relationship via `employee_roles`.
- **Employees & Requests**: One-to-Many (An employee makes many requests).
- **Requests & Subtypes**: One-to-One (Inheritance strategy) with `vacation_requests`, `leave_requests`, etc.

## 2. Recruiting Database (`Recruiting_Staffinity`)

The Recruiting module handles the hiring process, from opening vacancies to interviewing candidates.

### Core Entities
- **Vacancies**: Job openings with requirements and status.
- **Candidates**: Applicants applying for vacancies.
- **Interviews**: Scheduled meetings between candidates and interviewers.
- **Skills**: Technical or soft skills required for jobs or possessed by candidates.

### Key Relationships
- **Vacancies & Candidates**: One-to-Many (A vacancy has many candidates).
- **Candidates & Interviews**: One-to-Many (A candidate can have multiple interviews).
- **Vacancies/Candidates & Skills**: Many-to-Many relationships via `vacancy_skills` and `candidate_skills`.


## 3. Cross-Database Integration

The **Personnel** and **Recruiting** databases are deployed separately but are logically integrated. The Recruiting module references employees from the Personnel module to assign responsibilities (Hiring Managers, Recruiters, Interviewers).

### Logical Links
Since physical Foreign Keys cannot span across separate databases, these relationships are maintained logically by storing the `UUID` of the employee in the Recruiting tables.

| Recruiting Table | Column | References (Logical) | Description |
| :--- | :--- | :--- | :--- |
| `vacancies` | `hiring_manager_id` | `Personnel.employees(employee_id)` | The manager responsible for the vacancy. |
| `vacancies` | `recruiter_id` | `Personnel.employees(employee_id)` | The HR person managing the process. |
| `interviews` | `interviewer_id` | `Personnel.employees(employee_id)` | The employee conducting the interview. |
| `candidate_notes` | `author_id` | `Personnel.employees(employee_id)` | The employee who wrote the note. |


