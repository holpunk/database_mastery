// Stored procedure

CREATE OR REPLACE PROCEDURE user_by_id (IN uid INT)
BEGIN
    SELECT * FROM users WHERE id = uid;
END;
/
-- Stored procedure to get user by email
CREATE OR REPLACE PROCEDURE user_by_email (IN user_email VARCHAR(100))
BEGIN
    SELECT * FROM users WHERE email = user_email;
END;
