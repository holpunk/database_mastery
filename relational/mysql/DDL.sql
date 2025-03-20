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
DELIMITER //
CREATE PROCEDURE user_by_id(IN uid INT)
BEGIN
    SELECT * FROM users WHERE id = uid;
END //
DELIMITER ;

-- Stored procedure to get user by email
DELIMITER //
CREATE PROCEDURE user_by_email(IN user_email VARCHAR(100))
BEGIN
    SELECT * FROM users WHERE email = user_email;
END //
DELIMITER ;