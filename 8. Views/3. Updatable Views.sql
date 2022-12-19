CREATE OR REPLACE VIEW invoice_with_balance AS
SELECT 
	invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total AS Balance,
    invoice_date,
    due_date,
    payment_date
FROM invoices
WHERE invoice_total - payment_total > 0;


DELETE  from invoice_with_balance
WHERE invoice_id = 1;

Update invoice_with_balance 
SET due_date = DATE_ADD(due_date, Interval 2 DAY)
WHERE invoice_id = 2;

