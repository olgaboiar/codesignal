
CREATE PROCEDURE petSummary()
BEGIN
   SET @a=0;
   SET @b=0;
   SET @c=0;
   SET @d=0;
   SET @e=0;
   SET @x=0;
   SET @l := (SELECT COUNT(name)
            FROM pets  
            GROUP BY species ORDER BY COUNT(name) DESC LIMIT 1);
   SELECT cats, dogs, weasels, chinchillas FROM (
   SELECT cats, dogs, weasels, chinchillas, @e:=@e+1 AS r
   FROM
   (SELECT @x:=@x+1 AS r, name AS name FROM pets) x
   LEFT JOIN
   (SELECT @a:=@a+1 AS r, name AS cats FROM pets WHERE species = "cat") a
   ON x.r = a.r
   LEFT JOIN
   (SELECT @b:=@b+1 AS r, name AS dogs FROM pets WHERE species = "dog") b
   ON x.r = b.r
   LEFT JOIN
   (SELECT @c:=@c+1 AS r, name AS weasels FROM pets WHERE species = "weasel") c
   ON x.r = c.r
   LEFT JOIN
   (SELECT @d:=@d+1 AS r, name AS chinchillas FROM pets WHERE species = "chinchilla") AS d
   ON x.r = d.r
  ) h WHERE r <= @l
;
END
