INSERT INTO users (first_name, last_name, email, address_id)
VALUES
( 'Conka', 'Bonbonkova', 'coni93@abv.bg', 1),
( 'Binka', 'Concheva', 'bibip12@gmail.com', 2),
( 'Valko', 'Pironkov', 'pirona@gmail.com', 3);

INSERT INTO addresses(street, house_number, city_id)
VALUES
('A boulevard', '1C', 1),
('B boulevard', '7F', 2),
('C boulevard', '9B', 3);

INSERT INTO cities(name)
VALUES
('Plovdiv'), ('Stara Zagora'), ('Varna');