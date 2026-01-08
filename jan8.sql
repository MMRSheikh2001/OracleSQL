select first_name , last_name , salary,
JOB_ID  ,LOCATION_ID,DEPARTMENT_NAME 
from hr.employees
NATURAL join  departments;

desc  employees;
desc departments;
desc jobs;

select EMPLOYEE_ID, FIRST_NAME , LAST_NAME , JOB_ID ,JOB_TITLE ,MAX_SALARY
from employees
natural join jobs
where salary > 8000
order by salary
;

select employee_id , last_name ,
    location_id , department_id
    from employees join departments
    using (department_id);
    
select e.first_name,e.last_name , e.salary , d.department_name
,l.street_address, l.city
from employees e
join departments  d
on d.department_id = e.department_id
join locations l
on l.location_id = d.location_id;