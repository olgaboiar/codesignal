/*Please add ; after each select statement*/
CREATE PROCEDURE trackingSystem()
BEGIN
	SELECT  t.anonym_id , t.last_null as last_null, f.event_name as first_notnull
    FROM (
           SELECT ta.event_name as last_null, ta.anonymous_id as anonym_id, ta.received_at
            FROM tracks ta
            JOIN (
                SELECT anonymous_id, max(received_at) as received_at
                FROM tracks 
                where user_id is NULL
                group by anonymous_id
            ) t 
            on t.received_at=ta.received_at
        
    ) t
    LEFT JOIN (
            SELECT ta.event_name as event_name, ta.anonymous_id , ta.received_at
            FROM tracks ta
            JOIN (
                SELECT anonymous_id, min(received_at) as received_at
                FROM tracks 
                where user_id is NOT NULL
                group by anonymous_id
            ) t 
            on t.received_at=ta.received_at
               ) f
    on t.anonym_id=f.anonymous_id
    order by anonym_id;
END