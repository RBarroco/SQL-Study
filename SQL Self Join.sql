SELECT
	*
FROM
	emp_manager
ORDER BY emp_manager.emp_no;

# We use self-joins when a column in a table is referenced in the same table
SELECT 
    e1.*
FROM
    emp_manager e1
        JOIN
    emp_manager e2 ON e1.emp_no = e2.manager_no
WHERE
    e2.emp_no IN (SELECT 
            manager_no
        FROM
            emp_manager);