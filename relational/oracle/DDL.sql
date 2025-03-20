-- Create table for storing user data
CREATE TABLE users (
    id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    email VARCHAR2(100),
    password VARCHAR2(100)
);

-- Create view to get all users
CREATE OR REPLACE VIEW all_users AS
SELECT * FROM users;

-- Stored procedure to get user by id using a ref cursor
CREATE OR REPLACE PROCEDURE user_by_id(
    uid IN NUMBER,
    out_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN out_cursor FOR SELECT * FROM users WHERE id = uid;
END;
/

-- Stored procedure to get user by email using a ref cursor
CREATE OR REPLACE PROCEDURE user_by_email(
    user_email IN VARCHAR2,
    out_cursor OUT SYS_REFCURSOR
) IS
BEGIN
    OPEN out_cursor FOR SELECT * FROM users WHERE email = user_email;
END;
/