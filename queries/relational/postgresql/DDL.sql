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

-- Function to get user by id
CREATE OR REPLACE FUNCTION user_by_id(uid INT)
RETURNS SETOF users AS $$
    SELECT * FROM users WHERE id = uid;
$$ LANGUAGE SQL;

-- Function to get user by email
CREATE OR REPLACE FUNCTION user_by_email(u_email VARCHAR(100))
RETURNS SETOF users AS $$
    SELECT * FROM users WHERE email = u_email;
$$ LANGUAGE SQL;