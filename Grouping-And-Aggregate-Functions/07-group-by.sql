-- SELECT booking_date, SUM(amount_tipped)
-- FROM bookings
-- GROUP BY booking_date;

SELECT b.booking_date, SUM(b.amount_billed), ROUND(AVG(b.amount_tipped), 2) AS avg_amount_tipped, pm.name AS payment_method
FROM bookings AS b
INNER JOIN payment_methods AS pm ON b.payment_id = pm.id
GROUP BY b.booking_date, pm.name;