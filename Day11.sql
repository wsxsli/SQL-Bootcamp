SELECT *
FROM employees;
SELECT *
FROM employees
WHERE salary > 60000;
SELECT *
FROM employees
ORDER BY salary DESC;
SELECT first_name, last_name
FROM employees
WHERE department = 'HR'
ORDER BY salary ASC
LIMIT 5;
SELECT *
FROM employees
WHERE city = 'Houston'
AND salary > 50000
ORDER BY salary DESC;
