/*Please add ; after each select statement*/
CREATE PROCEDURE driversInfo()
BEGIN
select concat(if(d,
                 concat('  date: ' , d, '; miles covered: '),
                 if(!n, 
                    concat(' Name: ', n,
                           '; number of inspections: ', c,
                           '; miles driven: '),
                    ' Total miles driven by all drivers combined: ')
                 ), s) summary     
from (select driver_name n, date d, sum(miles_logged) s, sum(1) c
      from inspections
      group by n, d
      with rollup) t
order by n, d;
END