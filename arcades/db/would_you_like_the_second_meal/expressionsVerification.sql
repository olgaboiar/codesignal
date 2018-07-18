CREATE PROCEDURE expressionsVerification()
BEGIN
	SELECT * FROM expressions WHERE IF(operation = "+", a + b = c, IF(operation = "*", a * b = c, IF(operation = "/", a / b = c, IF(operation = "-", a - b = c, "false"))))
      ;
END