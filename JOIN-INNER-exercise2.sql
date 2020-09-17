# inner join only shows what is part of BOTH
-- select m.dept_no, m.emp_no, d.dept_name
-- from dept_manager_dup m
-- inner join
-- departments_dup d on m.dept_no = d.dept_no
-- order by m.dept_no;

# JOIN means the intersection between two tables using a column that stick together those two tables;
SELECT e.emp_no, e.first_name, e.last_name, m.dept_no, e.hire_date
FROM employees e
INNER JOIN
dept_manager_dup m ON e.emp_no = m.emp_no
GROUP BY m.emp_no # protect us agains duplicates datas because same row will be JOINED TOGETHER;
ORDER BY m.emp_no;