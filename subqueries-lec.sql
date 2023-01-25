Sub-Queries vs Joins

# Joins: often used when data is needed from two or more tables
-- returns only rows of data
-- tend to be faster than sub-queries
-- syntax can be more complex

# Sub-queries: often used when the data of one table needs to be filtered by additional tables
-- may return...
-- rows of data (another table)
-- a single row
-- a column of values
-- tend to be more readable than joins

USE employees;

# Find all the department managers names and birth dates
SELECT first_name, last_name, birth_date
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
)
    LIMIT 10;

# Find all employees names in the Development department with the birth date of 12-24
SELECT first_name, last_name, birth_date FROM employees WHERE emp_no IN (
    SELECT emp_no from dept_emp WHERE dept_no IN (
        SELECT dept_no FROM departments WHERE dept_name = 'Marketing'
    )
) AND birth_date LIKE '1993-12-24';

# Ramzi's OG BDay = 1960-02-20
# Patricio's Bday = 1960-10-04

# Change Ramzi's Bday to Patricio's BDay
use employees;
UPDATE dept_manager
SET emp_no = (SELECT emp_no from employees where emp_no = '101010')
WHERE emp_no = '110022';