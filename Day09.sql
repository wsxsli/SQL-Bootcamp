SELECT *
FROM employees;
SELECT last_name, first_name
FROM employees;
SELECT *
FROM employees
WHERE salary >60000;
SELECT *
FROM employees
ORDER BY salary;
SELECT *
FROM employees
ORDER BY salary DESC;
SELECT *
FROM employees
LIMIT 5;
SELECT *
FROM employees
WHERE department = 'IT'
AND salary > 60000;
SELECT *
FROM employees
WHERE NOT department = 'IT'
AND salary > 60000;
SELECT *
FROM employees
WHERE department = 'IT'
OR salary > 60000;
SELECT *
FROM employees
WHERE salary > 60000
AND department = 'IT';


