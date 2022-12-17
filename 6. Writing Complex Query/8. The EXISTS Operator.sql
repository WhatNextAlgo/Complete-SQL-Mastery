-- select clients that have an invoice

SELECT
	*
FROM clients
WHERE client_id in (
	select DISTINCT client_id
    FROM invoices
);

-- EXISIS KeyWord
SELECT 
	*
FROM clients c
Where  EXISTS (
	SELECT client_id
    FROM invoices
    Where client_id = c.client_id
);

-- select clients does not have an invoice
SELECT 
	*
FROM clients c
Where  not EXISTS (
	SELECT client_id
    FROM invoices
    Where client_id = c.client_id
);

-- Find the products that have never been ordered
USE sql_store;

Select *
FROM Products p
Where not Exists (
	Select oi.product_id
    From Order_items oi
    Where oi.product_id = p.product_id
)
