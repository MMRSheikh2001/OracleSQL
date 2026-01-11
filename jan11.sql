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
    