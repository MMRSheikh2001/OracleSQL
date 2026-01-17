select * 
from employees;

select * 
from students;
desc students;
commit;

rollback;

select * from emp1122
order by emp_id;

commit;

update emp1122 set (emp_name , emp_salary) =
(select last_name , salary from employees where employee_id = 102)
where emp_id = 6;






update emp1122 set emp_name = 'Sadia' , emp_email = 'sadia@gmail.com'
where emp_id = 6;

select s.STU_NAME,s.STU_DOB ,s.BLOOD_GRP, e.emp_salary
from students s
join emp1122 e
on s.stu_id = e.emp_id;

delete from emp1122
where emp_id=7;

select * 
from emp_details_view;

--1
desc employees;

select e.FIRST_NAME, e.LAST_NAME,d.department_name,l.city, l.state_province
from departments d join employees e
on  d.department_id =e.department_id 
 join locations l on d.location_id = l.location_id;
--2
select * from job_grades;

select  e.FIRST_NAME, e.LAST_NAME,e.salary,g.grade
from jobs j join employees e
on j.job_id = e.job_id
join job_grades g on j.min_salary = g.lowest_sal;
--3
select e.FIRST_NAME, e.LAST_NAME,d.department_name,l.city, l.state_province
from departments d join employees e
on  d.department_id =e.department_id 
 join locations l on d.location_id = l.location_id
where e.first_name like '%z%';
--4

select first_name , last_name,salary
from employees
where salary < ( select salary
                from employees
                where employee_id = 182);
                
--5
select e.first_name,m.first_name
from employees e join employees m
on e.employee_id = m.manager_id;

select * from employees;