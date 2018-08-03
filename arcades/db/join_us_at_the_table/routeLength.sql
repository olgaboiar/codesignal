CREATE PROCEDURE routeLength()
BEGIN
	SET @count := 1;
   SET @len := (SELECT COUNT(*) FROM cities);

   SET @xa := 0;
   SET @ya := 0;

   SET @xb := 0;
   SET @yb := 0;

   SET @dis :=0;

   WHILE @count < @len DO

        SET @xa := (SELECT x FROM cities where id=@count);
        SET @ya := (SELECT y FROM cities where id=@count);
        SET @xb := (SELECT x FROM cities where id=@count+1);
        SET @yb := (SELECT y FROM cities where id=@count+1);

        SET @dis := @dis + SQRT((POWER((@xa-@xb), 2) + POWER((@ya-@yb), 2)));
        SET @count :=  @count + 1;

      END WHILE;


      SELECT ROUND(@dis,9) as total; 
END