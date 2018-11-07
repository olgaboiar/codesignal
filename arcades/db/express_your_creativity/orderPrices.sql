DECLARE i INT;
   DECLARE result VARCHAR(45);
   DECLARE tmp_length INT;
   DECLARE t INT;
   DECLARE resulta VARCHAR(45);
   DECLARE end_res INT;
   SET i = 0;
   SET result = "toto";
   SET tmp_length = 0;
   set t = 0;
   set resulta = "a";
   SET end_res = 0;
   
   IF length(items) = 1 THEN
      SET end_res = (SELECT price from item_prices where id = CAST(items AS UNSIGNED));
   ELSE
      label1: WHILE i < LENGTH(items) DO
       SET resulta = REPLACE(SUBSTRING(SUBSTRING_INDEX(items, ';', i),
          LENGTH(SUBSTRING_INDEX(items, ';', i-1)) + 1),
          ';', '');
             IF  resulta != "" THEN 
               SET t = (SELECT price from item_prices where id = CAST(resulta AS UNSIGNED));
            -- INSERT INTO test.d VALUES(CONVERT(t,  CHAR));
            SET end_res = end_res + t;
             END IF;
       SET i = i + 1;
      END WHILE label1;
   END IF;
   RETURN end_res;