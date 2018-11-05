/*Please add ; after each select statement*/
CREATE PROCEDURE queriesExecution()
BEGIN
	DECLARE my_it INT DEFAULT 0;
DECLARE done BOOLEAN DEFAULT 0;
DECLARE result varchar(100) DEFAULT "";
DECLARE qur varchar(100) DEFAULT "";

DECLARE cur CURSOR FOR 
SELECT  query_name, code from queries;

DECLARE CONTINUE HANDLER 
        FOR NOT FOUND SET done = 1;

DROP TABLE IF EXISTS d;
CREATE temporary table d(query_name varchar(255), val varchar(255));


OPEN cur;
get_email: LOOP
 FETCH cur INTO qur, result;
 IF done = 1 THEN 
  LEAVE get_email;
 END IF;
  
SET @sqlv=CONCAT("insert into d values (","'", qur ,"'",",(", result, "));");

  PREPARE stmt FROM @sqlv;
  EXECUTE stmt; 

  DEALLOCATE PREPARE stmt; 
  
  
END LOOP get_email;
CLOSE cur;
SELECT * FROM d;
END