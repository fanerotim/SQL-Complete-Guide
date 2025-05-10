-- Return all friends of a certain user as well as that user's name
SELECT u1.id AS user_id, u1.first_name, u1.last_name, u.first_name AS friend_first_name, u.last_name AS friend_last_name
FROM users_friends AS uf
INNER JOIN users AS u ON uf.user_id = u.id
INNER JOIN users AS u1 ON uf.friend_id = u1.id
WHERE u.id = 1;