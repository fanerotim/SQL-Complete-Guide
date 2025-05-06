-- DROP TABLE intranet_accounts;
-- DROP TABLE employees;
-- DROP TABLE teams;
-- DROP TABLE company_buildings;

-- CREATE TABLE projects (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     description VARCHAR(250) NOT NULL
-- );

-- CREATE TABLE company_buildings (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     name VARCHAR(250) NOT NULL
-- );

-- CREATE TABLE teams (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     team_name VARCHAR(250) NOT NULL,
--     building_id INT NOT NULL,
--     FOREIGN KEY (building_id) REFERENCES company_buildings (id) ON DELETE RESTRICT 
-- );

-- CREATE TABLE employees (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     first_name VARCHAR(250) NOT NULL, 
--     last_name VARCHAR(250) NOT NULL,
--     email VARCHAR(250) UNIQUE NOT NULL,
--     team_id INT UNIQUE,
--     FOREIGN KEY (team_id) REFERENCES teams (id) ON DELETE SET NULL
-- );

-- CREATE TABLE intranet_accounts (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     email VARCHAR(250) NOT NULL,
--     FOREIGN KEY (email) REFERENCES employees (email) ON DELETE CASCADE,
--     password VARCHAR(250) NOT NULL
-- );

-- Intermediate table => n:n
CREATE TABLE employees_projects (
    id INT PRIMARY KEY AUTO_INCREMENT,
    employee_id INT NOT NULL,
    project_id INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES employees (id) ON DELETE CASCADE,
    FOREIGN KEY (project_id) REFERENCES projects (id) ON DELETE CASCADE
);