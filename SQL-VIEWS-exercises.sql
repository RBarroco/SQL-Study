# Create a view that will extract the average salary of all managers registered in the database. Round this value to the nearest cent.
# If you have worked correctly, after executing the view from the “Schemas” section in Workbench, you should obtain the value of 66924.27.

CREATE OR REPLACE VIEW v_average_salary AS 
SELECT
	ROUND(AVG(salary), 1) as average_salary
FROM
	dept_manager d
		JOIN
	salaries s ON s.emp_no = d.emp_no

