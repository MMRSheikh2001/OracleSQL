select * from employees;

select * from students;

select * from emp1294343;

commit;

update emp1294343 set ename = 'Tanvir',salary =4000 where eid = 1;
update emp1294343 set ename = 'Emon' where eid = 2;
update emp1294343 set ename = 'Pk', address = 'Natore' where eid = 3;
update emp1294343 set ename = 'Sajin' , address ='Jigatola' where eid = 4;
update emp1294343 set ename = 'Sadia' , address = 'Shankar' where eid =5;

create table emp1122(
    emp_id NUMBER,
    emp_name VARCHAR(30) not null,
    emp_email VARCHAR(60) not null,
    emp_salary number(10,2),
    emp_cell VARCHAR(15),
    
    constraint hr_emp1122_emp_id_pk primary key(emp_id),
    constraint hr_emp1122_emp_email_uq unique(emp_email),
    constraint hr_emp1122_emp_cell_uq unique(emp_cell)
);

select * from emp1122;

insert into emp1122 (emp_id,emp_name,emp_email,emp_salary,emp_cell)
values (6,'Abul','abul@gmail.com',3000.00,'0165887854');