# sql view - a virtual table whose contents are obtained from an existing table or tables, called base tables;
SELECT 
    *
FROM
    dept_emp;
    
SELECT 
    emp_no, from_date, to_date, COUNT(emp_no) AS Num
FROM
    dept_emp
GROUP BY emp_no
HAVING Num > 1;

# A view acts as a shortcut for writing the same SELECT statement everytime a new request has been made;
CREATE OR REPLACE VIEW v_dept_emp_latest_date AS
SELECT 
    emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
FROM
    dept_emp
GROUP BY emp_no;

# Saves code time;
# Don't duplicate in memory, so for many requests we don't need to be worried of multiple requests;
# Act as a dynamic table because it isntantly reflects adata and structural changes in the base table;
# Views are like pointers vs. memory itself; they are pointers to data-base;