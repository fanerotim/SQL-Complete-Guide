-- Query and filter for @gmail addresses only
-- SELECT u.email
-- FROM users AS u
-- WHERE u.email LIKE '%gmail.com'

-- Query how many users we have
-- SELECT COUNT(u.email) AS user_count
-- FROM users AS u

SELECT l.street, COUNT(l.street) AS location_count, c.name AS city
FROM locations AS l
LEFT JOIN cities AS c ON c.id = l.city_id
GROUP BY l.street, c.name;