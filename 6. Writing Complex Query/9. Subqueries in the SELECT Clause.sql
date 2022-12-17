Select 
	invoice_id,
    invoice_total,
    (Select avg(invoice_total) From invoices) As invoice_average,
    Invoice_total - (select invoice_average) As differece
From invoices;

-- Exercise

select 
	client_id,
    c.name as client,
    (Select SUM(invoice_total) from invoices where client_id = c.client_id) as total_sales,
    (Select avg(invoice_total) from invoices where client_id = c.client_id) as average,
    (select (total_sales- average)) as difference
FROM clients c
