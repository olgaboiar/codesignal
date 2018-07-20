CREATE PROCEDURE habitatArea()
BEGIN
    set @polygon := (SELECT CONCAT("MULTIPOINT(", group_concat(x,' ',y SEPARATOR ','), ")") FROM places);

   SELECT ST_AREA(ST_ConvexHull(ST_GeomFromText(@polygon))) as area;
END