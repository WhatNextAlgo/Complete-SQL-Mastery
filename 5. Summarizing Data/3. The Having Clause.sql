SELECT 
    state,
    city,
	SUM(invoice_total) AS total_sales,
    COUNT(*) AS Number_of_invoices
FROM invoices
JOIN clients  USING (client_id)
GROUP BY state,city
HAVING total_sales > 500 and Number_of_invoices > 5;

-- Exercise
USE sql_store;

SELECT 
	c.customer_id,
    c.first_name,
    c.last_name,
    SUM(oi.quantity * oi.unit_price) as total_sales
FROM customers c
JOIN orders o USING (customer_id)
JOIN order_items oi using (order_id)
WHERE c.state = 'VA'
GROUP BY 
	c.customer_id,
    c.first_name,
    c.last_name
having total_sales > 100


