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

-- Stored procedure to get user by id
CREATE PROCEDURE user_by_id
    @uid INT
AS
BEGIN
    SELECT * FROM users WHERE id = @uid;
END;
GO

-- Stored procedure to get user by email
CREATE PROCEDURE user_by_email
    @user_email VARCHAR(100)
AS
BEGIN
    SELECT * FROM users WHERE email = @user_email;
END;
GO