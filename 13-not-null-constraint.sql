-- add NOT NULL constraint to tables in MySQL
-- ALTER TABLE conversations
-- MODIFY COLUMN user_name VARCHAR(250) NOT NULL,
-- MODIFY COLUMN employer_name VARCHAR(200) NOT NULL;

-- add NOT NULL constrainst to users table in PostgreSQL
ALTER TABLE users
ALTER COLUMN full_name SET NOT NULL,
ALTER COLUMN current_status SET NOT NULL;