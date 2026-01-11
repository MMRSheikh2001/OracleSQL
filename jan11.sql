SELECT *
FROM employees;
    
select employee_id , last_name , job_id, salary
from employees
where salary < ALL (
    select salary
    from employees
    where job_id = 'IT_PROG')
and   job_id <> 'IT_PROG';

select employee_id , last_name
from employees
where department_id in(
    select department_id
    from employees
where last_name LIKE '%u%' );

select  last_name ,department_id, job_id, location_id
from employees natural join departments
where location_id = 1700;

select  e.last_name ,e.department_id, e.job_id, d.location_id
from employees e join departments d
on e.department_id = d.department_id
where location_id = 1700;  

select  e.last_name ,e.department_id, e.job_id
from employees e
where department_id in (select department_id
                        from departments
                        where location_id = 1700);

select last_name , salary
from employees
where manager_id in (
    select manager_id
    from employees
    where last_name = 'King');

--retired employees

create table retired_employees(
    employee_id number primary key,
    FIRST_NAME VARCHAR2(20), 
LAST_NAME       VARCHAR2(25) NOT NULL ,
EMAIL          VARCHAR2(25) NOT NULL ,
RETIRED_DATE      DATE NOT NULL,
JOB_ID         VARCHAR2(10) NOT NULL ,
SALARY                  NUMBER(8,2)  ,
MANAGER_ID              NUMBER(6)  ,  
DEPARTMENT_ID           NUMBER(4)
);

insert into retired_employees 
  values(301, 'Rick', 'Dayle', 'RDAYLE', '18-MAR-2010', 'AD_PRES', 8000, 124, 90);
insert into retired_employees 
  values(302, 'Meena', 'Rac', 'MRAC', '21-SEP-2011', 'AD_VP', 11000, 149, 90);
insert into retired_employees 
  values(303, 'Mex', 'Haan', 'MHAAN', '13-JAN-2010', 'AD_VP', 9500, 149, 80);
insert into retired_employees 
  values(304, 'Alexandera', 'Runold', 'ARUNOLD', '01-JAN-2011', 'IT_PROG', 7500, 124, 60);
insert into retired_employees 
  values(305, 'Bruk', 'Ernst', 'BERNST', '21-MAY-2010', 'IT_PROG', 6000, 149, 60);
insert into retired_employees 
  values(306, 'Dravid', 'Aust','DAUST', '25-JUN-2009', 'IT_PROG', 4800, 124, 60);
insert into retired_employees 
  values(307, 'Raj', 'Patil', 'RPATIL', '05-FEB-2012', 'IT_PROG', 4800, 201, 60);
insert into retired_employees 
  values(308, 'Rahul', 'Bose', 'RBOSE', '17-AUG-2012', 'FI_MGR', 12008, 124, 100);
insert into retired_employees 
  values(309, 'Dany', 'Fav', 'DFAV', '16-AUG-2011', 'FI_ACCOUNT', 9000, 101, 90);
insert into retired_employees 
  values(310, 'James', 'Ken', 'JKEN', '28-SEP-2010', 'FI_ACCOUNT', 8200, 101, 90);
insert into retired_employees 
  values(311, 'Shana', 'Grag', 'SGRAG', '30-SEP-2010', 'FI_ACCOUNT', 7700, 201, 100);
insert into retired_employees 
  values(312, 'Peter', 'Jois', 'PJOIS', '07-JUN-2014', 'FI_ACCOUNT', 7800, 124, 100);
insert into retired_employees 
  values(313, 'Lui', 'Pops', 'LPOPS', '07-DEC-2010', 'FI_ACCOUNT', 6900, 201, 100);
insert into retired_employees 
  values(314, 'Del', 'Raph', 'DRAPH', '07-DEC-2012', 'PU_MAN', 11000, 101, 30);
insert into retired_employees 
  values(315, 'Alex', 'Khurl', 'AKHURL', '18-MAY-2011', 'PU_CLERK', 3100, 149, 30);

COMMIT