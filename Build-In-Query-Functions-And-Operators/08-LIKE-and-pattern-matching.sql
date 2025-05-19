-- Return all names that start with 'I' (we do not know how they end or how long they are);
-- SELECT first_name LIKE 'I%', first_name
-- FROM memberships;

-- POSTGRESQL IS CASE-SENSITIVE
-- Return a name that starts with B and it has 5 more chatacters after that (selected by 5 underscores, _____)
-- SELECT first_name LIKE 'B_____', first_name
-- FROM memberships;

-- MYSQL IS NOT CASE-SENSITIVE, SO SAME QUERY AS ABOVE CAN BE RUN WITH LOWERCASE 'b'
-- SELECT first_name LIKE 'b_____', first_name
-- FROM memberships;

-- THIS QUERY ALSO WORKS IN MYSQL, BUT NOT IN POSTGRESQL
-- SELECT first_name LIKE 'b%', first_name
-- FROM memberships;

-- With this query we do not know what letter/ characters are before or after the 'i'
SELECT last_name
FROM memberships
WHERE last_name LIKE '%i%'