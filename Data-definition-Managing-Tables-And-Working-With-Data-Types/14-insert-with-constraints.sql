-- Example of inserting data into table columns that have NOT-NULL constraint (PostgreSQL)

-- INSERT INTO users (full_name, current_status) 
-- VALUES (
--     'Paisii Petkanov',
--     'self-employed'
-- );

-- Example of inserting values into table columns that are not-nullable (MySQL)
INSERT INTO conversations (user_name, employer_name) 
VALUES(
    'PTZ',
    'Petko Petkov Zlatanov'
);