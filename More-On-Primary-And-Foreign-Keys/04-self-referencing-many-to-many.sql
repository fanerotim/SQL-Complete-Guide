CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(250),
    last_name VARCHAR(250)
);

-- CREATE TABLE users_friends (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     user_id INT REFERENCES users (id) ON DELETE CASCADE,
--     friend_id INT REFERENCES users (id) ON DELETE CASCADE,
--     CHECK (user_id < friend_id)
-- );