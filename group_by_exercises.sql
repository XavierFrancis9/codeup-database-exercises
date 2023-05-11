-- In your script, use DISTINCT to find the unique titles in the titles table
SELECT title
FROM titles
GROUP BY title;

-- Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY
SELECT last_name
FROM employees
WHERE last_name like ('E%')
  AND last_name like ('%E')
GROUP BY last_name
order by last_name;

-- Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'.
SELECT first_name, last_name
FROM employees
WHERE last_name like ('E%')
  AND last_name like ('%E')
GROUP BY first_name, last_name
order by last_name;

-- Find the unique last names with a 'q' but not 'qu'
SELECT last_name
FROM employees
WHERE last_name like ('%q%')
  AND last_name NOT like ('%qu%')
group by last_name;

-- Add a COUNT() to your results and use GROUP BY to make it easier to find employees whose unusual name is shared with others
SELECT COUNT(last_name), last_name
FROM employees
WHERE last_name like ('%q%')
  AND last_name NOT like ('%qu%')
group by last_name;

-- Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names
SELECT COUNT(gender), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
group by gender;
