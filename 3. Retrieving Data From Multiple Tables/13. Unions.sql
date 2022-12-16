SELECT 
	order_id,
    order_date,
    'Active' as status
FROM orders
WHERE order_date >= '2019-01-01'
UNION
SELECT 
	order_id,
    order_date,
    'Archived' as status
FROM orders
WHERE order_date < '2019-01-01';

-- Exercise
-- Write a query that generate new column type based on points column from customers table
-- type : Bronze -> less 2000; Silver -> greater than 2000 and less than and equal to 3000; Gold -> greater than 3000
-- column from customers table customer_id, first_name, points

SELECT 
	customer_id,
    first_name,
    points,
    'Bronze' AS type
FROM customers
WHERE points < 2000
    UNION
SELECT 
	customer_id,
    first_name,
    points,
	'Silver'  AS type
FROM customers
WHERE points between 2000 and  3000
    UNION
SELECT 
	customer_id,
    first_name,
    points,
	'Gold' AS type
FROM customers
WHERE points > 3000
Order By first_name

