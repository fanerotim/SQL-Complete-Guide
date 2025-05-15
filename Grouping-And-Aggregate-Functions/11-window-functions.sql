-- SELECT 
--     booking_date, 
--     amount_tipped, 
--     SUM(amount_tipped) 
-- OVER(PARTITION BY booking_date)
-- FROM bookings;

SELECT 
    b.booking_date, 
    SUM(b.guests) OVER(PARTITION BY b.guests) AS total_guests
FROM bookings AS b
ORDER BY total_guests DESC;



