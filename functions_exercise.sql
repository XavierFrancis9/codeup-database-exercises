USE employees;

-- Update your queries for employees whose names start and end with 'E'
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name like ('E%')
  AND last_name like ('%E')
ORDER BY emp_no;

-- Find all employees born on Christmas
SELECT first_name, last_name, birth_date
FROM employees
WHERE month(birth_date) = 12
    AND day(birth_date) = 25;

-- Find all employees hired in the 90s and born on Christmas
SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE year(hire_date) BETWEEN 1990 and 1999
    AND month(birth_date) = 12
    AND day(birth_date) = 25;

-- Change the query for employees hired in the 90s and born on Christmas such that the first result is the oldest employee who was hired last
SELECT first_name, last_name, birth_date, hire_date
FROM employees
WHERE year(hire_date) BETWEEN 1990 and 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date, hire_date DESC;

-- For your query of employees born on Christmas and hired in the 90s, use datediff() to find how many days they have been working at the company
SELECT first_name, last_name, birth_date, hire_date, ROUND(DATEDIFF(CURDATE(), hire_date)/365) AS years_worked
FROM employees
WHERE year(hire_date) BETWEEN 1990 and 1999
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date, hire_date DESC;

