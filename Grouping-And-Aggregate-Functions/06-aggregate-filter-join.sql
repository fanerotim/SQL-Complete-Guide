-- Find average amount tipped, rounded to 2 decimal points for tables with more than 5 guests and bookigs after December 31, 2024.
-- SELECT ROUND(AVG(amount_tipped), 2) FROM bookings
-- WHERE guests > 5 AND booking_date > 2024-12-31;

-- Find the sum of billed amount FROM a certain table WHERE we specify which table and payment method
SELECT SUM(amount_billed)
FROM bookings AS b
INNER JOIN tables AS t ON b.table_id = t.id
INNER JOIN payment_methods AS pm ON b.payment_id = pm.id
WHERE t.id = 2 AND pm.name = 'cheque';