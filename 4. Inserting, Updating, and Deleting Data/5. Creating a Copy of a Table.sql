CREATE TABLE orders_archived AS
SELECT * FROM orders;


INSERT INTO orders_archived 
select * 
FROM orders 
Where order_date < '2019-01-01';


-- Exercise
"""
Create a invoice_archived table , using invoices and client table,
replace client_id column with name column from client table
"""
CREATE TABLE invoice_archived AS
select 
	inv.invoice_id,
    inv.number,
    c.name AS client,
    inv.invoice_total,
    inv.payment_total,
    inv.invoice_date,
    inv.payment_date,
    inv.due_date
FROM invoices inv
INNER JOIN clients c using (client_id)
where inv.payment_date IS NOT NULL
