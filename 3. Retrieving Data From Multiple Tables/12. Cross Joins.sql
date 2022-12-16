SELECT 
	c.first_name AS customer,
    p.name AS product
FROM  customers c
CROSS JOIN products p
Order By c.first_name;

SELECT 
	c.first_name AS customer,
    p.name AS product
FROM  customers c, products p
Order By c.first_name;

--Exercise
-- Do a cross join between shipper and products

-- using implicits syntax
SELECT 
    s.name as Shipper,
    p.name as Product
FROM shippers s,products p
Order by 1;

-- and then using the explicit syntax
SELECT 
    s.name as Shipper,
    p.name as Product
FROM shippers s
CROSS JOIN products p
Order by 1;
