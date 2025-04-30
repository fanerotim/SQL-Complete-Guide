SELECT *
FROM cities AS city
LEFT JOIN addresses AS addr ON city.id = addr.city_id;