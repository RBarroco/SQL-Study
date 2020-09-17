# non-aggregated vs # aggregated cannot be mixed in the HAVING function;
SELECT 
    *
FROM
    employees
HAVING hire_date >= '2000-01-01';


SELECT 
    first_name, COUNT(first_name) as name_count
FROM
    employees
WHERE
	hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name DESC;