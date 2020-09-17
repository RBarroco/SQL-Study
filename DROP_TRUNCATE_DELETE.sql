# DROP vs TRUNCATE vs DELETE
# DROP will delete the whole table and won't be able to use COMMIT because the table will be GONE.
# TRUNCATE is DELTE without the WHERE close, it will clean the table data but keep the table on then,
	# you will be able to use it.
    
# DELETE remove row by row;

# TRUNCATE can be fast becaue is not used row by row and TRUNCATE resert eh counter of auto_increment
# DELETE go row by row and it doesn't reset

