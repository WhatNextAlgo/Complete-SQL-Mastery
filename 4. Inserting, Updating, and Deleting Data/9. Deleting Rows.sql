DELETE FROM invoices
WHERE client_id in (select client_id 
FROM clients
where name = 'MyWorks');

