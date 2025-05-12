SELECT booking_date, SUM(amount_tipped)
FROM bookings
GROUP BY booking_date;