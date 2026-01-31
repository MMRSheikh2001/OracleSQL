--1
CREATE table emp294343(
eid NUMBER(10),
ename VARCHAR2(30),
salary number(15) default 3000,
hire_date date default (sysdate -1300),
address VARCHAR2(300),
constraint hr_emp294343_eid_pk primary key(eid)
);


select * from employees;
select * from departments;
--2
select department_id,avg(salary)
from employees
group by department_id
having max(salary) >12000;

--3
select first_name, last_name
from employees
where first_name like 'S%';

--4
select avg(e.salary)
from employees e join departments d
on e.department_id = d.department_id
where d.department_name like 'Sales%';

--5
select first_name, last_name,hire_date 
from employees
order by hire_date;
