SELECT 
	c.first_name AS customer,
    p.name AS product
FROM  customers c
CROSS JOIN products p
Order By c.first_name
