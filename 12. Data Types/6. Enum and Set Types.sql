/*
ENUMS : we should avoid enum
ENUM('small','medium','large')
SET (...)
*/

ALTER TABLE `sql_store`.`products`
ADD COLUMN `size` ENUM('small','medium','large') NULL AFTER `unit_price`;

UPDATE `sql_store`.`products` SET `size` = 'small' WHERE (`product_id` = '1');
