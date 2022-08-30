-- Complete - MySQL - Where Exercise

use employees;

# All employees named Irena, Vidya, or Maya using IN
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

# All male employees named Irena, Vidya, or Maya using OR
SELECT *
FROM employees
WHERE gender = 'M'
  AND (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya');

# All employees who's last name begins with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'E%';

# All employees who's last name begins and ends with 'E'
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

# All employees with a 'Q' in their last name
SELECT *
FROM employees
WHERE last_name LIKE '%Q%';

# All employees with a 'Q' in their last name but not containing 'qu'
SELECT *
FROM employees
WHERE last_name LIKE '%Q%'
  AND last_name NOT LIKE '%QU%';