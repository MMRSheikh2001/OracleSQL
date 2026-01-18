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

