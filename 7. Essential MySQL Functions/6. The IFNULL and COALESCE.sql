USE sql_store;

SELECT order_id,
	IFNULL(shipper_id, 'Not Assigned') as Shipper,
    coalesce(shipper_id,comments ,'Not Assigned') as Shipper
FROM Orders;

-- Exercise

select 
	CONCAT(first_name, ' ',last_name) as customer,
    IFNULL(phone,'Unknown') as phone
FROM customers
