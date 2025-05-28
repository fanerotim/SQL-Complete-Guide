-- INSERT INTO users(
--     first_name,
--     last_name,
--     birthdate,
--     email
-- )
-- VALUES
--     ('Shona', 'Davis', '1988-03-01', 'shona@gmail.com'),
--     ('Petko', 'Motoretko', '1980-02-20', 'petko.motora@gmail.com'),
--     ('Bonka', 'Petleshkova', '1962-10-12', 'boni.62@abv.com'),
--     ('David', 'Sparrow', '2000-12-11', 's.david@gmail.com'),
--     ('Melissa', 'Johansson', '1974-07-17', 'meli.joh@gmail.com'),
--     ('Blagovest', 'Ivaylov', '1985-04-30', 'blago.i@gmail.com');

-- INSERT INTO cities(
--     name
-- )
-- VALUES
--     ('Plovdiv'),   
--     ('New York'),   
--     ('Madrid'),   
--     ('Brestovitsa'),   
--     ('Sofia'),   
--     ('Munich');

-- INSERT INTO tags(
--     name 
-- )
-- VALUES
--     ('Sport'),
--     ('Art'),
--     ('Music'),
--     ('Games'),
--     ('Computers'),
--     ('Literature');

INSERT INTO locations(
    street,
    house_number,
    postal_code,
    city_id
)
VALUES
    ('Blvd 1', '12A', '4004', 1),
    ('Street 2', '1C', '4000', 2),
    ('Petko street', '7B', '3001', 3),
    ('Blvd 2', '38D', '1004', 4),
    ('Tundra street', '112A', '601', 5),
    ('Street 232', '199Q', 'E161TG', 5);

INSERT INTO events(
    name,
    image,
    date_time,
    description,
    max_participants,
    min_age,
    tag_id,
    location_id
)
VALUES
    ('Event 1', 'image1.jpg', '2025-05-27 20:20', 'This is desc 1', 20, 7, 2, 3),
    ('Event 2', 'image2.jpg', '2025-05-27 20:20', 'This is desc 2', 15, 25, 1, 2),
    ('Event 3', 'image3.jpg', '2025-05-27 20:20', 'This is desc 3', 30, 100, 3, 1),
    ('Event 4', 'image4.jpg', '2025-05-27 20:20', 'This is desc 4', 9, 25, 4, 4),
    ('Event 5', 'image5.jpg', '2025-05-27 20:20', 'This is desc 5', 45, 10, 5, 5),
    ('Event 6', 'image6.jpg', '2025-05-27 20:20', 'This is desc 6', 68, 15, 3, 4);

INSERT INTO organizers(
    password,
    user_id,
    event_id
)
VALUES
    ('pass1', 1, 2),
    ('pass2', 2, 1),
    ('pass3', 3, 3),
    ('pass4', 4, 5),
    ('pass5', 5, 4),
    ('pass6', 2, 1);

INSERT INTO tags_events(
    tag_id,
    event_id
)
VALUES
    (1, 4),
    (2, 3),
    (3, 2),
    (4, 1),
    (5, 5),
    (6, 4);

INSERT INTO users_events(
    user_id,
    event_id
)
VALUES
    (6, 5),
    (5, 4),
    (4, 3),
    (3, 2),
    (2, 1),
    (1, 1);