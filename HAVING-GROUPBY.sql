/*
	SELECT 
    FROM
    WHERE
    GROUP BY
    HAVING
    ORDER BY
*/

# after HAVING, you can have a condition with an aggregate function, while WHERE cannot use aggregate
# functions within its condition

# "Extract all first names that appear more than 250 times in the "employees" table."
SELECT 
    first_name, COUNT(first_name) AS name_count
FROM
    employees
GROUP BY first_name
#HAVING It is used with the aggregate functions
HAVING COUNT(first_name) > 250 
ORDER BY first_name;


# EXERCISE Renato Answer
SELECT 
    emp_no, avg(salary)
FROM
    salaries
GROUP BY emp_no
HAVING avg(salary) > 120000
ORDER BY emp_no;

# Compare Answer 1
SELECT
    *, AVG(salary)
FROM
    salaries
WHERE
    salary > 120000
GROUP BY emp_no
ORDER BY emp_no;

# Compare Answer 2
SELECT
    *, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000;