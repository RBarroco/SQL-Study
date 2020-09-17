# EXISTS -> test rows values / quicker in retrieving large amounts of data
# IN -> searches among values / faster with smaller datasets

# SOME JOINS usually is more efficient than IN, specially using WHERE clause;

SELECT
	e.first_name, e.last_name
FROM
	employees e
WHERE
	EXISTS( SELECT
			*
		FROM
			dept_manager dm
		WHERE
			dm.emp_no = e.emp_no)
ORDER BY emp_no;

# EXERCISE
# Select the entire information for all employees whose job title is “Assistant Engineer”. 
# Hint: To solve this exercise, use the 'employees' table.
SELECT
	*
FROM
	employees e
WHERE
	EXISTS( SELECT
		*
		FROM
			titles t
		WHERE
            t.emp_no = e.emp_no AND title = 'Assistant Engineer');
