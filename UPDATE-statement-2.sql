SELECT 
    *
FROM
    departments_dup
ORDER BY dept_no;

COMMIT;

# Since we dont have the WHERE conditon on the UPDATE statement we will update the full table, WATCH OUT!
UPDATE departments_dup
SET
	dept_no = 'd011',
    dept_name = 'Quality Control';
    
ROLLBACK;

COMMIT;