-- CREATE DATABASE gym;

CREATE TABLE membership_type(
    id INT PRIMARY KEY AUTO_INCREMENT,
    price INT NOT NULL,
    billing_frequency VARCHAR(250) NOT NULL
);

CREATE TABLE memberships(
    id INT PRIMARY KEY AUTO_INCREMENT,
    membership_start DATE NOT NULL,
    membership_end DATE NOT NULL,
    last_checkin DATE,
    last_checkout DATE,
    consumption VARCHAR(250),
    membership_type_id INT DEFAULT 1 NOT NULL,
    FOREIGN KEY (membership_type_id) REFERENCES membership_type (id) ON DELETE SET DEFAULT
);

CREATE TABLE members(
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(250) NOT NULL,
    last_name VARCHAR(250) NOT NULL,
    gender VARCHAR(50) NOT NULL,
    membership_id INT NOT NULL,
    FOREIGN KEY (membership_id) REFERENCES memberships (id) ON DELETE CASCADE
);

