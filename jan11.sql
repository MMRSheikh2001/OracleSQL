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