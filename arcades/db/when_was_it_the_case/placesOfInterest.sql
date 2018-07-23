CREATE PROCEDURE placesOfInterest()
BEGIN
        SELECT country, SUM(adventure_park) AS adventure_park, SUM(golf) AS golf, SUM(river_cruise) AS river_cruise, SUM(kart_racing) AS kart_racing FROM (
        SELECT country,
        CASE WHEN leisure_activity_type = "Adventure park" THEN number_of_places ELSE 0 END AS adventure_park,
        CASE WHEN leisure_activity_type = "Golf" THEN number_of_places ELSE 0 END AS golf,
        CASE WHEN leisure_activity_type = "River cruise" THEN number_of_places ELSE 0 END AS river_cruise,
        CASE WHEN leisure_activity_type = "Kart racing" THEN number_of_places ELSE 0 END AS kart_racing
        FROM countryActivities) r
       GROUP BY r.country
       ;
END