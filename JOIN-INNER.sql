/*
SELECT
	table_1.column_name(s), table_2.column_name(s)
FROM
	table_1
JOIN
	table_2 ON table_1.column_name = table_2.column_name;
*/

# Matching records
SELECT 
    *
FROM
    dept_manager_dup
ORDER BY dept_no;

# departments_dup
SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;


# inner join only shows what is part of BOTH
select m.dept_no, m.emp_no, d.dept_name
from dept_manager_dup m
inner join
departments_dup d on m.dept_no = d.dept_no
order by m.dept_no;


