-- Complete - MySQL - Order by Exercise

use employees;

# All employees named Irena, Vidya, or Maya using IN, and ORDER BY first_name
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name;

# All employees named Irena, Vidya, or Maya using IN, and ORDER BY first_name and then last_name
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

# All employees named Irena, Vidya, or Maya using IN, and ORDER BY last_name and then first_name
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

# All employees who's last name begins with 'E' and ORDER BY emp_no
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no;

# All employees named Irena, Vidya, or Maya using IN, and ORDER BY last_name and then first_name DESC order
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name DESC;

# All employees who's last name begins with 'E', and ORDER BY emp_no DESC order
SELECT *
FROM employees
WHERE last_name LIKE 'E%'
ORDER BY emp_no DESC;
