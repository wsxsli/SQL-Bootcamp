# SQL-Bootcamp

Practice makes perfect. Practice SQL every day to get a data job.

## Day 9 – SQL Filtering Practice

### Topics

- SELECT
- FROM
- WHERE
- AND
- Comparison operators

### Key Takeaway

FROM → find the table  
WHERE → filter the rows  
SELECT → choose what to display Columns

# Day 14 – SQL JOIN and GROUP BY Practice

Today I practiced:
- JOIN
- ON
- WHERE
- COUNT()
- GROUP BY

Key takeaway:
JOIN connects tables.
GROUP BY groups rows by a specific column.
COUNT() counts rows.

# Day 15 – SQL JOIN, ON, WHERE, GROUP BY & COUNT
Today I practiced how to combine multiple SQL concepts and learned how to troubleshoot SQL queries when the result was not what I expected.

📚 What I Learned
1. JOIN

JOIN combines related data from two tables.

FROM employees AS e
JOIN departments AS d
2. ON

ON defines how two tables are connected.

In my database, the correct relationship was:

ON e.department = d.department_name

I initially used:

ON e.department = d.department_id

This did not work because employees.department contains values such as 'IT', while departments.department_id contains values such as 10.

This taught me an important lesson:

Before using JOIN, check the actual columns and data in both tables.

3. WHERE

WHERE filters rows.

Example:

SELECT *
FROM employees
WHERE department = 'IT';

This returned the IT employees:

David Lee
Susan Taylor
4. GROUP BY

GROUP BY groups rows based on one or more columns.

Example:

SELECT 
    department,
    COUNT(*) AS employee_count
FROM employees
GROUP BY department;

This helped me understand how to count employees in each department.

5. COUNT()

COUNT(*) counts the number of rows in each group.

For example:

COUNT(*) AS employee_count
6. SELECT and GROUP BY

I learned that when using GROUP BY, the non-aggregated columns in SELECT generally need to correspond to the columns in GROUP BY.

For example:

SELECT 
    e.department,
    d.department_id,
    d.department_name,
    COUNT(*) AS employee_count
FROM employees AS e
JOIN departments AS d
ON e.department = d.department_name
GROUP BY 
    e.department,
    d.department_id,
    d.department_name;

A useful way to remember this is:

SELECT tells me what I want to see.
GROUP BY tells me how I want to group the data.
COUNT() calculates the number of rows in each group.

🔍 SQL Debugging Practice

One of the most important lessons today was learning that when a JOIN returns no rows, I should not immediately assume that the SQL syntax is wrong.

I should check:

What columns exist in each table?
What data is actually stored in those columns?
Do the JOIN columns contain matching values?
Is the WHERE condition correct?

Useful commands:

SELECT *
FROM employees;
SELECT *
FROM departments;
DESCRIBE employees;
DESCRIBE departments;
💡 My Key Takeaway

Today I learned that SQL is not just about memorizing commands.

I need to understand the relationship between tables and the data inside them.

My SQL thinking process is becoming:

First, identify the tables → check the columns → find the relationship → JOIN the tables if necessary → filter with WHERE → GROUP BY when I need categories → use COUNT() or other aggregate functions to calculate results.

🗣️ English Practice

JOIN connects related tables.

The ON clause tells SQL how the tables are related.

WHERE filters rows based on a condition.

GROUP BY groups rows based on one or more columns.

COUNT() counts the number of rows in each group.

Interview Practice

When I write a JOIN query, I first check the structure of the tables and identify the columns that connect them. Then I use JOIN and ON to combine the data. If I need to filter the results, I use WHERE. If I need to analyze groups of data, I use GROUP BY with aggregate functions such as COUNT().
