SELECT 
    state,
    city,
	SUM(invoice_total) AS total_sales,
    COUNT(*) AS Number_of_invoices
FROM invoices
JOIN clients  USING (client_id)
GROUP BY state,city with ROLLUP;


-- Exercise
SELECT 
	pm.name as payment_method,
	SUM(amount) AS total
FROM payments p
JOIN payment_methods pm ON pm.payment_method_id = p.payment_method
GROUP BY pm.name with ROLLUP


