-- YEAR
-- MONTH
-- DAY
-- HOUR
-- MINUTE
-- SECOND

-- SELECT EXTRACT(YEAR FROM last_checkin), last_checkin
-- FROM memberships;

-- BELOW QUERIES WORK IN MYSQL (NOT IN POSTGRESQL)

-- Get time
-- SELECT CONVERT(last_checkin, TIME)
-- FROM memberships;

-- Get date
-- SELECT CONVERT(last_checkin, DATE)
-- FROM memberships;

-- Get day / If we add + 1, then we make sure 1 is Monday, otherwise Monday is 0
-- SELECT WEEKDAY(last_checkin) + 1, last_checkin
-- FROM memberships;

-- POSTGRES EXAMPLE OF GETTING DAY (FROM 0 TO 6)

-- ISODOW MAKES SURE THAT THE WEEK STARTS FROM MONDAY (MONDAY RETURNS 0, SUNDAY 6) INSTEAD OF SUNDAY AS IT IS WITH DOW
-- SELECT EXTRACT(ISODOW FROM last_checkin) AS isodow_day, last_checkin
-- FROM memberships;

-- DOW STARTS WEEK ON SUNDAY, SO SUNDAY WILL BE 0
-- SELECT EXTRACT(DOW FROM last_checkin) AS dow_day, last_checkin
-- FROM memberships;

-- Get time Postgres
-- SELECT last_checkin::TIMESTAMP::TIME
-- FROM memberships;

-- Get date Postgres
SELECT last_checkin::TIMESTAMP::DATE
FROM memberships;