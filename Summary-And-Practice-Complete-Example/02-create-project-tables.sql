CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(250) UNIQUE NOT NULL
);

CREATE TABLE cities(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    name VARCHAR(250) NOT NULL
);

CREATE TABLE tags(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY,  -- PostgreSQL
    name VARCHAR(250) UNIQUE NOT NULL
);

CREATE TABLE locations(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    street VARCHAR(250) NOT NULL, 
    house_number VARCHAR(250) NOT NULL,
    postal_code VARCHAR(250) NOT NULL,
    city_id INT NOT NULL,
    FOREIGN KEY (city_id) REFERENCES cities (id) ON DELETE RESTRICT ON UPDATE CASCADE
);

CREATE TABLE events(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    name VARCHAR(250) UNIQUE NOT NULL CHECK(LENGTH(name) > 5),
    image VARCHAR(250) NOT NULL,
    date_time TIMESTAMP NOT NULL,
    description TEXT NOT NULL,
    max_participants INT CHECK (max_participants > 0),
    min_age INT CHECK (min_age > 0),
    tag_id INT NOT NULL,
    location_id INT NOT NULL,
    FOREIGN KEY (tag_id) REFERENCES tags (id),
    FOREIGN KEY (location_id) REFERENCES locations (id) ON DELETE CASCADE
);

CREATE TABLE organizers(
    id INT PRIMARY KEY AUTO_INCREMENT, 
    -- id SERIAL PRIMARY KEY, -- PostgreSQL,
    password VARCHAR(250) NOT NULL,
    user_id INT NOT NULL,
    event_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES events (id)
);

CREATE TABLE tags_events(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    tag_id INT NOT NULL,
    event_id INT NOT NULL,
    FOREIGN KEY (tag_id) REFERENCES tags (id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES events (id) ON DELETE CASCADE
);

CREATE TABLE users_events(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    user_id INT NOT NULL,
    event_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id) ON DELETE CASCADE,
    FOREIGN KEY (event_id) REFERENCES events (id) ON DELETE CASCADE
);