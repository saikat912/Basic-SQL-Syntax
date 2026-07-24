# SQL Retrieval Queries – Basic SQL Syntax

## 📖 Overview
This project demonstrates the fundamentals of writing SQL retrieval queries using basic SQL syntax. It is designed for beginners who want to learn how to retrieve, filter, sort, and organize data from relational databases.

The examples in this repository use standard SQL syntax that is compatible with most relational database management systems (RDBMS), including MySQL, PostgreSQL, SQLite, and SQL Server.

---

## 🎯 Objectives

- Understand the structure of a basic SQL query.
- Retrieve data from database tables.
- Filter records using conditions.
- Sort query results using `ORDER BY`.
- Limit the number of rows returned.
- Select specific columns or all columns.
- Use column aliases for better readability.

---

## 📚 SQL Retrieval Examples

### 1. Retrieve All Data

```sql
SELECT * FROM employees;
```

### 2. Retrieve Specific Columns

```sql
SELECT first_name, last_name, salary
FROM employees;
```

### 3. Filter Data Using `WHERE`

```sql
SELECT *
FROM employees
WHERE department = 'Sales';
```

### 4. Filter with Multiple Conditions

```sql
SELECT *
FROM employees
WHERE salary > 50000
AND department = 'IT';
```

### 5. Sort Results Using `ORDER BY`

```sql
SELECT *
FROM employees
ORDER BY salary DESC;
```

### 6. Limit the Number of Results

```sql
SELECT *
FROM employees
LIMIT 10;
```

### 7. Use Column Aliases

```sql
SELECT first_name AS "First Name",
       salary AS "Monthly Salary"
FROM employees;
```

### 8. Retrieve Unique Values

```sql
SELECT DISTINCT department
FROM employees;
```

---

## 🛠 Prerequisites

Before running the SQL queries, ensure you have:

- A relational database (MySQL, PostgreSQL, SQLite, or SQL Server)
- A SQL client or database management tool
- A sample database with tables

---

## 🚀 Getting Started

1. Clone this repository.

   ```bash
   git clone https://github.com/your-username/basic-sql-syntax.git
   ```

2. Open your preferred SQL database.

3. Import the sample database (if provided).

4. Run the SQL queries located in the `queries/` folder.

---

## 📂 Project Structure

```text
basic-sql-syntax/
│── README.md
│── queries/
│   ├── select.sql
│   ├── where.sql
│   ├── order_by.sql
│   ├── limit.sql
│   └── distinct.sql
```

---

## 🎓 Learning Outcomes

After completing this project, you will be able to:

- Write basic SQL retrieval queries.
- Retrieve data from one or multiple columns.
- Filter records using conditional statements.
- Sort and limit query results.
- Use aliases and remove duplicate values with `DISTINCT`.
- Build a strong foundation for advanced SQL concepts.

---

## 🤝 Contributing

Contributions are welcome! Feel free to fork this repository, improve the examples, and submit a pull request.

---

## 📄 License

This project is licensed under the **MIT License**.

---

## 👨‍💻 Author

**SAIKAT PAL**

GitHub: https://github.com/saikat912
