# PostgreSQL

## 📂 Table of Contents

1. [🧠 General Overview](#1-general-overview)
2. [🚀 Performance & Scalability](#2-performance--scalability)
3. [🔧 Features](#3-features)
4. [🔒 Security & Authentication](#4-security--authentication)
5. [💼 Tooling & Ecosystem](#5-tooling--ecosystem)
6. [💰 Licensing & Cost](#6-licensing--cost)
7. [🎯 Best Use Cases](#7-best-use-cases)
8. [✅ Final Verdict](#8-final-verdict)
9. [🐘 PostgreSQL Installation & Setup on Ubuntu](#9-postgresql-installation--setup-on-ubuntu)
10. [🔄 Switch PostgreSQL Database from `psql` Shell](#10-switch-postgresql-database-from-psql-shell)
11. [📘 DDL – Data Definition Language](#11-📘-ddl--data-definition-language)
12. [📙 DML – Data Manipulation Language](#12-📙-dml--data-manipulation-language)
13. [📗 DCL – Data Control Language](#13-📗-dcl--data-control-language)
14. [📕 TCL – Transaction Control Language](#14-📕-tcl--transaction-control-language)
15. [📓 DQL – Data Query Language](#15-📓-dql--data-query-language)


# 📊 PostgreSQL vs MySQL vs MSSQL – Full Comparison

## 🧠 1. General Overview

| Feature        | PostgreSQL                        | MySQL                                | MSSQL (SQL Server)                      |
|----------------|------------------------------------|--------------------------------------|-----------------------------------------|
| Type           | Object-relational DBMS            | Relational DBMS                      | Relational DBMS                         |
| License        | Open-source (PostgreSQL License)  | Open-source (GPL, owned by Oracle)  | Proprietary (Microsoft)                |
| OS Support     | Windows, Linux, macOS             | Windows, Linux, macOS                | Mostly Windows, partial Linux support   |
| Developer      | PostgreSQL Global Dev Group       | Oracle Corporation                   | Microsoft                               |

---

## 🚀 2. Performance & Scalability

| Feature               | PostgreSQL                          | MySQL                                    | MSSQL                                     |
|-----------------------|--------------------------------------|------------------------------------------|-------------------------------------------|
| Read-heavy Workloads  | Good                                 | Excellent (especially with InnoDB)       | Good                                      |
| Write-heavy Workloads | Excellent (MVCC support)             | Good (less efficient with large writes)  | Excellent (optimized for transactions)    |
| Concurrency           | Strong (MVCC, advanced locking)      | OK (Table-level locks in some cases)     | Strong (row-level locking, isolation)     |
| Scalability           | High (partitioning, parallel queries)| Medium-High (needs replication)          | High (Enterprise: sharding, clustering)   |

---

## 🔧 3. Features

| Feature                    | PostgreSQL                          | MySQL                                    | MSSQL                                      |
|----------------------------|--------------------------------------|------------------------------------------|--------------------------------------------|
| ACID Compliance            | Full                                 | Full (with InnoDB)                       | Full                                       |
| JSON/NoSQL support         | Strong (JSONB, indexing)             | Basic JSON functions                     | Decent (JSON, XML support)                 |
| Stored Procedures          | Yes (pl/pgsql, extensible langs)     | Yes (SQL/PSM)                            | Yes (T-SQL)                                |
| Full-text Search           | Built-in, advanced                   | Limited/basic                            | Powerful, built-in                         |
| Triggers & Rules           | Yes (Advanced)                       | Basic                                    | Yes                                        |
| GIS / Spatial Data         | PostGIS (Very powerful)              | Basic GIS support                        | Good (Spatial extensions)                  |
| Window Functions           | Yes (Advanced)                       | Basic (improving in recent versions)     | Full support                               |

---

## 🔒 4. Security & Authentication

| Feature               | PostgreSQL                         | MySQL                            | MSSQL                                      |
|-----------------------|------------------------------------|----------------------------------|--------------------------------------------|
| Authentication        | MD5, SCRAM, LDAP, GSSAPI, etc.     | Native MySQL, PAM, LDAP          | Windows Auth, Azure AD, Kerberos           |
| Role Management       | Advanced (Role inheritance)        | Basic                            | Strong (SQL & Windows logins)              |
| SSL/TLS Support       | Yes                                | Yes                              | Yes                                        |
| Encryption            | PGCrypto (column-level)            | Limited native encryption        | Transparent Data Encryption (TDE)          |

---

## 💼 5. Tooling & Ecosystem

| Feature               | PostgreSQL                       | MySQL                             | MSSQL                                       |
|-----------------------|----------------------------------|-----------------------------------|---------------------------------------------|
| GUI Tools             | pgAdmin, DBeaver, DataGrip       | MySQL Workbench, HeidiSQL, DBeaver| SSMS, Azure Data Studio                     |
| Community             | Strong (academic + corporate)    | Huge (web devs, startups)         | Enterprise-heavy                            |
| Cloud Support         | AWS RDS, GCP, Heroku             | AWS, GCP, Oracle Cloud            | Azure SQL, AWS RDS                          |

---

## 💰 6. Licensing & Cost

| Feature           | PostgreSQL             | MySQL                        | MSSQL                                        |
|-------------------|------------------------|------------------------------|-----------------------------------------------|
| Free to Use       | ✅ 100% open source     | ✅ Community Edition          | ❌ Paid for full features                     |
| Enterprise Support| Optional (via vendors) | Oracle offers support        | Microsoft premium support                     |
| Cloud Pricing     | Cost-effective         | Moderate                     | Expensive (especially Azure SQL Server)       |

---

## 🎯 7. Best Use Cases

| Use Case                           | Best Choice        |
|------------------------------------|--------------------|
| Complex analytics, GIS             | PostgreSQL         |
| Lightweight web apps, LAMP stack   | MySQL              |
| Large enterprise systems (ERP, BI) | MSSQL              |
| Heavy JSON usage                   | PostgreSQL         |
| Windows-based enterprise apps      | MSSQL              |
| Open-source + cloud deployments    | PostgreSQL / MySQL |

---

## ✅ Final Verdict

| Need                          | Recommended DBMS   |
|-------------------------------|--------------------|
| 🔬 Advanced features & extensibility | PostgreSQL       |
| 🌐 Web development (PHP, LAMP stack) | MySQL             |
| 🏢 Enterprise, Windows, .NET stack   | MSSQL             |
| 📊 Data warehousing, BI              | MSSQL/PostgreSQL  |
| 💸 Free and powerful DB              | PostgreSQL        |



# 🐘 PostgreSQL Installation & Setup on Ubuntu


# 📦 Install PostgreSQL and Contrib Extensions

```
sudo apt install postgresql postgresql-contrib
```

# 👤 Switch to the postgres User

```
sudo -i -u postgres
```
# 👤 Access the PostgreSQL shell
```
psql
```
# 🔐 Set Password for postgres DB User
```
ALTER USER postgres WITH PASSWORD 'your_password_here';
```

# For quit 
```
\q
```

# 🔍 What does \l do?
```
\l
```
`Alternative`
```
SELECT datname FROM pg_database;
```
## Ouput:
```psql
                                 List of databases
   Name    |  Owner   | Encoding | Collate |  Ctype  |   Access privileges
-----------+----------+----------+---------+---------+-----------------------
 postgres  | postgres | UTF8     | en_US   | en_US   |
 template0 | postgres | UTF8     | en_US   | en_US   | =c/postgres          +
           |          |          |         |         | postgres=CTc/postgres
 template1 | postgres | UTF8     | en_US   | en_US   | =c/postgres          +
           |          |          |         |         | postgres=CTc/postgres
 yourdb    | youruser | UTF8     | en_US   | en_US   |

```

## 🐘 PostgreSQL: Check Installed Version
## 🔍 Purpose

The following command is used **inside the `psql` shell** to check the installed version of PostgreSQL:

```sql
SELECT version();
```
## 🔄 Switch PostgreSQL Database from `psql` Shell

### ✅ Method 1: Exit & Reconnect

```bash
\q
psql -U postgres -d new_database
```
### ✅ Method 2: 
```bash
\c new_database
```

## 📘 What \d Does:
1. Shows columns, data types, indexes, and constraints of a table.
2. Works only inside the psql interactive shell (postgres=#).
```sql
\d 
```

## 📘 What \du Does:
1. Show all user of the database.

## Create new user
```sql
create user user_name with login encrypted password 'password';
```

# SQL Command Categories

## 1. 📘 DDL – Data Definition Language
Defines or modifies the **structure/schema** of database objects.

| Command     | Description                         |
|-------------|-------------------------------------|
| CREATE      | Creates a new database/table/index  |
| ALTER       | Modifies an existing structure      |
| DROP        | Deletes an object (table, db, etc.) |
| TRUNCATE    | Removes all records (no rollback)   |
| RENAME      | Renames a database object           |

## 2. 📙 DML – Data Manipulation Language
| Command | Description                        |
| ------- | ---------------------------------- |
| SELECT  | (technically DQL, see below)       |
| INSERT  | Adds new data                      |
| UPDATE  | Modifies existing data             |
| DELETE  | Deletes specific rows from a table |

## 3. 📗 DCL – Data Control Language
| Command | Description             |
| ------- | ----------------------- |
| GRANT   | Gives user privileges   |
| REVOKE  | Removes user privileges |

## 4. 📕 TCL – Transaction Control Language
| Command         | Description                               |
| --------------- | ----------------------------------------- |
| COMMIT          | Saves all changes made in the transaction |
| ROLLBACK        | Undoes changes if an error occurs         |
| SAVEPOINT       | Sets a point for partial rollback         |
| SET TRANSACTION | Sets transaction isolation level          |

## 5. 📓 DQL – Data Query Language
| Command | Description                         |
| ------- | ----------------------------------- |
| SELECT  | Retrieves data from one/more tables |




