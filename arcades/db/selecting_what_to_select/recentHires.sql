CREATE PROCEDURE recentHires()
BEGIN
    SELECT x.name AS names FROM (
    SELECT a.name, "pr" AS type FROM (
    SELECT * FROM pr_department ORDER BY date_joined DESC LIMIT 5) a
    UNION ALL
    SELECT b.name, "it" AS type FROM (
    SELECT * FROM it_department ORDER BY date_joined DESC LIMIT 5) b
    UNION ALL
    SELECT r.name, "sl" AS type FROM (
    SELECT * FROM sales_department ORDER BY date_joined DESC LIMIT 5) r) x
    ORDER BY FIELD(type, "pr", "it", "sl"), name;
END