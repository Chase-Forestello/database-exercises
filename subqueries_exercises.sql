# Complete - MySQL - Sub-Queries Exercise

use employees;

# 1. All employees with same hire date as emp_no 101010
SELECT CONCAT(e.first_name, ' ', e.last_name), e.hire_date
FROM employees e
WHERE e.hire_date IN (SELECT hire_date
                      from employees
                      where emp_no = 101010);

# 2. All titles held by employees with first name Aamod
SELECT first_name, title
FROM employees e
         JOIN titles t on e.emp_no = t.emp_no
WHERE title IN (select title
                from titles
                where e.first_name LIKE 'Aamod');

# 3. All current department managers that are female
SELECT first_name, last_name
FROM employees e
         join dept_manager dm on e.emp_no = dm.emp_no
WHERE gender IN (select gender
                 from employees
                 where gender LIKE 'F'
                   AND to_date = '9999-01-01');

# SELECT first_name, last_name
# from employees
#          join dept_manager dm on employees.emp_no = dm.emp_no
# where to_date = '9999-01-01'
#   AND gender = 'F';

# All department names that currently have female managers
SELECT dept_name
from departments d
         join dept_manager dm on d.dept_no = dm.dept_no
         join employees e on dm.emp_no = e.emp_no
where gender IN (select gender
                 from employees
                 where gender LIKE 'F')
  AND to_date = '9999-01-01';

# First and last name of employee with highest salary
SELECT first_name, last_name
from employees
         join salaries s on employees.emp_no = s.emp_no
where salary IN (select max(salary)
                 from salaries);



