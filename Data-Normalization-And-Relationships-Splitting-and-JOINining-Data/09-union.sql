SELECT * FROM users
WHERE id <= 2
UNION
SELECT * FROM users
WHERE id >= 5;