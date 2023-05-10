USE employees;

-- Modify your first query to order by first name.
SELECT *
FROM employees
WHERE gender = 'M'
  AND first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

-- Update the query to order by first name and then last name.
SELECT *
FROM employees
WHERE gender = 'M'
  AND first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

-- Change the ORDER BY clause so that you order by last name before first name
SELECT *
FROM employees
WHERE gender = 'M'
  AND first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

-- Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
SELECT *
FROM employees
WHERE last_name like ('E%')
  AND last_name like ('%E')
ORDER BY emp_no ASC;

-- Now reverse the sort order for both queries and compare results.

SELECT *
FROM employees
WHERE last_name like ('E%')
  AND last_name like ('%E')
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE gender = 'M'
  AND first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name DESC, first_name DESC;


