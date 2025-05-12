-- Query that returns number of bookings on a certain date and total amount paid
-- SELECT 
--     b.booking_date, 
--     COUNT(booking_date) AS bookings_count, 
--     SUM(b.amount_billed) AS total_amount
-- FROM bookings AS b
-- WHERE b.amount_billed > 30
-- GROUP BY b.booking_date, b.amount_billed;

-- Query that uses HAVING and returns dates on which tips were greater than a set amount and also the total amount of tips a well as the actual date
SELECT b.booking_date, SUM(amount_tipped) AS tips
FROM bookings AS b
GROUP BY b.booking_date
HAVING SUM(amount_tipped) > 20;

