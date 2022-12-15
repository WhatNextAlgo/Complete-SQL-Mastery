-- MySQL
USE sql_store;

SELECT o.order_id, c.customer_id,c.first_name,c.last_name
FROM orders o 
INNER JOIN customers c on o.customer_id = c.customer_id

-- Exercise
"""
Join the order_items table to products table,
get the info of particular order what is product id , name, quantity and unit price.
Unit Price should be when the order is placed.
"""

SELECT oi.order_id,p.product_id,oi.quantity,oi.unit_price
FROM order_items oi
INNER JOIN products p on oi.product_id = p.product_id
