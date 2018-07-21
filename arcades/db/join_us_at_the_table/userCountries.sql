CREATE PROCEDURE userCountries()
BEGIN
	SELECT id, CASE WHEN country IS NULL THEN "unknown" ELSE country END AS country FROM users LEFT JOIN cities ON users.city = cities.city ORDER BY id;
END