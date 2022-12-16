Update invoices 
SET 
	payment_total = invoice_total * 0.5,
    payment_date = due_date
Where client_id in  (
			SELECT client_id
			FROM clients
			where state in  ('CA','NY')
            );


-- Exercise 
"""
Write a query to update comments column in orders table, who has more than 3000 points
update comments with 'Gold Customer'
"""

UPDATE orders
SET 
	comments = 'Gold customer'
WHERE customer_id in (
			select customer_id
			FROM customers
			where points > 3000
);
