SELECT *
FROM employees;
SELECT first_name, last_name
FROM employees;
SELECT *
FROM employees
WHERE department = 'IT';
SELECT *
FROM employees
ORDER BY employee_id ASC
LIMIT 3;
SELECT *
FROM employees
ORDER BY salary
LIMIT 3;