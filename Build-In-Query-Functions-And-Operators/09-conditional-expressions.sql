-- Conditional expression with an Alias forthe query
SELECT amount_billed,
    CASE
        WHEN amount_billed > 50 AND amount_billed < 100 THEN 'Average order'
        WHEN amount_billed > 100 AND amount_billed < 200 THEN 'Big order'
        WHEN amount_billed > 200 THEN 'Amazing order'
        ELSE 'Small order'
    END AS 'order_type'
FROM orders;

