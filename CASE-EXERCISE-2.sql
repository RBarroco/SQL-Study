/*
Extract the employee number, first name, and last name of the first 100 employees, and add a fourth column, called “current_employee”
saying “Is still employed” if the employee is still working in the company, or “Not an employee anymore” if they aren’t.

Hint: You’ll need to use data from both the ‘employees’ and the ‘dept_emp’ table to solve this exercise. 
*/

SELECT
	e.emp_no,
    e.first_name,
    e.last_name,
    IF(de.to_date = '9999-01-01', 'Is still employed', 'Not an employee anymore') AS current_employee
FROM
	employees e
		JOIN
	dept_emp de ON de.emp_no = e.emp_no
GROUP BY de.emp_no
LIMIT 100;

# ---------------------------
SELECT
    e.emp_no,
    e.first_name,
    e.last_name,
    CASE
        WHEN MAX(de.to_date) > SYSDATE() THEN 'Is still employed'
        ELSE 'Not an employee anymore'
    END AS current_employee
FROM
    employees e
        JOIN
    dept_emp de ON de.emp_no = e.emp_no
GROUP BY de.emp_no
LIMIT 100;

		