CREATE TABLE countries (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255),
  country_code CHAR(2),
  dial_code VARCHAR(10)
);

LOAD DATA INFILE '/path/to/countries.csv'
INTO TABLE countries
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

mysqldump -u root -p basic countries > countries.sql