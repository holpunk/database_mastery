-- Stored procedure to get user by id
CREATE PROCEDURE user_by_id
    @uid INT
AS
BEGIN
SELECT * FROM users WHERE id = @uid;
END
GO

-- Stored procedure to get user by email
CREATE PROCEDURE user_by_email
    @user_email VARCHAR(100)
AS
BEGIN
SELECT * FROM users WHERE email = @user_email;
END
GO
