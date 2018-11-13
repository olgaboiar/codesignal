/*Please add ; after each select statement*/
CREATE PROCEDURE bugsInComponent()
BEGIN
	SELECT  bu.title as bug_title, c.title as component_title, b1.cnt as bugs_in_component
FROM (
  SELECT bug_num, component_id
  FROM BugComponent where bug_num in (
     SELECT 
     b.bug_num as bug_num
     FROM BugComponent b
     GROUP by b.bug_num
     having count(bug_num) > 1)
  ) b
JOIN (
  SELECT 
    b.bug_num as bug_num, b.component_id as component_id, count(component_id) as cnt
    FROM BugComponent b
    GROUP by b.component_id
    having count(component_id) 
  ) b1
on b1.component_id=b.component_id
JOIN Component c
ON c.id=b.component_id
JOIN Bug bu
on bu.num=b.bug_num
order by b1.cnt desc, b.component_id,b.bug_num;
END