DROP FUNCTION IF EXISTS get_total;
CREATE FUNCTION get_total(items VARCHAR(45)) RETURNS INT DETERMINISTIC
BEGIN
   DECLARE i INT;
   DECLARE t INT;
   DECLARE resulta VARCHAR(45);
   DECLARE end_res INT;
   SET i = 0;
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
            SET end_res = end_res + t;
             END IF;
       SET i = i + 1;
      END WHILE label1;
   END IF;
   RETURN end_res;
END;

CREATE PROCEDURE orderPrices()
BEGIN
    SELECT id, buyer, get_total(items) AS total_price
    FROM orders
    ORDER BY id;
END;
