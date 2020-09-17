# A single total value -> Group By
# Always include the field you have grouped your results by in the SELECT statement!
/** 
    SELECT group by: column_name, column_name(s)	
	FROM table_name
	WHERE conditions
    GROUP BY column_name(s)
    ORDER By column_name(s);
**/

SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
ORDER BY first_name DESC;

# This is equal to:
SELECT DISTINCT
    first_name
FROM
    employees;
    

