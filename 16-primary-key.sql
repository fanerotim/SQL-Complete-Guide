-- CREATE TYPE employment_status AS ENUM('emplyed', 'unemployed', 'self-employed'); -- PostgreSQL

-- CREATE TABLE users (
--     id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
--     -- id SERIAL PRIMARY KEY, -- PostgreSQL
--     full_name VARCHAR(300) NOT NULL,
--     yearly_salary INT,
--     current_status ENUM('employed', 'self-employed', 'unemployed') -- MySQL 
--     -- current_status employment_status -- PostgreSQL
-- );

-- CREATE TABLE employers (
--     id INT PRIMARY KEY AUTO_INCREMENT, -- MySQL
--     -- id SERIAL PRIMARY KEY, -- PostgreSQL
--     company_name VARCHAR(250) NOT NULL,
--     company_address VARCHAR(300) NOT NULL,
--     yearly_revenue NUMERIC(5, 2),
--     is_hiring BOOLEAN NOT NULL
-- );

-- CREATE TABLE conversations (
--     -- id SERIAL PRIMARY KEY, -- PostgreSQL
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     user_id INT,
--     employer_id INT,
--     message TEXT NOT NULL,
--     date_sent TIMESTAMP
-- );

INSERT INTO conversations (user_id, employer_id, message)
VALUES(
    1,
    2,
    'Hi, I`m interested in your company!'
);

