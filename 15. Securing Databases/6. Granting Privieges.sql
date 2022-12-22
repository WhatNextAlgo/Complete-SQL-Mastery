-- 1: Web/Desktop application -- to read and write 
CREATE USER moon_app identified BY '1234';

GRANT SELECT , INSERT , UPDATE, DELETE, EXECUTE
ON  sql_store.* 
TO moon_app; 

-- 2: admin -- one or more databases  / full access

GRANT ALL
ON  *.*  -- means all databases and tables
TO john; 
