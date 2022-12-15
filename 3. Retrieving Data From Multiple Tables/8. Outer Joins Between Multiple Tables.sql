SELECT 
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name as shipper

FROM customers c 
LEFT OUTER JOIN  orders o ON o.customer_id = c.customer_id
LEFT OUTER JOIN  shippers sh ON o.shipper_id = sh.shipper_id;



SELECT 
	o.order_id,
	o.order_date,
    c.first_name,
    sh.name as shipper,
    os.name as status
    
FROM orders o 
LEFT OUTER JOIN  customers c  ON o.customer_id = c.customer_id
LEFT OUTER JOIN  shippers sh ON o.shipper_id = sh.shipper_id
LEFT OUTER JOIN  order_statuses os ON o.status = os.order_status_id
Order By status;
