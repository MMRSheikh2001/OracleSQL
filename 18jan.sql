select * from employees;

select * from emp1122;

commit;

rollback;

desc employees;

--alter learn
alter table emp1122
add (join_date date default sysdate ,blood_grp VARCHAR(3));

update emp1122
set blood_grp ='A+'
where emp_id = 3;

alter table emp1122
modify (join_date date default sysdate-7300);

alter table emp1122
add(hiredate date DEFAULT sysdate-456);

alter table emp1122
drop (hiredate);

alter table emp1122 read only;

alter table emp1122 read write;

update emp1122
set blood_grp ='B+'
where emp_id = 5;

drop table emp1122;

--sequence


create sequence stu_sq_stu_id
    start with 100
    increment by 1
    maxvalue 9999999;
    
select stu_sq_stu_id.nextval
from dual;

select stu_sq_stu_id.currval
from dual;

insert into emp1294343(eid,ename,salary,hire_date,address)
values(stu_sq_stu_id.currval,'sg',45566,sysdate-1400,'Feni');

select * from emp1294343;

insert into emp1294343(eid,ename,salary,hire_date,address)
values(stu_sq_stu_id.nextval,'Rehana',45566,sysdate-1400,'Barisal');