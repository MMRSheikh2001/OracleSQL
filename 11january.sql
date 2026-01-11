

select *
from retired_employees;

select job_id
from employees
UNION
select job_id
from retired_employees;

CREATE table students(
    STU_ID NUMBER(7) not null,
    stu_name VARCHAR2(30) not null,
    
);