SELECT oi.order_id,p.product_id,oi.quantity,oi.unit_price
FROM sql_store.order_items oi
INNER  JOIN sql_inventory.products p on  oi.product_id = p.product_id;
 
