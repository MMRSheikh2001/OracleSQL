select * from employees;

select department_id, avg(salary)
from employees
group by department_id
having max(salary) >12000;

select first_name 
from employees
where first_name like 'S%';

select avg(salary)
from employees
where job_id like 'SA%';
