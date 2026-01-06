select first_name , last_name, salary 
from hr.employees
where salary BETWEEN 4000 and 8000
order by salary ASC;

select * 
from hr.employees
where hire_date > '01-JAN-23'
order by hire_date DESC ;

select first_name , Last_name , department_id, salary
from hr.employees
WHERE department_id IN(50, 80)
order by department_id asc , last_name asc;

SELECT * 
from hr.jobs;

select  concat(first_name, concat(' ' ,last_name)) as Full_Name
from hr.employees;

select last_name , substr(last_name, 1 ,3),
concat(substr(last_name,1,4),'_US'),
upper(concat(substr(last_name,1,5),'_USa'))
from employees
where department_id = 60;

select round(45.7654)
from dual;

select mod(17,5)
from dual;

select ceil(2.14)
from dual;

select floor(4.738)
from dual;

select sysdate, current_timestamp
from dual;

select last_name , MONTHS_BETWEEN
       (current_timestamp , hire_date)
from employees;

select next_day('06-Feb-25' , 'friday')
from dual;

select last_day('4-feb-2028')
from dual;

select 
from dual;
        
                                    