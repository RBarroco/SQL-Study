CREATE TABLE departments_dup
(
   dept_no char(4) NOT NULL,
   dept_name varchar(40) NOT NULL
);

ALTER TABLE departments_dup
CHANGE COLUMN dept_no dept_no char(4) NULL;

ALTER TABLE departments_dup
CHANGE COLUMN dept_name dept_name varchar(40) NULL;

INSERT INTO departments_dup
SELECT * FROM departments;

INSERT INTO departments_dup (dept_name)
VALUE
(
	'Public Relations'
);

INSERT INTO departments_dup (dept_no)
VALUE
(
	'd011'
);

SELECT * FROM departments_dup;
SELECT * FROM dept_manager_dup;

DELETE FROM departments_dup
WHERE
    dept_no = 'd002'; 

DELETE FROM departments_dup
WHERE
	dept_no is NUll;

INSERT INTO departments_dup
VALUE
(
	'd010' = null,
    'd011' = null
);

# LEFT JOIN - THE ORDER MATTERS
SELECT
	m.dept_no, m.emp_no, d.dept_name
FROM
	dept_manager_dup m
		LEFT JOIN
	departments_dup d ON m.dept_no = d.dept_no
GROUP BY m.emp_no
ORDER BY m.dept_no;

# IS DIFFERENT THAN: 
SELECT
    # first selection
	m.dept_no, m.emp_no, d.dept_name
FROM
	# first reference
	dept_manager_dup m
    	LEFT JOIN
	departments_dup d ON m.dept_no = d.dept_no
WHERE
	dept_name is null
ORDER BY m.dept_no;
