-- SELECT CONCAT(first_name, ' ', last_name)
-- FROM memberships;

-- SELECT CONCAT('$', price)
-- FROM memberships;

-- Insert data with a string function applied
-- INSERT INTO memberships(
--     membership_start,
--     membership_end,
--     last_checkin,
--     last_checkout,
--     consumption,
--     first_name,
--     last_name,
--     price,
--     billing_frequency,
--     gender   
-- )
-- VALUES
--     (
--     '2023-06-25', 
--     '2024-06-25', 
--     '2024-06-20 12:00', 
--     '2024-06-20 14:00', 
--     18.41, 
--     'Radoslav', 
--     'Radoslavov', 
--     670, 
--     1, 
--     LOWER('mAle')
-- );

-- SELECT last_name 
-- FROM memberships
-- WHERE LENGTH(last_name) > 9;


-- Insert data with a string function applied
-- INSERT INTO memberships(
--     membership_start,
--     membership_end,
--     last_checkin,
--     last_checkout,
--     consumption,
--     first_name,
--     last_name,
--     price,
--     billing_frequency,
--     gender   
-- )
-- VALUES
--     (
--     '2022-02-25', 
--     '2022-03-25', 
--     '2022-08-10 11:00', 
--     '2022-06-10 12:00', 
--     12.27, 
--     'Paraskeva', 
--     'Piskova', 
--     670, 
--     1, 
--     'mAle    '
-- );

-- Chain multiple string functions
SELECT LENGTH(TRIM(TRAILING ' ' FROM gender))
FROM memberships
WHERE last_name = 'Piskova';