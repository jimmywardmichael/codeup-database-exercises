USE employees;

SELECT CONCAT(last_name, ', ', first_name) AS full_name
FROM employees
LIMIT 10;

SELECT CONCAT(last_name, ', ', first_name) AS full_name, birth_date AS DOB
FROM employees
LIMIT 10;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name, birth_date AS DOB
FROM employees
ORDER BY emp_no ASC
LIMIT 10;
