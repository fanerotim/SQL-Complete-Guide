-- SELECT usr.id, usr.email 
-- FROM users AS usr
-- INNER JOIN addresses AS addr ON usr.id = addr.city_id;

SELECT addr.street, addr.house_number
FROM addresses AS addr
INNER JOIN cities AS c ON addr.city_id = c.id;