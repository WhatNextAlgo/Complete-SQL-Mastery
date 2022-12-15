SELECT e.employee_id, e.first_name as Emp , m.first_name as Manager
FROM sql_hr.employees e
LEFT JOIN sql_hr.employees m 
	ON e.reports_to = m.employee_id
