SELECT * 
FROM employees;
SELECT *
FROM departments;

SELECT *
FROM employees
JOIN departments 
ON employees.department = departments.department_name;

SELECT employees.first_name, employees.last_name, 
       departments.department_name, employees.salary
FROM employees
JOIN departments
ON employees.department = departments.department_name;

SELECT employees.first_name, departments.department_name, employees.salary
FROM employees
JOIN departments
ON employees.department = departments.department_name
WHERE department = 'IT';

SELECT *
FROM employees
JOIN departments
ON employees.department = departments.department_name
WHERE salary > 60000;
