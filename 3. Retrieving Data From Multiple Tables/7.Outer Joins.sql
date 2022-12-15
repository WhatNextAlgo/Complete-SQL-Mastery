-- LEFT OUTER JOIN
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
		
FROM customers c 
LEFT OUTER JOIN  orders o ON o.customer_id = c.customer_id;

-- RIGHT OUTER JOIN
SELECT 
	c.customer_id,
    c.first_name,
    o.order_id
		
FROM customers c 
RIGHT OUTER JOIN  orders o ON o.customer_id = c.customer_id;

-- Exercise
"""
How many times product is order?.
Using products and order_items tables
"""

SELECT 
p.product_id,
p.name,
oi.quantity
FROM products p 
LEFT JOIN order_items oi ON p.product_id = oi.product_id
