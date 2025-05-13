# PostgreSQL

## 📂 Table of Contents

1. [🧠 General Overview](#-1-general-overview)
2. [🚀 Performance & Scalability](#-2-performance--scalability)
3. [🔧 Features](#-3-features)
4. [🔒 Security & Authentication](#-4-security--authentication)
5. [💼 Tooling & Ecosystem](#-5-tooling--ecosystem)
6. [💰 Licensing & Cost](#-6-licensing--cost)
7. [🎯 Best Use Cases](#-7-best-use-cases)
8. [✅ Final Verdict](#-final-verdict)
9. [🐘 PostgreSQL Installation & Setup on Ubuntu](#PostgreSQL-Installation--Setup-on-Ubuntu)


# 📊 PostgreSQL vs MySQL vs MSSQL – Full Comparison
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

