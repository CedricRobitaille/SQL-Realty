-- 1. The average square footage of all offices.
SELECT AVG(sq_ft) 
FROM offices;
--           avg
-- -----------------------
--  5083.3333333333333333
-- (1 row)

-- 2. The total number of apartments.
SELECT COUNT(*) 
FROM apartments;
--  count
-- -------
--      3
-- (1 row)


-- 3. The apartments where there is no tenant
SELECT * 
FROM apartments 
WHERE tenant IS NULL;
--  id | apartment_number | bedrooms | bathrooms | address | tenant | occupied | sq_ft | price
-- ----+------------------+----------+-----------+---------+--------+----------+-------+-------
-- (0 rows)

-- 4. The names of all of the companies
  -- Assuming it's just from the offices, since storefronts are considered owners.
  SELECT company 
  FROM offices;
  -- Assuming we're including both storefronts and office owners/businesses
  SELECT company, owner 
  FROM storefronts 
  CROSS JOIN offices; 


-- 5. The number of cubicles and bathrooms in the 3rd office
SELECT cubicles, bathrooms
FROM offices
LIMIT 1 OFFSET 2;

--  cubicles | bathrooms
-- ----------+-----------
--        62 |         4
-- (1 row)


-- 6. The storefronts that have kitchens
SELECT *
FROM storefronts
WHERE kitchen = TRUE;

--  id |     address      | occupied | price | kitchen | sq_ft |     owner      | outdoor_seating
-- ----+------------------+----------+-------+---------+-------+----------------+-----------------
--   2 | 25 Street Street | f        |  7200 | t       |  1210 |                | t
--   3 | 26 Street Street | t        |  6800 | t       |  1180 | HAMBERGER DUDE | t
--   4 | 28 Street Street | t        |  9200 | t       |  1680 | HAMBERGER GAL  | t
-- (3 rows)


-- 7. The storefront with the highest square footage and outdoor seating
SELECT *
FROM storefronts
WHERE outdoor_seating = TRUE
ORDER BY sq_ft DESC
LIMIT 1;

--  id |     address      | occupied | price | kitchen | sq_ft |     owner     | outdoor_seating
-- ----+------------------+----------+-------+---------+-------+---------------+-----------------
--   4 | 28 Street Street | t        |  9200 | t       |  1680 | HAMBERGER GAL | t
-- (1 row)


-- 8. The office with the lowest number of cubicles
SELECT *
FROM offices
ORDER BY cubicles ASC
LIMIT 1;

--  id | office_number | floors | sq_ft | cubicles | bathrooms |      address      |       company        | occupied | price
-- ----+---------------+--------+-------+----------+-----------+-------------------+----------------------+----------+-------
--   1 |          2004 |      1 |  2230 |       25 |         2 | 2099 Business Ave | Door Hangers Limited | t        |  5300
-- (1 row)


-- 9. The office with the most cubicles and bathrooms
SELECT *
FROM offices
ORDER BY (cubicles + bathrooms) DESC
LIMIT 1;

--  id | office_number | floors | sq_ft | cubicles | bathrooms |      address      | company  | occupied | price
-- ----+---------------+--------+-------+----------+-----------+-------------------+----------+----------+-------
--   2 |          2005 |      3 |  7190 |      100 |         8 | 2099 Business Ave | REDACTED | t        | 22850
-- (1 row)