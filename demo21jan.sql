create table students(
    stu_id number(7) not null,
    stu_name varchar2(30) not null,
    stu_email varchar2(50) not null,
    stu_dob date ,
    cell_no varchar2(11),
    blood_grp varchar(3),
    
    CONSTRAINT demo_students_stu_id_pk primary key(stu_id)
    );
    
insert into students( stu_id,stu_name,stu_email,stu_dob,cell_no,blood_grp)
values(2,'Sabbir','sabbir@gmail.com',sysdate-8000, 0124546743,'B-');
select * from students;

create table emp (
ID number(5) not null,
Name VARCHAR2(30) default 'JEE',
Salary number(15) default 1000,
email VARCHAR2(50) ,
DOB date default (sysdate-350),

constraint demo_students_email_uk unique(email)
);

select * from emp;

insert into emp(ID,Name,email)
values(2,'Sabbir','mahbub@gamil.com');
insert into emp(ID,email)
values(2,'mahbub@gamil.com');

create table emp1294343(
eid number(10) not null,
ename VARCHAR2(30) not NULL,
salary number(10) default 1000,
hire_date date default (sysdate - 7302),
address VARCHAR2(300) default 'Dhaka,Bangladesh',
CONSTRAINT demo_emp1294343_eid_pk PRIMARY key(eid)
);
select * from emp1294343;

insert into emp1294343(eid,ename)
values(5,'Emon');

