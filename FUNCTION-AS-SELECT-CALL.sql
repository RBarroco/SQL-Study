# USING FUNCTION AND VARIABLES
SET @v_emp_no = 11300;
SELECT 
	emp_no,
	first_name,
    last_name,
    f_emp_avg_salary(@v_emp_no) AS avg_salary
FROM
	employees
WHERE
	emp_no = @v_emp_no;