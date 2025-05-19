-- Different queries to return the email of customers that have placed an order

-- SELECT email FROM customers;

-- JOIN returns duplicate emails (not just unique values)
-- SELECT c.email
-- FROM customers AS c
-- INNER JOIN orders AS o ON c.id = customer_id;

-- Example of IN() - this query returs the emails of people with names defined in the IN function
SELECT c.email
FROM customers AS c
WHERE c.first_name IN('Petko', 'Goshe')

-- Returns unique emails of people that have placed an order
-- SELECT c.email
-- FROM customers AS c
-- WHERE c.id IN (
--     SELECT o.id
--     FROM orders AS o
--     WHERE o.customer_id = c.id
-- );