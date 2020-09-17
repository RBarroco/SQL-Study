# JOIN MORE THAN TWO TABLES;
# Going from front to back
SELECT
	e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
FROM
	employees e
		JOIN
	dept_manager m ON e.emp_no = m.emp_no
		JOIN
	departments d ON m.dept_no = d.dept_no;
    
# Going from back to front
# JOIN MORE THAN TWO TABLES;
SELECT
	e.first_name,
    e.last_name,
    e.hire_date,
    m.from_date,
    d.dept_name
FROM
	departments d
    	JOIN
	dept_manager m ON m.dept_no = d.dept_no
		RIGHT JOIN
	employees e ON e.emp_no = m.emp_no;