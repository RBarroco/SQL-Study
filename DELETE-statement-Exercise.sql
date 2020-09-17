SELECT 
    *
FROM
    departments
ORDER BY dept_no;

# Always use WHERE in DELETE
DELETE FROM departments_dup;

ROLLBACK;

DELETE FROM departments
WHERE
	 dept_no = 'd010'


