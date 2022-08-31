# -- Incomplete - MySQL - Joins Exercises

use employees;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM employees
         JOIN dept_manager as de
              ON de.emp_no = employees.emp_no;
