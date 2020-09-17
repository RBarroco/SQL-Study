USE employees_mod;

-- SELECT distinct
-- 	emp_no, from_date, to_date
-- FROM
-- 	t_dept_emp;


SELECT
	YEAR(de.from_date) as calendar_year,
    e.gender,
    COUNT(e.emp_no) as num_of_employees
FROM
	t_dept_emp de
		JOIN
	t_employees e ON e.emp_no = de.emp_no
WHERE
	YEAR(de.from_date) >= 1990
GROUP BY YEAR(de.from_date), e.gender;

# OR

-- SELECT
-- 	YEAR(de.from_date) as calendar_year,
--     e.gender,
--     COUNT(e.emp_no) as num_of_employees
-- FROM
-- 	t_dept_emp de
-- 		JOIN
-- 	t_employees e ON e.emp_no = de.emp_no
-- GROUP BY YEAR(de.from_date), e.gender
-- HAVING calendar_year >= 1990;