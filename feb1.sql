--1
create table emp187 (
eid NUMBER(10),
ename varchar2(30) ,
salary number(10) default 4000,
hire_date date default (sysdate - 1234),
address varchar2(300) default 'Mohammadpur,Dhaka,Bangladesh',
constraint hr_emp187_eid_pk primary key(eid)
);

--2
alter table emp187
add(department_id number(10) default 12,
dept_name varchar2(30) default 'Sales');

--3
insert INTO emp187(eid,ename)
values(1,'Sabbir');
insert INTO emp187(eid,ename)
values(2,'Tanvir');
insert INTO emp187(eid,ename,department_id)
values(3,'Mahbub', 80);

--4
create view emp187_view as
select ename ,dept_name,salary
from emp187;

--5
create sequence Sabbir
start with 5
increment by 1
maxvalue 99999;

--6
insert INTO emp187(eid,ename)
select employee_id,last_name
from employees
where job_id like 'SA%';

select * from emp187;
drop table emp001294343;

