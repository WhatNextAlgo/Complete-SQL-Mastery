SELECT NOW(), curdate(),curtime();
SELECT YEAR(NOW()),MONTH(NOW()),DAY(NOW()),HOUR(NOW()),SECOND(NOW());
SELECT dayname(NOW()),monthname(NOW()),extract(DAY FROM NOW());
SELECT extract(DAY FROM NOW()),extract(MONTH FROM NOW()),extract(YEAR FROM NOW());

--
SELECT * 
FROM orders
where YEAR(order_date) >= YEAR(NOW()) - 3;
