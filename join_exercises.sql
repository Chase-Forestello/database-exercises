# -- Incomplete - MySQL - Joins Exercises

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


SELECT d.dept_name                            AS Department_Name,
       CONCAT(e.first_name, ' ', e.last_name) AS Department_Manager,
s.salary
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
JOIN salaries s on dm.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01';