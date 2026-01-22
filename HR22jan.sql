
--1
create table emp01294343(
eid number(10),
ename VARCHAR2(30) ,
salary number(10) default 5000,
hire_date date default (sysdate-1200),
address varchar2(300) default 'Dhaka,Bangladesh',
constraint hr_emp01294343_eid_pk primary key(eid)
);

select * from employees;

--2
select department_id,avg(salary)
from employees
group by department_id
having max(salary) >12000;

--3
select first_name
from employees
where first_name like 'S%';

--4
select avg(salary)
from employees
where job_id like 'SA%';

--5
select first_name,last_name , hire_date
from employees
order by hire_date;