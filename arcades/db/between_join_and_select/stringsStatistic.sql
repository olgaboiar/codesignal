/*Please add ; after each select statement*/
CREATE PROCEDURE stringsStatistics()
BEGIN
    create table x (l char, n int); 

    set @a = '`';
    while '{' > @a:=char(ord(@a) + 1) do
        insert into x 
            select @a, 
                   length(str) - length(replace(str, @a, "")) n 
                from strs 
                having n;
    end while;

    select l letter,
           sum(n) total,
           sum(1) occurrence,
           max(n) max_occurrence,
           sum(n = (select max(n) from x where l = y.l)) max_occurrence_reached
        from x y
        group by 1;

    drop table x;
	
END