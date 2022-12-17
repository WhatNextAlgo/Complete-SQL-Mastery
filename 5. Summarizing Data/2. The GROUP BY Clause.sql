SELECT 
    state,
    city,
	SUM(invoice_total) AS total_sales
FROM invoices
JOIN clients  USING (client_id)
GROUP BY state,city
ORDER BY total_sales DESC;

-- Exercise

SELECT 
	date,
    pm.name as payment_methods,
    SUM(amount) as total_payments
FROM payments p
JOIN payment_methods pm ON p.payment_method = pm.payment_method_id
GROUP BY date ,payment_methods
ORDER BY date

