SELECT 
    *
FROM
    departments_dup;

ALTER TABLE departments_dup
change column dept_name dept_name varchar(40) null;

insert into departments_dup(dept_no) values ('d010'), ('d011');

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

Alter Table employees.departments_dup
Add column dept_manager varchar(255) null after dept_name;

SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no ASC;

COMMIT;


-- IF NULL
SELECT 
    dept_no,
    IFNULL(dept_name,
            'Department name not provided') AS dept_name
FROM
    departments_dup;
    
-- COALESCE    
SELECT 
    dept_no,
    dept_name,
    COALESCE(dept_manager, dept_name, 'N/A') AS dept_manager
FROM
    departments_dup
ORDER BY dept_no ASC;