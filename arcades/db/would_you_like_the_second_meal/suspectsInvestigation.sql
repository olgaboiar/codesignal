CREATE PROCEDURE suspectsInvestigation()
BEGIN
	SELECT id, name, surname FROM Suspect WHERE height <= 170 AND name LIKE 'b%' AND surname LIKE 'Gre_n';
END