-- # WHERE AND JOIN TOGETHER
-- SELECT
-- 	# we don't need to have the linked factor here: e.emp_no
--     e.first_name, e.last_name, s.salary
-- FROM
-- 	employees e
-- 		JOIN
-- 	salaries s ON e.emp_no = s.emp_no
-- WHERE
-- 	s.salary > 145000;
    
# Exercise
# WHERE AND JOIN TOGETHER

SELECT
	e.first_name, e.last_name, e.hire_date, t.title
FROM
	employees e
		JOIN
	titles t ON e.emp_no = t.emp_no
WHERE
	first_name = 'Margareta' AND last_name = 'Markovitch'
ORDER BY e.emp_no;
