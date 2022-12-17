-- Select employees whose salary is 
-- above the average in their office
USE sql_hr;

SElECT 
	*
FROM employees e
WHERE salary > (
select avg(salary) 
FROM employees
Where office_id = e.office_id
);

-- Get Invoices that are larger than the client's average invoice amount
Use sql_invoicing;

SELECT 
	*
FROM invoices i
WHERE invoice_total > (
Select avg(invoice_total)
FROM invoices
Where client_id = i.client_id
); 
