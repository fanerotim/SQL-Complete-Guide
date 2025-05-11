-- DROP TABLES tables;
-- DROP TABLES payment_methods;
-- DROP TABLES bookings;

-- CREATE DATABASE restaurants;

CREATE TABLE tables(
    id INT PRIMARY KEY AUTO_INCREMENT,
    seats INT NOT NULL,
    category VARCHAR(250) NOT NULL
);

CREATE TABLE payment_methods(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(250) NOT NULL
);

CREATE TABLE bookings (
    id INT PRIMARY KEY AUTO_INCREMENT,
    booking_date DATE NOT NULL,
    guests INT NOT NULL,
    amount_billed INT NOT NULL CHECK ( amount_billed > 0),
    amount_tipped INT NOT NULL CHECK (amount_tipped > 0),
    payment_id INT REFERENCES payment_methods (id) ON DELETE SET NULL,
    table_id INT REFERENCES tables (id) ON DELETE SET NULL
);

