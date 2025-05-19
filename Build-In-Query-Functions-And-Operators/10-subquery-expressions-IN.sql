-- Different queries to return the email of customers that have placed an order

-- This returns all customers even those that did not place an order
-- SELECT email FROM customers;

-- JOIN returns only customers that placed an order, but it returns duplicate values (emails in this case), not just unique values
-- SELECT c.email
-- FROM customers AS c
-- INNER JOIN orders AS o ON c.id = customer_id;

-- Example of IN() - this query returs the emails of people with names defined in the IN function
-- SELECT c.email
-- FROM customers AS c
-- WHERE c.first_name IN('Petko', 'Goshe')

-- Returns unique values (emails in this case) of customers that have placed an order. no duplicate values.
-- SELECT c.email
-- FROM customers AS c
-- WHERE c.id IN (
--     SELECT o.id
--     FROM orders AS o
--     WHERE o.customer_id = c.id
-- );

-- This query does the same as the above one, but it's shorter, clearer and probably better
SELECT c.email
FROM customers AS c
WHERE c.id IN(
    SELECT o.customer_id
    FROM orders AS o
);