
Select * FROM (
	select 
		client_id,
		c.name as client,
		(Select SUM(invoice_total) from invoices where client_id = c.client_id) as total_sales,
		(Select avg(invoice_total) from invoices where client_id = c.client_id) as average,
		(select (total_sales- average)) as difference
	FROM clients c
) AS Sales_summery
WHERE total_sales IS NOT NULL
;
