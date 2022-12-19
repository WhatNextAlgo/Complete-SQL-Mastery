/*
EVENTS : A task (or block of SQL code) that gets executed according to a schedule
*/

SHOW VARIABLES LIKE 'event%';
SET GLOBAL event_scheduler = ON;


DELIMITER $$
CREATE EVENT yearly_delete_stale_audit_rows
ON SCHEDULE 
	-- AT '2019-05-01' ( for once)
    EVERY 1 YEAR STARTS '2019-01-01' ENDS '2023-01-01'
DO BEGIN
	DELETE FROM payments_audit
    WHERE action_date < NOW() - INTERVAL 1 YEAR;
END$$
DELIMITER ;
