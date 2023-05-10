USE employees;

-- Find all employees with first names 'Irena', 'Vidya', or 'Maya'
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

-- Find all employees whose last name starts with 'E'
SELECT *
FROM employees
WHERE last_name LIKE ('E%');

--Find all employees with a 'q' in their last name — 1,873 rows.
SELECT *
FROM employees
WHERE last_name LIKE ('%q%');

-- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN
SELECT *
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya';

-- Add a condition to the previous query to find everybody with those names who is also male — 441 rows.
SELECT *
FROM employees
WHERE gender = 'M'
  AND first_name IN ('Irena', 'Vidya', 'Maya');


-- Find all employees whose last name starts or ends with 'E' — 30,723 rows.
SELECT *
FROM employees
WHERE last_name like ('E%')
OR last_name like ('%E');

-- Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E'
SELECT *
FROM employees
WHERE last_name like ('E%')
   AND last_name like ('%E');

-- Find all employees with a 'q' in their last name but not 'qu'
SELECT *
FROM employees
WHERE last_name like ('%q%')
  AND last_name NOT like ('%qu%');
