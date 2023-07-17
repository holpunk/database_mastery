CREATE TABLE country_state (
  country_id INT,
  country_name VARCHAR(100),
  state_id INT,
  state_name VARCHAR(100)
);


select * from country_state

INSERT INTO country_state (country_id, country_name, state_id, state_name)
VALUES
  (1, 'Germany', 1, 'Baden-Württemberg'),
  (1, 'Germany', 2, 'Bavaria (Bayern)'),
  (1, 'Germany', 3, 'Berlin'),
  (1, 'Germany', 4, 'Brandenburg'),
  (1, 'Germany', 5, 'Bremen'),
  (1, 'Germany', 6, 'Hamburg'),
  (1, 'Germany', 7, 'Hesse (Hessen)'),
  (1, 'Germany', 8, 'Lower Saxony (Niedersachsen)'),
  (1, 'Germany', 9, 'Mecklenburg-Vorpommern'),
  (1, 'Germany', 10, 'North Rhine-Westphalia (Nordrhein-Westfalen)'),
  (1, 'Germany', 11, 'Rhineland-Palatinate (Rheinland-Pfalz)'),
  (1, 'Germany', 12, 'Saarland'),
  (1, 'Germany', 13, 'Saxony (Sachsen)'),
  (1, 'Germany', 14, 'Saxony-Anhalt (Sachsen-Anhalt)'),
  (1, 'Germany', 15, 'Schleswig-Holstein'),
  (1, 'Germany', 16, 'Thuringia (Thüringen)'),
  (2, 'United Kingdom', 17, 'England'),
  (2, 'United Kingdom', 18, 'Scotland'),
  (2, 'United Kingdom', 19, 'Wales'),
  (2, 'United Kingdom', 20, 'Northern Ireland'),
  (3, 'France', 21, 'Île-de-France'),
  (3, 'France', 22, 'Provence-Alpes-Côte d''Azur'),
  (3, 'France', 23, 'Auvergne-Rhône-Alpes'),
  (3, 'France', 24, 'Hauts-de-France'),
  (3, 'France', 25, 'Brittany (Bretagne)'),
  (3, 'France', 26, 'Pays de la Loire'),
  (3, 'France', 27, 'Nouvelle-Aquitaine'),
  (3, 'France', 28, 'Occitanie'),
  (3, 'France', 29, 'Grand Est'),
  (3, 'France', 30, 'Centre-Val de Loire');


