-- SELECT usr.id, usr.email 
-- FROM users AS usr
-- INNER JOIN addresses AS addr ON usr.id = addr.city_id;

-- Example with multiple INNER JOINs
-- SELECT usr.first_name, usr.last_name, addr.street, addr.house_number, city.name AS city_name
-- FROM users AS usr
-- INNER JOIN addresses AS addr ON addr.id = usr.address_id
-- INNER JOIN cities AS city ON city.id = addr.city_id
-- WHERE city.name = 'Stara Zagora';

SELECT city.name as city_name, addr.street, addr.house_number
FROM users AS usr
INNER JOIN cities AS city ON usr.address_id = city.id
INNER JOIN addresses AS addr ON city.id = addr.id;