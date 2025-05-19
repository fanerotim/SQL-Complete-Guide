-- EXISTS returns true/ false if a certain value exists in DB
-- SELECT EXISTS(
--     SELECT first_name, last_name
--     FROM memberships
--     WHERE gender = 'male'
-- );

-- EXAMPLE OF EXISTS() function
-- SELECT c.first_name, c.last_name, c.email
-- FROM customers AS c
-- WHERE EXISTS (
--     SELECT o.amount_billed
--     FROM orders AS o
--     WHERE o.customer_id = c.id AND c.id = 3
-- );

-- ANOTHER EXAMPLE
SELECT SUM(o.amount_billed) AS total_amount_paid
-- SELECT o.amount_billed
FROM orders AS o
WHERE EXISTS(
    SELECT c.id
    FROM customers AS c
    WHERE c.id = o.customer_id AND c.email = 'dimov.g@gmail.com'
); 