select * from employees;

create view emp_dep
as select e.last_name , e.salary, d.department_name,
l.city,l.state_province ,c.country name

select last_name ,salary,commission_pct;

create view mahbub 
as select last_name

where last_name like 'J%', 
or last_name like 'A%'
or last_name like 'M%'
from employees
;
create view emp_last
as select last_name
from employees;

select * from emp_last;

create view mahbubb
as
select initcap(last_name) "last_name", length(last_name) "length"
from employees
where last_name like 'A%' or
last_name like 'J%' or
last_name like 'M%'
order by last_name;

select * from mahbubb;