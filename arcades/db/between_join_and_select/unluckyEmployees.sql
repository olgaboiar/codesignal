/*Please add ; after each select statement*/
CREATE PROCEDURE unluckyEmployees()
BEGIN
    select b dep_name, 
           c emp_number, 
           d total_salary 
        from (select name b, 
                     count(Employee.id) c, 
                     ifnull(sum(salary), 0) d,
                     @a:=0
                  from Department  
                       left join Employee on Department.id = Employee.department
                  group by Department.id
                  having c < 6
                  order by d desc, c desc, Department.id
             ) r 
             where @a := !@a;
END