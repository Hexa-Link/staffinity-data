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
        ├── ER_staffinity_personnel_service.svg
    └── samples
    └── sql
        └── personnel_service_script
            ├── Staffinity_personnel_service_db.sql
        └── recruiting_service_script
```
...
