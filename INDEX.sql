# SMALL DATA SETS = the cost of having an index might be higher than the benefits;
# A well-optimized index can make a positive impact on the search proccess;

# Indexing a "dictionary"
USE employees;

SELECT * FROM employees WHERE hire_date > '2000-01-01';

CREATE INDEX i_hire_date ON employees(hire_date);

# Composite indexes
SELECT * FROM employees WHERE first_name = 'Georgi' AND last_name = 'Facello';

CREATE INDEX i_composite ON employees(first_name, last_name);

SHOW INDEX FROM employees;

ALTER TABLE employees
DROP INDEX i_hire_date;

SELECT * FROM salaries WHERE salary > 89000;

CREATE INDEX i_salary ON salaries(salary);

