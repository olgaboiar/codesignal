CREATE PROCEDURE personalHobbies()
BEGIN
	SELECT name FROM people_hobbies WHERE hobbies & 1 AND hobbies & 2;
END