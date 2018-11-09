CREATE PROCEDURE freeSeats()
BEGIN
    SELECT flights.flight_id, planes.number_of_seats - COALESCE(b.total, 0) AS free_seats  FROM flights
    LEFT JOIN planes
    ON flights.plane_id = planes.plane_id
    LEFT JOIN (SELECT  flight_id, COUNT(flight_id) AS total FROM purchases GROUP BY flight_id) b
    ON flights.flight_id = b.flight_id
    ORDER BY flights.flight_id;
END