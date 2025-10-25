# add queries with description
-- Description: Create table for storing user data
CREATE TABLE users (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    password VARCHAR(100)
);

# views
-- Description: Create view to get all users
CREATE VIEW all_users AS
SELECT * FROM users;

-- Description: Create view to get user by id
CREATE VIEW user_by_id AS
SELECT * FROM users WHERE id = ?;

-- Description: Create view to get user by email
CREATE VIEW user_by_email AS
SELECT * FROM users WHERE email = ?;

-- description