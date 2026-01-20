select * from emp1122;

desc emp1122;

alter table emp1122
add constraint hr_emp1122_emp_id_pk primary key(emp_id);

alter table emp22 rename to emp1122;

alter table emp1122 rename column emp_salary to salary;

alter table emp1122 rename constraint hr_emp1122_emp_cell_uk
to hr_emp1122_emp_cell_uq;