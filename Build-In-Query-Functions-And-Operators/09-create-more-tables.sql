-- CREATE TABLE customers(
--     -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
--     id SERIAL PRIMARY KEY,
--     first_name VARCHAR(250) NOT NULL,
--     last_name VARCHAR(250) NOT NULL,
--     email VARCHAR(300) NOT NULL
-- );

-- CREATE TABLE orders(
--     -- id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
--     id SERIAL PRIMARY KEY,
--     amount_billed NUMERIC(5, 2),
--     customer_id INT NOT NULL,
--     FOREIGN KEY (customer_id) REFERENCES customers (id) ON DELETE CASCADE
-- );

INSERT INTO customers(
    first_name, 
    last_name, 
    email
)
VALUES
    -- ('Petko', 'Dimitrov', 'petko.d@abv.bg'),
    -- ('Goshe', 'Dimov', 'dimov.g@gmail.com'),
    -- ('Haralampi', 'Ivanov', 'haralampii@gmail.com'),
    -- ('Borimir', 'Asenov', 'borimir@borimira.com'),
    ('Tosho', 'Bogdanov', 'tosho2@abv.bg');

INSERT INTO orders(
    amount_billed,
    customer_id
)
VALUES
    (15.50, 1),
    (50.42, 2),
    (100.37, 3),
    (200.14, 4),
    (32.84, 1),
    (5.07, 2),
    (19.12, 3),
    (63.78, 4);