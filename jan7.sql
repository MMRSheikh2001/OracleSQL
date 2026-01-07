select to_char( current_timestamp , 'ddspth-month-yyyy - hh24-mi-am---sssss') 
from dual;

select to_char(sysdate - 5 , 'DDspth "Of" MONTH-YYYY' )
from dual;

select hire_date , to_char(hire_date , 'ddspth "of" month-YYYY')
from hr.employees;

select commission_pct, NVL(commission_pct,0)
from hr.employees;

SELECT commission_pct , nvl2(commission_pct, salary + salary * commission_pct , salary), salary
from hr.employees;

select nullif(nvl2( salary + salary * nvl(commission_pct,0) , salary))
from hr.employees;

select last_name, job_id, salary,
    case job_id when 'IT_PROG' then 1.1 * salary
                when 'ST_CLERK' then 1.15 * salary
                when 'SA_REP' then 1.20 * salary
    else    salary end    as   "Revised_Salary"            
from hr.employees;

select last_name, job_id, salary,
case  when salary <=3000 then 'Low_salary' 
            when salary <= 6000 then 'mid_salary'
            when salary <= 9000 then 'high_salary'
    else 'Extreme_salary' end as "Salary_grade"
    from hr.employees;
    
select  max(salary), job_id
from employees
group by job_id
order by 2 asc;

select max(salary),department_id, COUNT(department_id), job_id
from employees
group by department_id , job_id
order by 4;

select job_id , sum(salary) payroll 
from employees 
where job_id not like '%REP%' 
GROUP by job_id 
having sum(salary) > 13000
order by sum(salary);

select avg(salary), department_id
from employees
group by department_id;

select max(avg(salary))
from employees
group by department_id;