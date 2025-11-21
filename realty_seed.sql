--enter your seed data below

-- APARTMENTS
INSERT INTO apartments ( apartment_number, bedrooms, bathrooms, address, tenant, occupied, sq_ft, price)
VALUES ( 1001, 2, 1, '1920 City Street', 'John Smith', TRUE, 670, 2600 );

INSERT INTO apartments ( apartment_number, bedrooms, bathrooms, address, tenant, occupied, sq_ft, price)
VALUES ( 1002, 1, 1, '1920 City Street', 'Jane Smith', TRUE, 490, 2100 );

INSERT INTO apartments ( bedrooms, bathrooms, address, tenant, occupied, sq_ft, price)
VALUES ( 4, 3, '720 Queen Drive', 'Richard Adams', TRUE, 1820, 5300 );

--  id | apartment_number | bedrooms | bathrooms |     address      |    tenant     | occupied | sq_ft | price
-- ----+------------------+----------+-----------+------------------+---------------+----------+-------+-------
--   1 |             1001 |        2 |         1 | 1920 City Street | John Smith    | f        |   670 |  2600
--   2 |             1002 |        1 |         1 | 1920 City Street | Jane Smith    | t        |   490 |  2100
--   3 |                  |        4 |         3 | 720 Queen Drive  | Richard Adams | t        |  1820 |  5300
-- (3 rows)


-- OFFICES
INSERT INTO offices ( office_number, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price )
VALUES ( 2004, 1, 2230, 25, 2, '2099 Business Ave', 'Door Hangers Limited', TRUE, 5300);

INSERT INTO offices ( office_number, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price )
VALUES ( 2005, 3, 7190, 100, 8, '2099 Business Ave', 'REDACTED', TRUE, 22850);

INSERT INTO offices ( office_number, floors, sq_ft, cubicles, bathrooms, address, company, occupied, price )
VALUES ( 2006, 2, 5830, 62, 4, '2099 Business Ave', 'Macrophones', TRUE, 8820);

--  id | office_number | floors | sq_ft | cubicles | bathrooms |      address      |       company        | occupied | price
-- ----+---------------+--------+-------+----------+-----------+-------------------+----------------------+----------+-------
--   1 |          2004 |      1 |  2230 |       25 |         2 | 2099 Business Ave | Door Hangers Limited | t        |  5300
--   2 |          2005 |      3 |  7190 |      100 |         8 | 2099 Business Ave | REDACTED             | t        | 22850
--   3 |          2006 |      2 |  5830 |       62 |         4 | 2099 Business Ave | Macrophones          | t        |  8820
-- (3 rows)


-- STOREFRONTS
INSERT INTO storefronts ( address, occupied, price, kitchen, sq_ft, outdoor_seating )
VALUES ( '25 Street Street', FALSE, 7200, TRUE, 1210, TRUE );

INSERT INTO storefronts ( address, occupied, price, kitchen, sq_ft, owner, outdoor_seating )
VALUES ( '26 Street Street', TRUE, 6800, TRUE, 1180, 'HAMBERGER DUDE', TRUE );

INSERT INTO storefronts ( address, occupied, price, kitchen, sq_ft, owner, outdoor_seating )
VALUES ( '28 Street Street', TRUE, 9200, TRUE, 1680, 'HAMBERGER GAL', TRUE );

--  id |     address      | occupied | price | kitchen | sq_ft |     owner      | outdoor_seating
-- ----+------------------+----------+-------+---------+-------+----------------+-----------------
--   2 | 25 Street Street | f        |  7200 | t       |  1210 |                | t
--   3 | 26 Street Street | t        |  6800 | t       |  1180 | HAMBERGER DUDE | t
--   4 | 28 Street Street | t        |  9200 | t       |  1680 | HAMBERGER GAL  | t
-- (3 rows)