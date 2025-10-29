# Snowflake DDL script to create a users table with Time Travel and Fail-safe features enabled

-- Enable Time Travel and Fail-safe features for the database
ALTER DATABASE my_database
SET DATA_RETENTION_TIME_IN_DAYS = 90; -- Time Travel retention period

ALTER DATABASE my_database
SET FAILSAFE = TRUE; -- Enable Fail-safe
;

-- Create a table for storing user data with Time Travel and Fail-safe
CREATE OR REPLACE TABLE users (
    id INT AUTOINCREMENT PRIMARY KEY,
    name STRING,
    email STRING,
    password STRING
)

DATA_RETENTION_TIME_IN_DAYS = 90; -- Time Travel retention period
;
-- Create a view to get all users
CREATE OR REPLACE VIEW all_users AS
SELECT * FROM users
;
-- Note: Snowflake automatically manages Fail-safe for all tables, so no additional configuration is needed at the table level.
-- The Fail-safe period is 7 days after the Time Travel retention period ends.
-- End of Snowflake DDL script
