-- Query that shows all constraint names in a table
-- SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE
-- FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
-- WHERE TABLE_NAME='employees';

-- Query that drops in this case UNIQUE constraint, but generally it can drop any constraint, we just need to know its name, which we can find by executing above query
-- ALTER TABLE employees
-- DROP CONSTRAINT team_id;

-- INSERT INTO company_buildings (name)
-- VALUES
--     ('Conner`s way'),
--     ('Big Meet Room'),
--     ('Library');

-- INSERT INTO teams (team_name, building_id)
-- VALUES
--     ('Web Builders', 2),
--     ('Web Masters', 1),
--     ('We like to code', 3);

-- INSERT INTO employees (first_name, last_name, email, team_id)
-- VALUES
--     ('Bongo', 'Jivkov', 'bongo_az@abv.bg', 1),
--     ('Bianka', 'Paparizova', 'b.paparizova@gmail.com', 2),
--     ('Benji', 'Paraskevov', 'benji@yahoo.com', 3),
--     ('Jivka', 'Jivkova', 'jivka@abv.bg', 2),
--     ('Karolina', 'Topurova', 'topurova@abv.bg', 2),
--     ('Marcho', 'Todorov', 'marcho.t@abv.bg', 2);

-- INSERT INTO intranet_accounts(email, password)
-- VALUES
--     ('bistra_89@abv.bg', 'my|Pass'),
--     ('boni.p@gmail.com', 'weakPass'),
--     ('tosho_78@abv.bg', 'WhyAPass?');

-- INSERT INTO projects (description)
-- VALUES
--     ('We are building a nice running app that helps users improve their running. We use ReactJS, ExpressJS and MySQL'),
--     ('Our project is a blog for a small business. We use Angular for frontend and Firebase for its database.'),
--     ('We are building a shop that will sell books. We are using Vanilla JS and MongoDB for its database. Backend is built with NodeJS / ExpressJS.');

-- INSERT INTO employees_projects (employee_id, project_id)
-- VALUES
--     (1, 3),
--     (1, 2),
--     (2, 1),
--     (2, 2),
--     (3, 3),
--     (3, 2);



-- Test email constraint on intranet_accounts table - we should not be able to add an email if it already exists in the table
-- INSERT INTO intranet_accounts(email, password)
-- VALUES('nosuchemail-2@abv.bg', 'pass')

-- Test FOREIGN KEY constraint on teams table - when a team is deleted, the employee should have NULL value SET on its team column
-- DELETE FROM teams
-- WHERE id = 1;

-- Also test FOREIGN KEY constraint on teams table - if a team does not exist, we should not be able to add employee
-- INSERT INTO employees (first_name, last_name, email, team_id)
-- VALUES ('Spiridon', 'Spiridonov', 'spiridon@abv.bg', 4);

-- Remove UNIQUE constraint from employees table's team_id column


-- SHOW INDEX
-- FROM employees;
