/*Please add ; after each select statement*/
CREATE PROCEDURE dancingCompetition()
BEGIN
	SET @min_f = (SELECT MIN(first_criterion) FROM scores);
  SET @max_f = (SELECT MAX(first_criterion) FROM scores);
  SET @min_s = (SELECT MIN(second_criterion) FROM scores);
  SET @max_s = (SELECT MAX(second_criterion) FROM scores);
  SET @min_t = (SELECT MIN(third_criterion) FROM scores);
  SET @max_t = (SELECT MAX(third_criterion) FROM scores);

  SELECT s.* 
  FROM 
  scores s
  JOIN (
  SELECT arbiter_id,
    CASE WHEN (first_criterion <= @min_f OR first_criterion >= @max_f) THEN 1 ELSE 0 END
  +   CASE WHEN (second_criterion <= @min_s OR second_criterion >= @max_s) THEN 1 ELSE 0 END + CASE WHEN (third_criterion <= @min_t OR third_criterion >= @max_t) THEN 1 ELSE 0 END as max_a
    FROM scores
  ) ss
  ON ss.arbiter_id=s.arbiter_id and ss.max_a < 2
;
END