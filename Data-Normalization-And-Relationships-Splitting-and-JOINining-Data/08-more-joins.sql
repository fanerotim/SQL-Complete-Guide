-- SELECT usr.email, addr.street, addr.house_number, cty.name
-- FROM users AS usr
-- INNER JOIN addresses AS addr ON usr.address_id = addr.id
-- INNER JOIN cities AS cty ON addr.city_id = cty.id;

SELECT cty.name AS city_name, addr.street, addr.house_number
FROM cities AS cty
-- LEFT JOIN addresses AS addr ON addr.city_id = cty.id; -- LEFT JOIN returns all cities in db even if they do not have an address
INNER JOIN addresses AS addr ON addr.city_id = cty.id; -- INNER JOIN returns only cities with an address
