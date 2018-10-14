/*Please add ; after each select statement*/
CREATE PROCEDURE checkExpenditure()
BEGIN
	SELECT r.id, CASE WHEN (r.expenditure_sum <  ale.value) THEN 0 ELSE   r.expenditure_sum - ale.value END as loss
FROM (
    SELECT res.id, SUM(res.expenditure_sum) as expenditure_sum
    FROM (
        SELECT WEEK(e.monday_date) as wd ,e.expenditure_sum as expenditure_sum, ae.id
        FROM expenditure_plan e
        JOIN allowable_expenditure ae
        ON WEEK(e.monday_date) >= ae.left_bound and WEEK(e.monday_date) <= ae.right_bound
    ) res
        GROUP by res.id
) r
JOIN allowable_expenditure ale
ON ale.id = r.id
;
END