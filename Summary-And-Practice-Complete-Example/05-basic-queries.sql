-- Example of standard query with multiple (two) JOINs and a (WHERE) filter
-- SELECT e.name, e.description, l.street, l.house_number, c.name
-- FROM events AS e
-- INNER JOIN locations AS l ON l.id = e.location_id
-- INNER JOIN cities AS c ON c.id = l.city_id
-- WHERE c.name = 'Plovdiv';

-- Example of a query that uses retrieves data from intermediate table to then JOIN data from multiple tables
-- SELECT e.name, e.location_id, t.name
-- FROM events AS e
-- INNER JOIN tags_events AS te ON te.event_id = e.id
-- INNER JOIN tags AS t ON t.id = te.tag_id
-- WHERE e.name = 'Event 4';

-- SELECT u.first_name, u.last_name, e.name
-- FROM users AS u
-- LEFT JOIN organizers AS o ON o.user_id = u.id
-- LEFT JOIN events AS e ON e.id = o.event_id; 

SELECT e.name, u.email
FROM events AS e
LEFT JOIN users_events AS ue ON ue.event_id = e.id
LEFT JOIN users AS u ON u.id = ue.user_id;

