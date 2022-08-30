-- Complete - MySQL - Limit exercises

use employees;

# First 10 last_name using DISTINCT and ORDER BY last_name DESC using LIMIT 10
SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

# Emp_num of employees with top 5 salaries using LIMIT 5
SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5;

# 10th page (5*10) Emp_num of employees with top 5 salaries using LIMIT 5 and OFFSET 50
SELECT emp_no
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 45;
