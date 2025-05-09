-- SELECT e.first_name, e.last_name, t.team_name 
-- FROM employees AS e
-- INNER JOIN teams AS t ON t.id = e.team_id
-- WHERE t.id = 1;

-- SELECT e.first_name, e.last_name, cb.name
-- FROM employees AS e
-- INNER JOIN company_buildings AS cb ON cb.id = e.id
-- WHERE cb.id = 1;

-- SELECT p.id AS project_id, e.first_name, e.last_name, p.description
-- FROM employees_projects AS ep
-- INNER JOIN employees AS e ON ep.employee_id = e.id
-- INNER JOIN projects AS p ON ep.project_id = p.id
-- WHERE e.id = 3
-- ORDER BY e.id;