CREATE PROCEDURE usersByContinent()
BEGIN
	SELECT continent, SUM(users) AS users FROM countries GROUP BY continent ORDER BY SUM(users) DESC;
END