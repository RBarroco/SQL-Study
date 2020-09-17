# UPDATE STATEMENT PART 1

/*
   UPDATE table_name
   SET column_1 = value_1, column_2 = value_2
   WHERE conditions;
*/

USE employees;

SELECT 
    *
FROM
    employees
WHERE
    emp_no = 999901;

# UPDATE based on a condition
UPDATE employees
SET
	first_name = 'Stella',
    last_name = 'Parkinson',
    birth_date = '1990-12-31',
    gender = 'F'
WHERE
	emp_no = 999901;
    
# If we make a wrong condition on the WHERE part of the function it won't have updated
# anything even though the syntax is correct