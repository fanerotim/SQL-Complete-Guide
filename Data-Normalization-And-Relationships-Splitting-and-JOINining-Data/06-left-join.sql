-- SELECT *
-- FROM cities AS city
-- LEFT JOIN addresses AS addr ON city.id = addr.city_id;

SELECT *
FROM users AS usr
LEFT JOIN addresses AS addr ON usr.id = addr.id
LEFT JOIN cities AS cty ON addr.id = cty.id;
