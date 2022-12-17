-- Find the products that have never ordered
USE sql_store;

SELECT *
FROM PRODUCTS
where product_id  not in (
	SELECT 
	DISTINCT Product_id
	FROM order_items
);

-- Find Clients without invoices
use sql_invoicing;

SELECT 
	*
FROM clients
WHERE client_id not in (
	SELECT
	DISTINCT client_id
FROM invoices);





