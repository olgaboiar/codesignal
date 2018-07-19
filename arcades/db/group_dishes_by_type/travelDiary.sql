CREATE PROCEDURE travelDiary()
BEGIN
    SELECT GROUP_CONCAT(r.country SEPARATOR ';') AS countries FROM
	(SELECT country FROM diary GROUP BY country ORDER BY country) r
    ;
END