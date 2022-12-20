/*
JSON : Lightweight format for storing and transferring data over the internet.
{
	key : value
}
*/
ALTER TABLE `sql_store`.`products` 
ADD COLUMN `properties` JSON NULL AFTER `size`;

UPDATE Products
SET properties = '
{
	"dimensions": [1,2,3],
    "weight" : 10,
    "manufacture": {"name":"sony"}
}
'
WHERE product_id = 1;

UPDATE Products
SET properties = JSON_OBJECT(
	'weight',10,
    'dimensions', JSON_ARRAY(1,2,3),
    'manufacture', JSON_OBJECT('name','sony')
)
WHERE product_id = 2;

-- EXTRACTING JSON OBJECT

select product_id , JSON_EXTRACT(properties, '$.weight') as weight
FROM Products
WHERE product_id = 1;

select 
	product_id ,
	properties -> '$.weight' as weight,
    Properties -> '$.dimensions[0]' as dimensions_0,
    Properties -> '$.manufacture.name' as name,
    Properties ->> '$.manufacture.name' as 'name without quotes'
FROM Products
WHERE Properties ->> '$.manufacture.name' = 'sony';

-- JSON UPDATES
UPDATE Products
SET properties = JSON_SET(
	properties,
    '$.weight',20,
    '$.age',10
)
WHERE product_id = 1;

-- JSON REMOVE

UPDATE Products
SET properties = JSON_REMOVE(
	properties,
    '$.age'
)
WHERE product_id = 1;
