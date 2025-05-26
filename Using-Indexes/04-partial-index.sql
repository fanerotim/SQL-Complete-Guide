-- Partial Indexes are only supported in PostgreSQL, MySQL does not support them
-- CREATE INDEX partial_exmpl ON addresses (city, postal_code)
-- WHERE postal_code = '4000';

EXPLAIN ANALYZE
SELECT city
FROM addresses
WHERE street = 'Abadjiiska'