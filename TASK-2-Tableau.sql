# Steps for solving the objective:
	# 1. What kind of visualization do I have?
	# 2. What kind of data can I get to achieve it?
	# 3. 
    
/* Compare the number of male managers to the number of female managers
   from different departments for each year, starting from 1990.*/
   
SELECT
	d.dept_name,
	ee.gender,
    dm.emp_no,
    dm.from_date,
    dm.to_date,
    calendar_year,
    CASE
		WHEN YEAR(dm.from_date) <= calendar_year AND YEAR(dm.to_date) >= calendar_year THEN 1
        ELSE 0
        END AS 'active'
FROM
	(SELECT
		YEAR(hire_date) AS calendar_year
        FROM
        t_employees
        GROUP BY calendar_year) e
        CROSS JOIN
	t_departments d
		JOIN
	t_dept_manager dm ON d.dept_no = dm.dept_no
		JOIN
	t_employees ee ON ee.emp_no = dm.emp_no
GROUP BY dm.emp_no, calendar_year;

# Explanation
SELECT
	*
FROM
	(SELECT
		YEAR(hire_date) AS calendar_year
	FROM
		t_employees
	GROUP BY calendar_year) e
		CROSS JOIN
	t_dept_manager dm
		JOIN
	t_departments d ON dm.dept_no = d.dept_no
		JOIN
	t_employees ee ON dm.emp_no = ee.emp_no
ORDER BY dm.emp_no, calendar_year;


    