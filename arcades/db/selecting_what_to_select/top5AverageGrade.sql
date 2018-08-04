CREATE PROCEDURE top5AverageGrade()
BEGIN
    SELECT ROUND(AVG(s.grade), 2) AS average_grade
 FROM
	(SELECT * FROM students ORDER BY grade DESC LIMIT 5) s;
END