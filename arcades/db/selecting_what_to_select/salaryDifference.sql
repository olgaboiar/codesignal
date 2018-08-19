CREATE PROCEDURE salaryDifference()
BEGIN
    SELECT CASE WHEN COUNT(r.maxi) = 0 THEN 0 ELSE (r.maxi - s.mini) END AS difference FROM
    (SELECT SUM(salary) AS mini, 1 AS abc FROM employees GROUP BY salary
    LIMIT 1) s
    LEFT JOIN
    (SELECT SUM(salary) AS maxi, 1 AS def FROM employees GROUP BY salary ORDER BY salary DESC
    LIMIT 1) r
    ON s.abc = r.def;
END