/*
· DETERMINISTIC – it states that the function will always return identical result given the same input

· NO SQL – means that the code in our function does not contain SQL (rarely the case)

· READS SQL DATA – this is usually when a simple SELECT statement is present

OR

That said, there is another way to stop the error - by disabling the binary log when creating functions.
And we can achieve this by executing the following command:

SET @@global.log_bin_trust_function_creators := 1;

Technically speaking, this operation isn’t the safest one out there. Nevertheless, for the purposes of this course,
it is the one that will solve the potential problems regardless of the version of MySQL.
*/

# DETERMINISTIC, NO SQL or READS SQL DATA;
DROP FUNCTION IF EXISTS f_emp_avg_salary;

DELIMITER $$
CREATE FUNCTION f_emp_avg_salary (p_emp_no INTEGER) RETURNS DECIMAL(10,2)
DETERMINISTIC 
BEGIN

DECLARE v_avg_salary DECIMAL(10,2);

SELECT
	AVG(s.salary)
INTO v_avg_salary FROM
	employees e
		JOIN
	salaries s ON e.emp_no = s.emp_no
WHERE
	e.emp_no = p_emp_no;
RETURN v_avg_salary;
END$$

DELIMITER ;

SELECT f_emp_avg_salary(11300);