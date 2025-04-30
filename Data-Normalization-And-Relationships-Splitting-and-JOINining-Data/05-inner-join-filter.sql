SELECT addr.city_id, addr.street, city.name AS city_name, addr.house_number
FROM addresses AS addr
INNER JOIN cities AS city ON city.id = addr.city_id
WHERE city.name='Stara Zagora';