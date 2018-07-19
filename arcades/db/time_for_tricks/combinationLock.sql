CREATE PROCEDURE combinationLock()
BEGIN
	SELECT round(exp(sum(log(length(characters))))) AS combinations FROM discs;
END