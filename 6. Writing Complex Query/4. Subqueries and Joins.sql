-- Find Clients without invoices
use sql_invoicing;

SELECT 
	*
FROM clients
WHERE client_id not in (
	SELECT
	DISTINCT client_id
FROM invoices);

SELECT 
	c.*
FROM clients c
LEFT JOIN invoices i USING (client_id)
WHERE invoice_id IS NULL;

-- Find the customers who have ordered lettuce id = 3
-- select customer_id, first_name, last_name

use sql_store;
select 
	c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
WHERE c.customer_id in (
	SELECT o.customer_id
    FROM order_items oi
    JOIN orders o using (order_id)
    WHERE product_id = 3
);


select DISTINCT 
	c.customer_id,
    c.first_name,
    c.last_name
FROM customers c
JOIN Orders o using (customer_id)
JOIN Order_items oi using (order_id)
where oi.product_id = 3






