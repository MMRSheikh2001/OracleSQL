select * 
from employees;

select location_id , street_address , city , state_province , country_name
from locations
natural join  countries;

select last_name , department_id,department_name
from employees
natural join departments;

select e.last_name "Employee", e.employee_id "Emp#" , m.last_name "Manager", m.manager_id "Mgr#"
from employees e
join employees m
on e.manager_id = m.employee_id
order by 2;

--subquery

select last_name , salary , hire_date
from employees
where hire_date > (
    select hire_date
    from employees
    where last_name = 'Ernst'
);

select last_name , salary , hire_date
from employees
where salary > (
    select max(salary)
    from employees
    where job_id = 'IT_PROG'
);

select max(salary) 
from employees
where salary <(
    select max(salary)
    from employees 
);

 select max(salary)
    from employees ;
    
select first_name , last_name , salary
from employees
where salary = (
    select max(salary) 
    from employees
    where salary <(
        select max(salary)
        from employees 
        )
    );
select last_name, first_name, employee_id
from employees
where manager_id = 120;
    