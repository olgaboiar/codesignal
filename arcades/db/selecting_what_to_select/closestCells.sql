CREATE PROCEDURE closestCells()
BEGIN
    SELECT r.id1, r.id2 FROM
    (SELECT m.id1, m.id2, m.dist, s.dis FROM
    (SELECT p1.id AS id1, p2.id AS id2, SQRT( POWER(ABS(p1.x-p2.x), 2) + POWER(ABS(p1.y-p2.y), 2)) AS dist FROM positions p1, positions p2
    WHERE p1.id != p2.id) m
    LEFT JOIN
    (SELECT pA.id AS id, MIN(SQRT( POWER(ABS(pA.x-pB.x), 2) + POWER(ABS(pA.y-pB.y), 2))) AS dis FROM positions pA, positions pB
    WHERE pA.id != pB.id
    GROUP BY id) s
    ON s.id = m.id1) r
    WHERE r.dist = r.dis
    ORDER BY id1
    ;
END