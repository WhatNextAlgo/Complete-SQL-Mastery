USE sql_invoicing;

CREATE VIEW sales_by_client AS
Select 
	c.client_id,
    c.name,
    Sum(invoice_total) As total_sales
from clients c
JOIN invoices i Using (client_id)
Group by client_id, name;



CREATE VIEW clients_balance AS
select 
	c.client_id,
    c.name,
    SUM(invoice_total - payment_total) AS Balance
FROM clients c
JOIN invoices i using (client_id)
GROUP BY c.client_id,
		c.name
