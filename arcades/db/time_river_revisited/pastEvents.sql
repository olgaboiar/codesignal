CREATE PROCEDURE pastEvents()
BEGIN
	SELECT name, event_date FROM Events WHERE  event_date BETWEEN
((SELECT event_date FROM Events ORDER BY event_date DESC LIMIT 1) - INTERVAL 7 DAY)
AND
((SELECT event_date FROM Events ORDER BY event_date DESC LIMIT 1) - INTERVAL 1 DAY)
    ORDER BY event_date DESC
;
END