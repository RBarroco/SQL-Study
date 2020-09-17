-- set @@global.sql_mode := concat('ONLY_FULL_GROUP_BY,', @@global.sql_mode);

-- set @@global.sql_mode := replace(@@global.sql_mode, 'ONLY_FULL_GROUP_BY', '');

# number of users that can connect to the server;
-- @@global.max_connections = 1000; 


-- .max_join_size()