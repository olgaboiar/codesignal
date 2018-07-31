CREATE PROCEDURE placesOfInterestPairs()
BEGIN
    SELECT A.name AS place1, B.name AS place2 FROM sights A, sights B
    WHERE A.name < B.name AND  SQRT( POWER(ABS(A.x-B.x), 2) + POWER(ABS(A.y-B.y), 2) ) < 5
ORDER BY place1, place2;
END