# -- Complete - MySQL - Joins Exercises

use employees;

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';


SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'F';


SELECT title, count(titles.emp_no)
FROM titles
         join dept_emp de on titles.emp_no = de.emp_no
where titles.to_date = '9999-01-01'
  AND dept_no = 'd009'
GROUP BY title
ORDER BY count(titles.emp_no) desc;


SELECT distinct d.dept_name                            AS Department_Name,
                CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager,
                s.salary                               AS Salary
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
                   ON d.dept_no = dm.dept_no
         JOIN salaries s on dm.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
group by d.dept_name;

# BONUS

SELECT CONCAT(e.first_name, ' ', e.last_name) as Employee, d.dept_name AS Department, CONCAT(e2.first_name,' ', e2.last_name) AS Manager
FROM employees AS e
join dept_emp de on e.emp_no = de.emp_no
join departments d on de.dept_no = d.dept_no
join employees e2 on de.emp_no = e2.emp_no
Where de.to_date = '9999-01-01';

# Query for finding employee name based on emp_no
# SELECT CONCAT(e.first_name, ' ', e.last_name)
# FROM employees e
# WHERE e.emp_no = 43624