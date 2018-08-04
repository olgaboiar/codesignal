CREATE PROCEDURE restaurantInfo()
BEGIN
    ALTER TABLE restaurants
    ADD description VARCHAR(255) DEFAULT "TBD",
    ADD active INT DEFAULT 1;

    SELECT * FROM restaurants ORDER BY id;
END
