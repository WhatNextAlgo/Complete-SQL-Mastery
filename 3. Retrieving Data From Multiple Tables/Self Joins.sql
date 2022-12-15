
SELECT e.employee_id ,e.first_name as emp ,m.first_name as manager
FROM employees e
INNER JOIN employees m 
  ON e.reports_to = m.employee_id
