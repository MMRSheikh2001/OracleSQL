--1
create table emp001294343(
eid number(10) not null,
ename varchar2(30) ,
salary number(10) default 4000,
hire_date date default (sysdate-5000),
address varchar2(300) default 'Dhaka,Bangladesh',
constraint hr_emp001294343_eid_pk PRIMARY key(eid)
);

--2
alter table emp001294343 add(
department_id number(10) default 101,
department_name VARCHAR2(30) DEFAULT 'Sales'
);

--3
insert into emp001294343(eid,ename)
values(1,'Sabbir');
insert into emp001294343(eid,ename)
values(2,'Mahbub');


select * from employees;
select * from emp001294343;

--4
create view dept80
as select First_name ,last_name,Job_id,salary,department_id
from employees
where department_id = 80;

--5
create sequence hr_001294343_eid_sq
start with 100
increment by 1
maxvalue 9999999;

--6
insert into emp001294343(eid,ename)
select employee_id, first_name
from employees where salary =(select max(salary)
from employees where job_id like 'SA%');
