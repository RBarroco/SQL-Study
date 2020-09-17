USE employees;

COMMIT;

SELECT 
    *
FROM
    titles
WHERE
    emp_no = 999903;

# Deleting info from a TABLE;
DELETE FROM employees
WHERE
	emp_no = 999903;

UPDATE titles
SET
	to_date = null
WHERE
	emp_no = 999903

