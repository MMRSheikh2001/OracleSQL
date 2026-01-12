
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
    
    select *
    from students;

