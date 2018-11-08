/*Please add ; after each select statement*/
CREATE PROCEDURE filmLibrary()
BEGIN
    SET @genre = (
        SELECT genre FROM movies GROUP BY genre ORDER BY COUNT(genre) DESC LIMIT 1
    );
    SELECT a.actor, a.age FROM (
        SELECT movies.movie, movies.genre, starring_actors.actor, actor_ages.age
        FROM movies
        LEFT JOIN starring_actors
        ON movies.movie = starring_actors.movie_name
        LEFT JOIN actor_ages
        ON starring_actors.actor = actor_ages.actor
    ) a
    WHERE a.genre = @genre
    ORDER BY a.age DESC, a.actor
    ;
END
