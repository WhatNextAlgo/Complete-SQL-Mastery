USE sql_invoicing;

DROP VIEW sales_by_client;
CREATE VIEW sales_by_client AS
Select 
	c.client_id,
    c.name,
    Sum(invoice_total) As total_sales
from clients c
JOIN invoices i Using (client_id)
Group by client_id, name


