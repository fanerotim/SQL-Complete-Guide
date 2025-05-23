-- Postgresql + ENUM => We have to create a custom type first
CREATE TYPE employment_status AS ENUM('employed', 'self-employed', 'unemployed');


CREATE TABLE users (
    full_name VARCHAR(200),
    yearly_salary INT,
    current_status employment_status -- PostgreSQL syntax with custom type (employment_status) defined above
    -- status ENUM('employed', 'self-employed', 'unemployed') -- MySQL syntax
);

