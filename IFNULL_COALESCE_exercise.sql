SELECT 
    IFNULL(dept_no, 'N/A') as dept_no,
    IFNULL(dept_name,
            'Department name not provided') as dept_name,
    COALESCE(dept_no, dept_name) AS dept_info
FROM
    departments_dup
ORDER BY dept_no ASC;

