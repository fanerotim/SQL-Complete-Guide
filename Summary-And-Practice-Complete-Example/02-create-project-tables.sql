CREATE TABLE users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(250) UNIQUE NOT NULL
);

CREATE TABLE organizers(
    id INT PRIMARY KEY AUTO_INCREMENT, 
    -- id SERIAL PRIMARY KEY, -- PostgreSQL,
    password VARCHAR(250) NOT NULL,
    user_id INT NOT NULL,
    event_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (event_id) REFERENCES events (id)
);

CREATE TABLE events(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    name VARCHAR(250) UNIQUE NOT NULL,
    image VARCHAR(250) NOT NULL,
    date_time TIMESTAMP NOT NULL,
    description VARCHAR(350) UNIQUE NOT NULL,
    max_participants INT CHECK max_participants > 0 NOT NULL,
    min_age INT CHECK min_age > 0 NOT NULL,
    organizer_id INT NOT NULL,
    tag_id INT NOT NULL,
    location_id INT NOT NULL,
    FOREIGN KEY (organizer_id) REFERENCES organizers (id),
    FOREIGN KEY (tag_id) REFERENCES tags (id),
    FOREIGN KEY (location_id) REFERENCES locations (id)
);

CREATE TABLE locations(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    street VARCHAR(250) NOT NULL, 
    house_number VARCHAR(250) NOT NULL,
    postal_code VARCHAR(250) NOT NULL,
    city_id INT NOT NULL,
    FOREIGN KEY (city_id) REFERENCES cities (id)
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

CREATE TABLE tags_events(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    tag_id INT NOT NULL,
    event_id INT NOT NULL
);

CREATE TABLE users_events(
    id INT PRIMARY KEY AUTO_INCREMENT,
    -- id SERIAL PRIMARY KEY, -- PostgreSQL
    user_id INT NOT NULL,
    event_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (event_id) REFERENCES events (id)
);

-- CREATE TABLE registered_users_events(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     -- id SERIAL PRIMARY KEY, -- PostgreSQL
--     event_id INT REFERENCES events (id) ON DELETE CASCADE, 
--     user_id INT REFERENCES users (id) ON DELETE CASCADE
-- );