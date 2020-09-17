# Stored Procedures with an Input Parameter
USE employees;
DROP PROCEDURE IF EXISTS emp_salary;

# a procedure that will show the salaries of the input and will have an output OUT / to do that we have a SELECT-INTO structure;
DELIMITER $$
USE employees $$
CREATE PROCEDURE emp_avg_salary_out(IN p_emp_no INTEGER, out p_avg_salary DECIMAL(10,2))
BEGIN
	SELECT 
		AVG(s.salary) # the query has to respect the idea of only one parameter because we have the OUT now;
	INTO p_avg_salary FROM
		employees e
			JOIN
		salaries s ON e.emp_no = s.emp_no
	WHERE
		e.emp_no = p_emp_no;
END$$

DELIMITER ;

call emp_avg_salary(11300);