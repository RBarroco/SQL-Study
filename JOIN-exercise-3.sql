# TIPS AND TRICKS FOR JOIN;
# dept_name | average_salary
SELECT
	d.dept_name, AVG(salary) as average_salary
FROM
	departments d
		JOIN
	dept_manager dm ON dm.dept_no = d.dept_no
		JOIN
 	salaries s ON s.emp_no = dm.emp_no
GROUP BY d.dept_name
HAVING average_salary > 60000
ORDER BY average_salary DESC;

# EXERCISES
SELECT
	e.gender, COUNT(gender)
FROM
	employees e
		JOIN
	titles t ON t.emp_no = e.emp_no
    WHERE
		t.title = 'Manager'
GROUP BY e.gender;

#----------------------------
SELECT
    e.gender, COUNT(dm.emp_no)
FROM
    employees e
        JOIN
    dept_manager dm ON e.emp_no = dm.emp_no
GROUP BY gender;
	