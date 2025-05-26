-- CREATE INDEX salaryidx ON users (salary);
-- CREATE UNIQUE INDEX salaryidx ON users (salary); --Creating a UNIQUE index

-- Dropping an index / MySQL
-- ALTER TABLE addresses
-- DROP INDEX multidx; 

-- MULTI-COLUMN INDEX EXAMPLE
-- CREATE INDEX multidx ON addresses (city, street, postal_code);

-- Using AND keyword causes the query to use the multi-column index;
-- We can filter for just one of the columns, for example just for city and we the query will still use the multi-column index
-- If we use just one column in the query, then it needs to be the leftmost one

-- Using OR keyword causes the query to just filter the table normally and will not use the index
EXPLAIN ANALYZE
SELECT * 
FROM addresses
WHERE city = 'Plovdiv' AND postal_code = 4004; 
