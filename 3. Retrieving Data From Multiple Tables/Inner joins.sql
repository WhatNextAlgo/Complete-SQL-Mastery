-- MySQL
USE sql_store;

SELECT o.order_id, c.customer_id,c.first_name,c.last_name
FROM orders o 
INNER JOIN customers c on o.customer_id = c.customer_id
