# Staffinity Data Repository

## 📖 Overview
This repository cointain the data architecture and database schemas of the Staffinity platform.

It acts as a central hub where the **Data Analyst** defines and maintains the data models that coordinate the platform's microservices:
* **Recruiting Service:** Powered by PostgreSQL (Java Backend).
* **Personnel Service:** Powered by SQL PostgreSQL (.NET Backend).

## 📂 Repository Structure

The repository is organized to separate documentation, seeding data, and platform-specific scripts:

```
└── staffinity-data
    └── docs
        ├── erd-global.md
        ├── Staffinity_Personnel_ER_Diagram.png
        ├── Staffinity_Recruiting_ER_Diagram.png
    └── samples
        ├── Recruiting_Staffinity_data.sql
        ├── Staffinity_personnel_service_data.sql
    └── sql
        └── personnel_service_script
            ├── Staffinity_personnel_service_db.sql
        └── recruiting_service_script
            └── Recruiting_Staffinity.sql
```

## 📝 Schema Details

This section outlines the data models for the **Personnel** and **Recruiting** modules. For a complete view of all entities and relationships, see the [global ERD documentation](docs/erd-global.md).

### 1. Personnel Database (`Personnel_Staffinity_db`)

Manages employee information, organizational structure, and administrative requests.

- **Core Entities**: `Employees`, `Roles`, `Headquarters`, `Requests`.
- **Key Relationships**:
  - `employees` ↔ `roles` (Many-to-Many).
  - `employees` → `requests` (One-to-Many).
  - `requests` → subtypes (One-to-One inheritance).

### 2. Recruiting Database (`Recruiting_Staffinity`)

Handles the hiring process, from vacancies to candidate interviews.

- **Core Entities**: `Vacancies`, `Candidates`, `Interviews`, `Skills`.
- **Key Relationships**:
  - `vacancies` → `candidates` (One-to-Many).
  - `candidates` → `interviews` (One-to-Many).
  - `vacancies`/`candidates` ↔ `skills` (Many-to-Many).

### 3. Cross-Database Integration

The **Personnel** and **Recruiting** databases are logically integrated. The Recruiting module references employees from the Personnel module to assign roles like Hiring Managers and Interviewers. This link is maintained by storing the employee's `UUID` in the Recruiting tables.

| Recruiting Table | Logical Reference | Description |
| :--- | :--- | :--- |
| `vacancies` | `hiring_manager_id` → `personnel.employees` | Manager responsible for the vacancy. |
| `vacancies` | `recruiter_id` → `personnel.employees` | HR person managing the process. |
| `interviews` | `interviewer_id` → `personnel.employees` | Employee conducting the interview. |
| `candidate_notes`| `author_id` → `personnel.employees` | Employee who wrote the note. |
