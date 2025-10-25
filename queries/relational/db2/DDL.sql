-- Create table for storing user data
CREATE TABLE users (
                       id INT PRIMARY KEY,
                       name VARCHAR(100),
                       email VARCHAR(100),
                       password VARCHAR(100)
);

-- Create view to get all users
CREATE VIEW all_users AS
SELECT * FROM users;
