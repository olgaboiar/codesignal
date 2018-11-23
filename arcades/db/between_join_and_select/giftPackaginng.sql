/*Please add ; after each select statement*/
CREATE PROCEDURE giftPackaging()
BEGIN
    SELECT f.package_type, COUNT(f.package_type) as number
    FROM (
    SELECT dd.package_type 
    FROM
    (
        SELECT pack.id as id, MIN(pack.length * pack.width * pack.height) as box_dim
        FROM (
            SELECT g.id, p.*
            FROM gifts g
            JOIN packages p
            ON g.length <= p.length AND g.width <= p.width and g.height <= p.height
        ) pack
        GROUP BY pack.id
    ) e
    JOIN (
        SELECT package_type,(length * width * height) as box_dim
        FROM packages
        ) as dd
    ON dd.box_dim = e.box_dim
        ) f 
    GROUP by f.package_type
    ORDER BY f.package_type
;
END