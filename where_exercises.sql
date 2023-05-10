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