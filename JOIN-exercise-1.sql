USE employees;

CREATE TABLE departments_dup (
    dept_no CHAR(4) NULL,
    dept_name VARCHAR(40) NULL
);

INSERT INTO departments_dup
(
	SELECT * FROM departments
);

INSERT INTO departments_dup (dept_name)
VALUES ('Public Relations');

DELETE FROM departments_dup
WHERE
	dept_no = 'd002';

SELECT 
    *
FROM
    departments_dup;