-- Task is to query last_checkin colmun from memberships table and output what day it was when the user last checked in

-- VERY IMPERFECT SOUTION, BUT IT WORKS
-- SELECT last_checkin, WEEKDAY(last_checkin) + 1,
--     CASE 
--         WHEN WEEKDAY(last_checkin) + 1 = 1 THEN 'Monday'
--         WHEN WEEKDAY(last_checkin) + 1 = 2 THEN 'Tuesday'
--         WHEN WEEKDAY(last_checkin) + 1 = 3 THEN 'Wednesday'
--         WHEN WEEKDAY(last_checkin) + 1 = 4 THEN 'Thursday'
--         WHEN WEEKDAY(last_checkin) + 1 = 5 THEN 'Friday'
--         WHEN WEEKDAY(last_checkin) + 1 = 6 THEN 'Saturday'
--         WHEN WEEKDAY(last_checkin) + 1 = 7 THEN 'Sunday'
--     END AS cur_day
-- FROM memberships AS m;


SELECT cur_day, last_checkin,
    CASE 
        WHEN cur_day = 1 THEN 'Monday'
        WHEN cur_day = 2 THEN 'Tuesday'
        WHEN cur_day = 3 THEN 'Wednesday'
        WHEN cur_day = 4 THEN 'Thursday'
        WHEN cur_day = 5 THEN 'Friday'
        WHEN cur_day = 6 THEN 'Saturday'
        WHEN cur_day = 7 THEN 'Sunday'
    END AS day_of_week
FROM (
    SELECT WEEKDAY(last_checkin) + 1 AS cur_day, last_checkin
    FROM memberships
) AS cur_dates_table;


