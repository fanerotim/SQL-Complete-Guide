-- DELETE FROM users
-- WHERE id = 1;

-- Deleting an address automatically deletes the user of that address
-- DELETE FROM addresses
-- WHERE id = 2;

-- Deleting a city automatically deletes all addresses linked to that city
DELETE FROM cities 
WHERE id = 2;