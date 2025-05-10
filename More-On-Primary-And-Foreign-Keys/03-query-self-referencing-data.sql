-- Get all employess supervised by a supervisor we can check for
SELECT e2.first_name AS emp_first_name, e2.last_name AS emp_last_name, e2.supervisor_id, e1.first_name AS sup_first_name, e1.last_name AS sup_last_name
FROM employees AS e1
INNER JOIN employees AS e2 ON e1.id = e2.supervisor_id
WHERE e2.supervisor_id = 1;