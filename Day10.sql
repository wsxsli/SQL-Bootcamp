SELECT *
FROM employees
ORDER BY salary ASC;
SELECT first_name, salary
FROM employees
ORDER BY salary DESC;
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 3;
SELECT *
FROM employees
ORDER BY salary ASC
LIMIT 1;
SELECT *
FROM employees
WHERE department = 'IT'
ORDER BY salary DESC
LIMIT 3;;

