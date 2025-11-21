-- enter your schema for apartments, offices and storefronts below

-- APARTMENTS
CREATE TABLE apartments ( 
  id SERIAL PRIMARY KEY,
  apartment_number INT,
  bedrooms INT,
  bathrooms INT,
  address VARCHAR(64),
  tenant VARCHAR(64),
  occupied BOOLEAN,
  sq_ft INT,
  price INT 
);

--  id | apartment_number | bedrooms | bathrooms | address | tenant | occupied | sq_ft | price
-- ----+------------------+----------+-----------+---------+--------+----------+-------+-------
-- (0 rows)


-- OFFICES
CREATE TABLE offices (
  id SERIAL PRIMARY KEY,
  office_number INT,
  floors INT,
  sq_ft INT,
  cubicles INT,
  bathrooms INT,
  address VARCHAR(64),
  company VARCHAR(64),
  occupied BOOLEAN,
  price INT
);

--  id | office_number | floors | sq_ft | cubicles | bathrooms | address | company | occupied | price
-- ----+---------------+--------+-------+----------+-----------+---------+---------+----------+-------
-- (0 rows)


-- STOREFRONTS
CREATE TABLE storefronts (
  id SERIAL PRIMARY KEY,
  address VARCHAR(64),
  occupied BOOLEAN,
  price INT,
  kitchen BOOLEAN,
  sq_ft INT,
  owner VARCHAR(64),
  outdoor_seating BOOLEAN
);

--  id | address | occupied | price | kitchen | sq_ft | owner | outdoor_seating
-- ----+---------+----------+-------+---------+-------+-------+-----------------
-- (0 rows)
