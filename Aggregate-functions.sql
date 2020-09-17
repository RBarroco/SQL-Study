# Aggregate functions -> they are applied on multiple rows of a single column of
# a table and return an output of a single value, THEY DO NOT TAKE INTO ACCOUNT NULL VALUES;

# COUNT() : counts the number of non-null records in a field;
# COUNT(DISTINCT) : counts the number of non-null records in a field;
SELECT COUNT(*) FROM salaries WHERE salary >= 100000;
SELECT COUNT(*) FROM dept_manager;
# SUM(): sums all the non-null values in a columns;
# MIN(): returns the minimum value from the entire list;
# MAX(): returns the maximum value from the entire list;
# AVG(): calculates the average of all non-null values belonging to a certain columns of a table;