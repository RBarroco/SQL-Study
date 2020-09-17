SELECT 
    *
FROM
    employees
ORDER BY emp_no DESC
LIMIT 10;

# Example 1:
INSERT INTO employees
(
	emp_no,
    birth_date,
    first_name,
    last_name,
    gender,
    hire_date
) VALUES
(
	999901,
    '1986-04-21',
    'John',
    'Smith',
    'M',
    '2011-01-01'
);

# Example 2:
INSERT INTO employees
(
	emp_no,
	birth_date,
    first_name,
    last_name,
    gender,
    hire_date
) VALUES
(
	999902,    
	'1973-3-26',
	'Patricia',
    'Lawrence',
    'F',
    '2005-01-01'
);

#Example 3: ERROR
-- INSERT INTO employees
-- VALUES
-- (
-- 	'999903',    
--     '1977-09-14'
--     'Johnathan',
--     'Creek'
-- );

# Example 4:
INSERT INTO employees
VALUES
(
	999903,    
    '1977-09-14',
    'Johnathan',
    'Creek',
    'M',
    '1999-01-01'
);
