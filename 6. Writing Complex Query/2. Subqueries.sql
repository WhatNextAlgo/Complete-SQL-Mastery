-- Find products that are more 
-- expensive than Lettuce (id = 3)
SELECT
	 *
FROM products
where unit_price > (
	SELECT unit_price
    FROM products
    WHERE product_id = 3
);
-- sql_hr database:
-- find employees whose earn mor than average

USE sql_hr;

SELECT 
	*
FROM employees
Where salary > (
	SELECT avg(salary)
    FROM employees
)

