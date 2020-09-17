# IN is faster than OR, OR, OR;
SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ('Cathie', 'Mark', 'Nathan');
    
# The same
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'Cathie'
        OR first_name = 'Mark'
        OR first_name = 'Nathan';