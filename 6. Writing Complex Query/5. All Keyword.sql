-- Select invoices larger than all invoices of client 3

use sql_invoicing;

SELECT * 
FROM invoices
Where invoice_total > (

SELECT
	MAX(invoice_total)
FROM invoices
where client_id = 3
);


-- ALL Keyword

SELECT * 
FROM Invoices
where invoice_total > ALL (
SELECT
	invoice_total
FROM invoices
where client_id = 3
);





