-- Example of how you create a table that has a check constraint making sure post is longer than 5 chars

-- CREATE TABLE posts(
--     author VARCHAR(200) NOT NULL,
--     age INT CHECK(age > 18)
-- );


-- Try to insert age less than the age set by the check constraint

-- INSERT INTO posts(author, age)
-- VALUES(
--     'P.Cholakov',
--     19
-- );

-- Try to set a check constraint that violates existing data in table colum

-- ALTER TABLE posts
-- ADD CONSTRAINT us_age_restriction CHECK(age >= 21);

-- Update existing data in table column

-- UPDATE posts
-- SET age= 21
-- WHERE author= 'P.Cholakov';

-- Try to now add check constraint to existing table column

ALTER TABLE posts
ADD CONSTRAINT us_age_restriction_repeat CHECK(age >= 21);