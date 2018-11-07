DROP FUNCTION IF EXISTS response;
CREATE FUNCTION response(name VARCHAR(40)) RETURNS VARCHAR(200) DETERMINISTIC
BEGIN
    DECLARE my_string VARCHAR(255);
    DECLARE my_first_name VARCHAR(255);
    DECLARE my_second_name VARCHAR(255);
    DECLARE sp INT;
    SET sp = LOCATE(' ', name);
    SET my_first_name = CONCAT(UPPER(LEFT(LOWER(NAME),1)), SUBSTR(lower(name), 2, sp-1));
    SET my_second_name = CONCAT(UPPER(SUBSTR(name, sp+1, 1)), SUBSTR(lower(name), sp+2, length(name)));
    SET my_string = CONCAT('Dear ', my_first_name,my_second_name, '! We received your message and will process it as soon as possible. Thanks for using our service. FooBar On! - FooBarIO team.');
    RETURN my_string;
END;

CREATE PROCEDURE customerMessages()
BEGIN
    SELECT id, name, response(name) AS response
    FROM customers;
END;