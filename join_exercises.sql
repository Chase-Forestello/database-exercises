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
                CONCAT(dm.emp_no) AS Department_Manager,
                s.salary                               AS Salary
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         LEFT JOIN departments as d
                   ON d.dept_no = dm.dept_no
          LEFT JOIN salaries s on dm.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01'
group by d.dept_name;

# BONUS

# SELECT CONCAT(e.first_name, ' ', e.last_name), d.dept_name
# FROM employees AS e
# join dept_emp de on e.emp_no = de.emp_no
# join departments d on de.dept_no = d.dept_no
# join dept_manager mg on de.emp_no = mg.emp_no
# WHERE de.to_date = '9999-01-01';

# SELECT CONCAT(e.first_name, ' ', e.last_name)
# FROM employees e
# WHERE e.emp_no = 111692