CREATE PROCEDURE orderOfSuccession()
BEGIN
	SELECT CASE WHEN gender = "F" THEN CONCAT("Queen ", name) ELSE CONCAT("King ", name) END name FROM Successors ORDER BY birthday;
END