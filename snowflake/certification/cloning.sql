// script for cloning a table in Snowflake
-- Create a clone of the users table
CREATE OR REPLACE TABLE users_clone CLONE users
;
-- Select all records from the cloned table to verify the clone operation
SELECT * FROM users_clone
;
-- End of cloning script
