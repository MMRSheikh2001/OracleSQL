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