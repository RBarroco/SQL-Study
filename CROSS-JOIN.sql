# Inner join connects only the matching values;
# Cross join connects all the values, not just those that match;
# The cartesian product of the values of two or more sets;
# Cross-join is particularly useful when the tables in a database are not well connected;

SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;

# Old Syntax
SELECT 
    dm.*, d.*
FROM
    dept_manager dm,        
    departments d
ORDER BY dm.emp_no , d.dept_no;

# ONLY JOIN without cross and MySQL will interpret it as a CROSS JOIN;
# OBS: JOIN without ON = not considered best practice
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        INNER JOIN
    departments d
ORDER BY dm.emp_no , d.dept_no;

# CROSS JOIN = best practice
SELECT 
    dm.*, d.*
FROM
    dept_manager dm
        CROSS JOIN
    departments d
WHERE
	d.dept_no != dm.dept_no
ORDER BY dm.emp_no , d.dept_no;

# JOIN + ON Clause == CROSS JOIN + WHERE

SELECT 
    e.*, d.*
FROM
    departments d
        CROSS JOIN
    dept_manager dm
        JOIN
    employees e ON dm.emp_no = e.emp_no
WHERE
    d.dept_no <> dm.dept_no
ORDER BY dm.emp_no , d.dept_no;