# FIND THE AVERAGE SALARIES OF MEN AND WOMEN IN THE COMPANY;
SELECT 
	e.gender, AVG(s.salary) AS average_salary
FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
GROUP BY gender;
