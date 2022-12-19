DROP Procedure IF EXISTS get_clients;

DELIMITER $$
CREATE Procedure get_clients()
BEGIN 
	Select * FROM sql_invoicing.clients;
END$$

DELIMITER ;
