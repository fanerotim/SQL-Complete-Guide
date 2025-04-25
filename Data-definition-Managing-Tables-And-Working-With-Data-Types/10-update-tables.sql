-- Example of table update / modification that works on MySQL
-- ALTER TABLE employers
-- MODIFY COLUMN yearly_revenue NUMERIC(5, 2);

-- Example of the same command as above, but for PostgreSQL
-- ALTER TABLE employers
-- ALTER COLUMN yearly_revenue SET DATA TYPE NUMERIC(5, 2);

-- Another example that works on PostgreSQL
-- ALTER TABLE employers
-- ALTER COLUMN company_address SET DATA TYPE VARCHAR(300);

-- Same example as the one above, but this works in MySQL
-- ALTER TABLE employers
-- MODIFY COLUMN company_address VARCHAR(300)

-- Update users table in MySQL
-- ALTER TABLE users
-- MODIFY COLUMN full_name VARCHAR(300);

-- Update users table in PostgreSQL
ALTER TABLE users
ALTER COLUMN full_name SET DATA TYPE VARCHAR(300)