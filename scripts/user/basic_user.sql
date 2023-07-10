-- Create the "user" table
CREATE TABLE user (
  uid INT PRIMARY KEY,
  firstname VARCHAR(50),
  lastname VARCHAR(50),
  email VARCHAR(100),
  city VARCHAR(50),
  country VARCHAR(50),
  address VARCHAR(100),
  gender VARCHAR(10),
  height DECIMAL(5, 2),
  weight DECIMAL(5, 2),
  age INT,
  date_of_birth DATE
);

-- Insert 100 sample entries into the "user" table
INSERT INTO user (uid, firstname, lastname, email, city, country, address, gender, height, weight, age, date_of_birth)
SELECT
  ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS uid,
  CONCAT('First', ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) AS firstname,
  CONCAT('Last', ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) AS lastname,
  CONCAT('email', ROW_NUMBER() OVER (ORDER BY (SELECT NULL)), '@example.com') AS email,
  CONCAT('City', ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) AS city,
  CONCAT('Country', ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) AS country,
  CONCAT('Address', ROW_NUMBER() OVER (ORDER BY (SELECT NULL))) AS address,
  CASE WHEN ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) % 2 = 0 THEN 'Male' ELSE 'Female' END AS gender,
  ROUND(RAND() * 100 + 150, 2) AS height,
  ROUND(RAND() * 100 + 50, 2) AS weight,
  ROUND(RAND() * 40 + 18) AS age,
  DATE_ADD('1980-01-01', INTERVAL ROUND(RAND() * 365 * 30) DAY) AS date_of_birth
FROM
  information_schema.columns;

-- Retrieve the first 10 entries from the "user" table
SELECT * FROM user LIMIT 10;
