CREATE PROCEDURE securityBreach()
BEGIN
	SELECT * FROM users WHERE attribute LIKE CONCAT('_%\%', BINARY(first_name), '\_', BINARY(second_name), '\%%')
ORDER BY attribute;
END