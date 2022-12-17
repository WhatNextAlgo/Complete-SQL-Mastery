-- SELECT clients with at least two invoices

SELECT 
	*
FROM clients
WHERE client_id in  (
SELECT 
	client_id
FROM invoices
Group by client_id
Having count(*) > 2
);

-- ANY Keyword
SELECT 
	*
FROM clients
WHERE client_id = ANY  (
SELECT 
	client_id
FROM invoices
Group by client_id
Having count(*) > 2
);

