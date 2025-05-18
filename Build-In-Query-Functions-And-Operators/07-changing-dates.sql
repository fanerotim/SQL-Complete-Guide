-- MySQL 
-- DAY, MONTH, YEAR
-- SELECT DATE_ADD(membership_start, INTERVAL 3 DAY), membership_start
-- FROM memberships;

-- SELECT DATE_ADD(membership_start, INTERVAL 2 MONTH), membership_start
-- FROM memberships;

-- Subtract date / time
-- SELECT DATE_SUB(membership_start, INTERVAL 2 YEAR), membership_start
-- FROM memberships;

-- Subtract times, in this case minuts from a timestamp
-- SELECT DATE_SUB(last_checkin, INTERVAL 10 MINUTE), last_checkin
-- FROM memberships;

-- POSTGRESQL EXAMPLES --

-- Remove / add (+ / -) days from a date
-- SELECT membership_end + 13 AS extended_memberships, membership_end
-- FROM memberships;

-- Add MONTHS / YEARS to a date / Below example works, but it also adds TIMESTAMP to result
-- SELECT membership_start - INTERVAL '1 YEAR', membership_start
-- FROM memberships;

-- This example is the same as the above, but we clarify what the result should include, this case we want to remove TIME
SELECT (membership_start + INTERVAL '3 MONTH')::TIMESTAMP::DATE, membership_start
FROM memberships;
