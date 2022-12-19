
DROP Procedure IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE Procedure get_clients_by_state
(
	state CHAR(2)
)
BEGIN 
	Select * FROM sql_invoicing.clients c
    WHERE c.state = state;
END$$

DELIMITER ;


CALL get_clients_by_state('CA');

DROP Procedure IF EXISTS get_invoices_by_client;

DELIMITER $$
CREATE Procedure get_invoices_by_client
(
	client_id INT
)
BEGIN 
	Select * FROM sql_invoicing.invoices i
    WHERE i.client_id = client_id;
END$$

DELIMITER ;

call sql_invoicing.get_invoices_by_client(3);
