--------------------------------1
SELECT
	e.emp_no, 
	e.last_name, 
	e.first_name, 
	e.sex, 
	s.salary
FROM employees e
	INNER JOIN salaries s
	ON e.emp_no = s.emp_no
ORDER BY emp_no
--------------------------------2
SELECT
	first_name, 
	last_name, 
	hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
ORDER BY hire_date
--------------------------------3
SELECT 
	m.dept_no,
	d.dept_name,
	m.emp_no,
	e.last_name,
	e.first_name
FROM departments d
	INNER JOIN dept_manager m
	ON d.dept_no = m.dept_no
	INNER JOIN employees e
	ON m.emp_no = e.emp_no
ORDER BY dept_no
--------------------------------4
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM departments d
	INNER JOIN dept_emp de
	ON d.dept_no = de.dept_no
	INNER JOIN employees e
	ON de.emp_no = e.emp_no
ORDER BY emp_no
--------------------------------5
SELECT 
	first_name,
	last_name,
	sex
FROM employees
WHERE first_name LIKE 'Hercules' and last_name LIKE 'B%'
ORDER BY emp_no
--------------------------------6
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM departments d
	INNER JOIN dept_emp de
	ON d.dept_no = de.dept_no
	INNER JOIN employees e
	ON de.emp_no = e.emp_no
WHERE dept_name LIKE 'Sales'
ORDER BY emp_no
--------------------------------7
SELECT 
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM departments d
	INNER JOIN dept_emp de
	ON d.dept_no = de.dept_no
	INNER JOIN employees e
	ON de.emp_no = e.emp_no
WHERE dept_name LIKE 'Sales' OR dept_name LIKE 'Development'
ORDER BY emp_no
--------------------------------8
SELECT
	last_name,
	COUNT(last_name) AS "last name count"
FROM employees
GROUP BY last_name
ORDER BY "last name count" desc
