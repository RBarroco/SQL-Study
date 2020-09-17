/*
Similar to the exercises done in the lecture, obtain a result set containing the employee number,
first name, and last name of all employees with a number higher than 109990. Create a fourth
column in the query, indicating whether this employee is also a manager, according to the data
provided in the dept_manager table, or a regular employee. 
*/

SELECT
	e.emp_no,
    e.first_name,
    e.last_name,
    CASE
		WHEN dm.emp_no IS NOT NULL THEN 'Manager'
        ELSE 'regular employee'
	END AS position
FROM
	employees e
	 LEFT JOIN
	dept_manager dm ON e.emp_no = dm.emp_no
WHERE
	e.emp_no > 109990;
    