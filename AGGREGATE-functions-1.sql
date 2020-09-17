# Summarizing functions;
# COUNT(),
# SUM(),
# MIN(),
# MAX(),
# AVG()

################
SELECT 
    *
FROM
    salaries
ORDER BY salary DESC;

################
SELECT 
    COUNT(*)
FROM
    salaries;
    
SELECT 
    dept_no, COUNT(dept_no)
FROM
    dept_emp
GROUP BY dept_no;

SELECT COUNT(distinct dept_no) from dept_emp;
