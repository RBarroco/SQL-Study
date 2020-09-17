# CROSS JOIN two tables, and adding another one;
SELECT 
    e.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
        JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;

# Use a CROSS JOIN to return a list with all possible combinations between managers from the dept_manager table and department number 9.
# Exercise 1 CROSS JOIN
SELECT
	dm.*, d.*
FROM
	dept_manager dm
		CROSS JOIN
	departments d
WHERE
	d.dept_no = 'd009'
GROUP BY dm.emp_no;

# Exercise 2 CROSS JOIN
SELECT
	e.*, d.*
FROM
	employees e
		CROSS JOIN
	departments d
WHERE
	e.emp_no < 10011
GROUP BY e.emp_no, d.dept_name;
