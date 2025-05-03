INSERT INTO cities (name)
VALUES 
    ('London'), 
    ('New York'), 
    ('Amsterdam'), 
    ('Berlin');

INSERT INTO addresses (street, house_number, city_id)
VALUES
    -- ('Random street', '11B', 5), -- this user violates foreign key as we do not have a city with id = 5;
    ('Pepe street', '28C', 2), -- this example works as we have a city with id = 2;
    ('Random street', '1A', 2),
    ('Pancake street', '5', 1),
    ('Plum street', '23', 3);

INSERT INTO users (first_name, last_name, email, address_id)
VALUES 
    ('Penka', 'Djekova', 'penka85@abv.bg',1),
    ('Julieta', 'Pencheva', 'july.p@yahoo.com', 2),
    ('Paraskeva', 'Zlatanova', 'paraskeva_pld@abv.bg',2),
    ('Zilka', 'Chervenkova','zilka@gmail.com',3);