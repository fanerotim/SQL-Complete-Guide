CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    email VARCHAR(250) NOT NULL,
    address_id INT NOT NULL
);

CREATE TABLE addresses(
    id INT PRIMARY KEY AUTO_INCREMENT, 
    -- id SERIAL PRIMARY KEY, --PostgreSQL
    street VARCHAR(500),
    house_number VARCHAR(300) NOT NULL,
    city_id INT NOT NULL
);

CREATE TABLE cities(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, --PostgreSQL
    name VARCHAR(300) NOT NULL
);