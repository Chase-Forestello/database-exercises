-- Complete - MySQL - Group by Exercises
use employees;

# All distinct titles from the titles table
SELECT DISTINCT title
FROM titles

# Distinct last names that start and end with 'e' using GROUP BY
SELECT last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY last_name;

# Distinct first and last names where last name starts and ends with 'e' using GROUP BY
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e'
GROUP BY first_name, last_name;

# Distinct last names with 'q' but not 'qu'
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# Distinct last names with 'q' but not 'qu' using COUNT and ORDER BY
SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

# Number of employees of each gender with the names 'Irena', 'Vidya', 'Maya' using COUNT and GROUP BY
SELECT gender, COUNT(gender)
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya'
GROUP BY gender;

