#STORED ROUTINE
# an SQL statement, or a set of sql statements, that can be stored on the database server;

# Store routines -> stores procedures/procedures AND functions

DROP PROCEDURE IF EXISTS select_employees;

DELIMITER $$
CREATE PROCEDURE select_employees()
BEGIN
		SELECT * FROM employees
        LIMIT 1000;
END$$

DELIMITER ;

call select_employees();

DROP PROCEDURE IF EXISTS employees_avg_salary;

DELIMITER $$
CREATE PROCEDURE employees_avg_salary()
BEGIN
	SELECT AVG(salary) FROM salaries;
END$$

DELIMITER ;

DROP PROCEDURE employees_avg_salary;
