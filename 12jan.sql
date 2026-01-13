
create table students(
    stu_id number(7) not null,
    stu_name varchar2(30) not null,
    stu_email varchar2(50) not null,
    stu_dob date ,
    cell_no varchar2(11),
    blood_grp varchar(3),
    
    CONSTRAINT hr_students_stu_id_pk primary key(stu_id)
    );
    
    commit;
    
    
    rollback;
    
    select *
    from students;
    
    desc students;

insert into students(STU_ID,STU_NAME,STU_EMAIL,STU_DOB,CELL_NO,BLOOD_GRP) 
VALUES(1,'Mahbubur Rahman','mahbub@gmail.com','21-feb-2001','01576909747','A+');

insert into students(STU_ID,STU_NAME,STU_EMAIL,STU_DOB,CELL_NO,BLOOD_GRP) 
VALUES(2,'Md Sabbir Hasan','sabbirhasan.stat@gmail.com','27-apr-1999','01704323216','B-');

insert into students(STU_ID,STU_NAME,STU_EMAIL,STU_DOB,CELL_NO,BLOOD_GRP) 
VALUES(3,'Badrul Amin','badrulamin@gmail.com','15-dec-1995','01709628913','O+');

insert into students(STU_ID,STU_NAME,STU_EMAIL,STU_DOB,CELL_NO)
select employee_id,last_name,email,hire_date,substr(phone_number,1,11)
from employees
where last_name like '%u%';

create table emp1294343(
    eid number(10) not null,
    ename VARCHAR2(30) not null,
    salary number(10) not null,
    hire_date DATE not null,
    address varchar(150) ,
    constraint hr_emp1294343_eid_pk primary key(eid)
);


insert into emp1294343(eid,ename,salary,hire_date,address)
values(1,'dg',4566,sysdate-1400,'Dhaka');
insert into emp1294343(eid,ename,salary,hire_date,address)
values(2,'dcg',454566,sysdate-1300,'Khulna');
insert into emp1294343(eid,ename,salary,hire_date,address)
values(3,'dasg',45766,sysdate-1450,'Sylhet');
insert into emp1294343(eid,ename,salary,hire_date,address)
values(4,'drtg',456546,sysdate-1200,'Rajshahi');
insert into emp1294343(eid,ename,salary,hire_date,address)
values(5,'dg',1234566,sysdate-1100,'Barisal');


select * from emp1294343;

rollback;

--1
select department_id,avg(salary)
from employees
where department_id in(
    select department_id
    from employees
    where in 12000 < (
        select max(salary)
        from emplyees
        GROUP by department_id));

--1
select department_id, avg(salary)
from employees
group by department_id
having max(salary)> 12000;

--2
select First_name
from employees
where First_name like 'S%';

--3
select avg(salary)
from employees
where commission_pct is not null;
commit;

select * from employees;
select * from job_grades;

select department_id,avg(salary)
from employees
group by department_id
where salary = any(
    select salary
    from employees
    
    where salary > 12000)
    group by department_id
;

    select department_id
    from employees
    where in(max(salary)) >12000
    group by department_id
    ;