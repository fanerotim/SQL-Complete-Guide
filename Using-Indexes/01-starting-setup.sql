-- CREATE DATABASE indexes;

-- CREATE TABLE users(
--     -- id INT PRIMARY KEY AUTO_INCREMENT,
--     id SERIAL PRIMARY KEY, --PostgreSQL
--     first_name VARCHAR(250) NOT NULL,
--     last_name VARCHAR(250) NOT NULL,
--     email VARCHAR(200) NOT NULL,
--     salary INT CHECK (salary > 0)
-- );

-- CREATE TABLE addresses(
--     -- id INT PRIMARY KEY AUTO_INCREMENT,
--     id SERIAL PRIMARY KEY, --PostgreSQL
--     street VARCHAR(250) NOT NULL,
--     house_number VARCHAR(250) NOT NULL,
--     postal_code VARCHAR(250) NOT NULL,
--     city VARCHAR(250) NOT NULL,
--     user_id INT REFERENCES users ON DELETE CASCADE
-- );

INSERT INTO users(
    first_name,
    last_name,
    email,
    salary
)
VALUES
    ('Pepa', 'Pironkova', 'peppa.p@abv.bg', 1500),
    ('Maria', 'Panayotova', 'm.panayotova@gmail.com', 2000),
    ('Gencho', 'Strashimirov', 'gena@abv.bg', 1800),
    ('Sasho', 'Kozunakov', 'kozukana@abv.bg', 1900),
    ('Mariayna', 'Hadjieva', 'mariyanka.h@yahoo.com', 1700),
    ('Paraskeva', 'Licheva', 'paraskeva@abv.bg', 1200),
    ('Tosho', 'Barbukov', 'toshob@abv.bg', 1100);

INSERT INTO addresses(
    street,
    house_number,
    postal_code,
    city,
    user_id
)
VALUES
    ('Makendonski blvd', 14, 4000,  'Plovdiv', 1),
    ('Filio Totio street', '14A', 4000, 'Plovdiv', 2),
    ('Maika Teresa blvd', 51, 4004, 'Plovdiv', 2),
    ('Abadjiiska', 12, 4004, 'Plovdiv', 3),
    ('Kolyo Ficheto', 78, 4000, 'Plovdiv', 1),
    ('Blvd Bulgaria', 132, 4000, 'Plovdiv', 4);