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
--     ('Bistra', 'Chervenkova', 'bistra_89@abv.bg', 1),
--     ('Bonka', 'Petrova', 'boni.p@gmail.com', 2),
--     ('Todor', 'Gabrov', 'tosho_78@abv.bg', 3);

-- INSERT INTO intranet_accounts(email, password)
-- VALUES
--     ('bistra_89@abv.bg', 'my|Pass'),
--     ('boni.p@gmail.com', 'weakPass'),
--     ('tosho_78@abv.bg', 'WhyAPass?');

INSERT INTO projects (description)
VALUES
    ('We are building a nice running app that helps users improve their running. We use ReactJS, ExpressJS and MySQL'),
    ('Our project is a blog for a small business. We use Angular for frontend and Firebase for its database.'),
    ('We are building a shop that will sell books. We are using Vanilla JS and MongoDB for its database. Backend is built with NodeJS / ExpressJS.');



-- Test email constraint on intranet_accounts table - we should not be able to add an email if it already exists in the table
-- INSERT INTO intranet_accounts(email, password)
-- VALUES('nosuchemail-2@abv.bg', 'pass')

-- Test FOREIGN KEY constraint on teams table - when a team is deleted, the employee should have NULL value SET on its team column
-- DELETE FROM teams
-- WHERE id = 1;

-- Also test FOREIGN KEY constraint on teams table - if a team does not exist, we should not be able to add employee
-- INSERT INTO employees (first_name, last_name, email, team_id)
-- VALUES ('Spiridon', 'Spiridonov', 'spiridon@abv.bg', 4);