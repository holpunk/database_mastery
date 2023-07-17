CREATE VIEW user_view AS
SELECT
  uid,
  firstname,
  lastname,
  email,
  city,
  country,
  address,
  gender,
  height,
  weight,
  age,
  date_of_birth
FROM
  user;
