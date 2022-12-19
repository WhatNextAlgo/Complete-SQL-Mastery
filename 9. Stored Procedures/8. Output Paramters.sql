USE `sql_invoicing`;
DROP procedure IF EXISTS `get_upaid_invoices_for_client`;

DELIMITER $$
USE `sql_invoicing`$$
CREATE PROCEDURE `get_upaid_invoices_for_client` 
(
	client_id INT
)
BEGIN
	SELECT COUNT(*), SUM(invoice_total)
    FROM invoices i
    WHERE i.client_id = client_id
		AND payment_total = 0;
END$$

DELIMITER ;

call sql_invoicing.get_upaid_invoices_for_client(5);

-- USING OUTPUT Parameters

USE `sql_invoicing`;
DROP procedure IF EXISTS `get_upaid_invoices_for_client`;

USE `sql_invoicing`;
DROP procedure IF EXISTS `sql_invoicing`.`get_upaid_invoices_for_client`;
;

DELIMITER $$
USE `sql_invoicing`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_upaid_invoices_for_client`(
	client_id INT,
    OUT invoices_count INT,
    OUT invoices_total DECIMAL(9,2)
)
BEGIN
	SELECT COUNT(*), SUM(invoice_total)
    INTO invoices_count,invoices_total
    FROM invoices i
    WHERE i.client_id = client_id
		AND payment_total = 0;
END$$

DELIMITER ;
;

set @invoices_count = 0;
set @invoices_total = 0;
call sql_invoicing.get_upaid_invoices_for_client(3, @invoices_count, @invoices_total);
select @invoices_count, @invoices_total;
