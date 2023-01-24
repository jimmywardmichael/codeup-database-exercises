use employees;
-- Find unique titles in the titles table
SELECT DISTINCT title FROM titles;

-- Find unique last names that start and end with 'E' using GROUP BY
SELECT last_name FROM employees
WHERE last_name LIKE 'E%E'
GROUP BY last_name;

-- Find unique combinations of first and last name where the last name starts and ends with 'E'
SELECT DISTINCT first_name, last_name FROM employees
WHERE last_name LIKE 'E%E';

-- Find unique last names with a 'q' but not 'qu'
SELECT last_name FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

-- Find unique last names with a 'q' but not 'qu' and count the number of employees with each
SELECT last_name, COUNT(*) FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(*) DESC;

-- Find the number of employees for each gender with the name 'Irena', 'Vidya', or 'Maya'
SELECT gender, COUNT(*) FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;
