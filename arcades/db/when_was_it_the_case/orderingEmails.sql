CREATE PROCEDURE orderingEmails()
BEGIN
	SELECT id, email_title, CASE WHEN size >= 1048576 THEN CONCAT(TRUNCATE(size/1048576, 0), " Mb") ELSE CONCAT(TRUNCATE(size/1024, 0), " Kb") END AS short_size FROM emails ORDER BY size DESC;
END