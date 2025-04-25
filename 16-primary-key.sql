-- Example of a new table that has an id column; MySQL example;

-- CREATE TABLE books (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     author VARCHAR(250) NOT NULL,
--     title VARCHAR(250) NOT NULL,
--     summary VARCHAR(500)
-- );

-- Same example as above, but for PostgreSQL

CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    author VARCHAR(250) NOT NULL,
    title VARCHAR(250) NOT NULL,
    summary VARCHAR(500)
);

