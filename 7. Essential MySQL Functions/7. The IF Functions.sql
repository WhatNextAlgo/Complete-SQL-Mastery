USE sql_store;

SELECT 
	order_id,
    order_date,
    IF(YEAR(order_date) = Year(NOW()) -3,'Active','Archived') As Status
FROM Orders;

-- Exercise

select p.product_id,
	   p.name,
       COUNT(*) AS orders,
       IF( COUNT(*) > 1, 'Many Times','Once')
FROM products p 
JOIN order_items oi USING (product_id)
GROUP BY p.product_id,
	   p.name

