-- Complete - MySQL - Functions Exercise

use employees;

# All employees who's last name begins and ends with 'E' using concat() to combine first and last name
SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E';

# All employees born on Christmas day
SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25;

# All employees hired in the 90's and born on Christmas day
SELECT *
FROM employees
WHERE (year(hire_date) BETWEEN 1990 AND 1999)
  AND month(birth_date) = 12
  AND day(birth_date) = 25;

# All employees hired in the 90's and born on Christmas day using ORDER BY DESC
SELECT *
FROM employees
WHERE (year(hire_date) BETWEEN 1990 AND 1999)
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date, hire_date DESC;

# All employees hired in the 90's and born on Christmas day using datediff()
# to find out how long they have worked there in descending order
SELECT *, datediff(curdate(), hire_date)
FROM employees
WHERE (year(hire_date) BETWEEN 1990 AND 1999)
  AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY datediff(curdate(), hire_date) DESC;