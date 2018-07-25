CREATE PROCEDURE importantEvents()
BEGIN
	SELECT * FROM events ORDER BY (CASE DAYOFWEEK(event_date)
    WHEN 1 THEN 8 ELSE DAYOFWEEK(event_date)
    END), participants DESC;
END