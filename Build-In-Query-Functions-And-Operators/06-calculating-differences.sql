-- Get time difference / PostgreSQL
-- SELECT last_checkout - last_checkin AS session_length
-- FROM memberships;

-- Get date difference / PostgreSQL / Using the NOW() function 
-- SELECT NOW() - membership_start
-- FROM memberships;

-- MySQL examples
-- Get length of membership
-- SELECT DATEDIFF(NOW(), membership_start) AS membership_length
-- FROM memberships;

-- Get duration of workout
SELECT TIMESTAMPDIFF(MINUTE, last_checkin,last_checkout)
FROM memberships;