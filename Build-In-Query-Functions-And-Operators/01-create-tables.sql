-- CREATE DATABASE gym;

-- DROP TABLE members;
-- DROP TABLE memberships;
-- DROP TABLE membership_type;

-- CREATE TABLE membership_type(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     price NUMERIC(5, 2) NOT NULL,
--     billing_frequency VARCHAR(250) NOT NULL
-- );

-- CREATE TABLE memberships(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     membership_start DATE NOT NULL,
--     membership_end DATE NOT NULL,
--     last_checkin DATE,
--     last_checkout DATE,
--     consumption NUMERIC(5, 2),
--     membership_type_id INT DEFAULT 1 NOT NULL,
--     FOREIGN KEY (membership_type_id) REFERENCES membership_type (id) ON DELETE SET DEFAULT
-- );

-- CREATE TABLE members(
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(250) NOT NULL,
--     last_name VARCHAR(250) NOT NULL,
--     gender VARCHAR(50) NOT NULL,
--     membership_id INT NOT NULL,
--     FOREIGN KEY (membership_id) REFERENCES memberships (id) ON DELETE CASCADE
-- );

CREATE TABLE memberships(
    -- id INT PRIMARY KEY AUTO_INCREMENT, MySQL
    id SERIAL PRIMARY KEY,
    membership_start DATE NOT NULL,
    membership_end DATE,
    last_checkin TIMESTAMP,
    last_checkout TIMESTAMP,
    consumption NUMERIC(5, 2),
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    price NUMERIC(5, 2) NOT NULL,
    billing_frequency INT NOT NULL,
    gender VARCHAR(250)
);

