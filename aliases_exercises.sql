USE employees;

SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) as full_name,
 birth_date   as DOB
FROM employees
ORDER BY emp_no LIMIT 10;
