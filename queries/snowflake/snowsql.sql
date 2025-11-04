// commands to start with snowsql

-- Connect to Snowflake
!connect --accountname <account_name> --username <username> --password <password> --dbname <database_name> --schemaname <schema_name>
-- End of snowsql commands
-- Snowflake DDL script to create a users table with Time Travel and Fail-safe features enabled
-- Enable Time Travel and Fail-safe features for the database
ALTER DATABASE my_database
SET DATA_RETENTION_TIME_IN_DAYS = 90; -- Time Travel retention period
;
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
-- Note: Snowflake automatically manages Fail-safe for all tables, so no additional configuration is needed
-- The Fail-safe period is 7 days after the Time Travel retention period ends.
-- End of Snowflake DDL script
-- script for cloning a table in Snowflake
-- Create a clone of the users table
CREATE OR REPLACE TABLE users_clone CLONE users
;
-- Select all records from the cloned table to verify the clone operation
SELECT * FROM users_clone
;
-- End of cloning script
-- script for the DML operations on the users table
-- Insert sample data into the users table
INSERT INTO users (name, email, password) VALUES
('Alice', 'example@example.com', 'password123'),
('Bob', 'test@test.com', 'securepass'),
('Charlie', 'john@doe.com', 'charliepwd');
-- Update a user's email
UPDATE users
SET email = 'example@doe.com'
WHERE name = 'Alice';
-- Delete a user by name
DELETE FROM users
WHERE name = 'Bob';
-- Select all users to verify the changes
SELECT * FROM users;
-- End of DML script
-- commands to end snowsql session
-- Disconnect from Snowflake
!exit
-- End of snowsql commands
