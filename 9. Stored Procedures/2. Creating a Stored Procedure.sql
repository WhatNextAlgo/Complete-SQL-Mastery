
DELIMITER $$
CREATE Procedure get_clients()
BEGIN 
	Select * FROM sql_invoicing.clients;
END$$

DELIMITER ;

DELIMITER $$
CREATE Procedure invoice_with_balance()
BEGIN 
	SELECT *
    FROM invoice_with_balance
    WHERE balance > 0;
END$$
DELIMITER ;

CALL get_clients();

CALL invoice_with_balance();
