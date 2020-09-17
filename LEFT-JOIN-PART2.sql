# EXERCISE LEFT JOIN;
SELECT
	m.dept_no, m.emp_no, d.dept_name
FROM
	dept_manager_dup m
    	LEFT JOIN
	departments_dup d ON m.dept_no = d.dept_no
WHERE
	dept_name is null
ORDER BY m.dept_no;


# RENATO Exercise
SELECT 
	e.emp_no, e.last_name
FROM 
	employees e
		JOIN
	dept_manager m ON e.emp_no = m.emp_no
WHERE
	e.last_name = 'Markovitch'
ORDER BY m.dept_no DESC, e.emp_no;

# Correction
SELECT
    e.emp_no,  
    e.first_name,  
    e.last_name,  
    dm.dept_no,  
    dm.from_date  
FROM  
    employees e  
        LEFT JOIN   
	dept_manager dm ON e.emp_no = dm.emp_no  
WHERE  
    e.last_name = 'Markovitch'  
ORDER BY dm.dept_no DESC, e.emp_no;