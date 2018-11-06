/*Please add ; after each select statement*/
CREATE PROCEDURE holidayEvent()
BEGIN
    SET @n = 0;
    SELECT DISTINCT a.buyer_name AS winners FROM
	(SELECT buyer_name, @n := @n + 1 AS n FROM purchases) a
    WHERE a.n % 4 = 0
    ORDER BY a.buyer_name;
END