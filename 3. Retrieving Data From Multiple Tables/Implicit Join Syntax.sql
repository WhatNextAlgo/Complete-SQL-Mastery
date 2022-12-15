SELECT *
FROM orders o
INNER JOIN customers c ON o.customer_id = c.customer_id;

-- Implicit Syntac
SELECT *
FROM orders o, customers c
WHERE  o.customer_id = c.customer_id
