# Create a procedure called ‘emp_info’ that uses as parameters the first and the last name of an individual, and returns their employee number.
DROP PROCEDURE IF EXISTS emp_info;

DELIMITER $$

CREATE PROCEDURE emp_info(IN p_first_name VARCHAR(255), IN p_last_name VARCHAR(255), OUT p_emp_no INTEGER)
BEGIN
	SELECT
		e.emp_no
	INTO p_emp_no FROM
		employees e
	WHERE
		e.first_name = p_first_name AND e.last_name = p_last_name;
END$$

DELIMITER ;