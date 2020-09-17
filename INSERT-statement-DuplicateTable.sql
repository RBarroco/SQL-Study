# Inserting DATA INTO a New Table

# Insert into select
SELECT 
    *
FROM
    departments
LIMIT 10;

CREATE TABLE departments_dup
(
	dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL
);

INSERT INTO departments_dup
(
	dept_no,
    dept_name
)
SELECT * FROM departments;

SELECT * FROM departments_dup;
