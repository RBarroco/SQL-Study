# ----------------------------------
SELECT
	emp_no,
    first_name,
    last_name,
    CASE
		WHEN gender = 'M' THEN 'Male'
		ELSE 'Female'
	END AS gender
FROM
	employees;
    
# NULL or NOT NULL is not that something can be compared to
SELECT
	e.emp_no,
	e.first_name,
    e.last_name,
    CASE 
		WHEN dm.emp_no IS NOT NULL THEN 'Manager'
        ELSE 'Employee'
	END AS is_manager
FROM
	employees e
		LEFT JOIN
	dept_manager dm ON dm.emp_no = e.emp_no
WHERE
	e.emp_no > 109990;

# IF JSUT ONE CONDITION;
SELECT 
    emp_no,
    first_name,
    last_name,
    IF(gender = 'M', 'Male', 'Female') AS gender
FROM
    employees;
    
# MULTIPLE CASE
SELECT
	dm.emp_no,
    e.first_name,
    e.last_name,
    MAX(s.salary) - MIN(s.salary) AS salary_difference,
	CASE
		WHEN MAX(s.salary) - MIN(s.salary) > 30000 THEN 'Salary raised more than 30 times'
        WHEN MAX(s.salary) - MIN(s.salary) BETWEEN 20000 AND 30000 THEN 'raised 20-30 times'
        ELSE '20 times'
	END AS salary_increase
FROM
	dept_manager dm
		JOIN
	employees e ON e.emp_no = dm.emp_no
		JOIN
	salaries s ON s.emp_no = dm.emp_no
GROUP BY s.emp_no;

    