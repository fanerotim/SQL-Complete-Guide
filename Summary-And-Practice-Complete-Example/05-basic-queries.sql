-- Example of standard query with multiple (two) JOINs and a (WHERE) filter
-- SELECT e.name, e.description, l.street, l.house_number, c.name
-- FROM events AS e
-- INNER JOIN locations AS l ON l.id = e.location_id
-- INNER JOIN cities AS c ON c.id = l.city_id
-- WHERE c.name = 'Plovdiv';

-- Example of a query that uses retrieves data from intermediate table to then JOIN data from multiple tables
SELECT e.name, e.location_id, t.name
FROM events AS e
INNER JOIN tags_events AS te ON te.event_id = e.id
INNER JOIN tags AS t ON t.id = te.tag_id
WHERE e.name = 'Event 4';