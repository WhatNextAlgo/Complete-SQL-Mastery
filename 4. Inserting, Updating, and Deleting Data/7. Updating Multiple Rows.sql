UPDATE invoices SET 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
WHERE client_id = 3;

--Exercise
"""
Write a SQL statement to give any customer born before 1990, 50 extra points
"""
UPDATE customers SET 
	points = points + 50
WHERE birth_date < '1990-01-01'
