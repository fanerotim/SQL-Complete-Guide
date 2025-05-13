-- SELECT MIN(amount_billed)
-- FROM (
--     SELECT b.booking_date, SUM(b.amount_billed) AS amount_billed
--     FROM bookings AS b
--     GROUP BY b.booking_date
-- )  AS amount_billed_table;

SELECT booking_date
FROM bookings
GROUP BY booking_date
HAVING SUM (amount_tipped) = (
    SELECT MAX(tips)
    FROM (
        SELECT b.booking_date, SUM(b.amount_tipped) AS tips
        FROM bookings AS b
        GROUP BY b.booking_date
    ) AS highest_tip_table
)
