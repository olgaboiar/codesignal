CREATE PROCEDURE gradeDistribution()
BEGIN
	SELECT Name, ID FROM Grades WHERE (Midterm1 + Midterm2 < Final) OR (Midterm1/4 + Midterm2/4 < Final/2) ORDER BY substring(Name, 1, 3), ID;
END