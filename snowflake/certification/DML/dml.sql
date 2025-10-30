// script for the DML operations on the users table

-- Insert sample data into the users table
INSERT INTO users (name, email, password) VALUES
('Alice', 'alice@example.com', 'password123'),
('Bob', 'bob@example.com', 'securepass'),
('Charlie', 'charlie@example.com', 'charliepwd');

-- Update a user's email
UPDATE users
SET email = 'update_email@example.com'
WHERE name = 'Alice';

-- Delete a user by name
DELETE FROM users
WHERE name = 'Bob';

-- Select all users to verify the changes
SELECT * FROM users;
-- End of DML script