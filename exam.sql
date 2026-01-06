SELECT first_name || ' ' || last_name || ' ' || job_id as "EMPLOYEE_AND_TITLE"
    from employees;
    
SELECT * 
    from employees
        where salary > 10000;
        
SELECT * 
    from employees
        WHERE department_id = 50;
        
 SELECT * 
    from employees
        WHERE last_name like 'S%_';
        
SELECT last_name,first_name ,salary
    FROM employees
        ORDER BY first_name , salary;
        
SELECT last_name,first_name ,salary
    FROM employees
        ORDER BY 2 DESC , 3 desc;   
        
SELECT last_name , job_id , department_id ,job_id , hire_date
    from employees
        order by hire_date , 3 ;
        
select last_name , first_name , hire_date 
    from employees
        where hire_date BETWEEN '01-JAN-01' AND '31-DEC-03'
order by hire_date
    OFFSET 9 rows FETCH next  10 rows only;
    
select last_name , first_name , hire_date , salary
    from employees  
        WHERE salary = &salary;

select &1 , &2 , hire_date , salary
    from employees  
        WHERE salary = &salary;   
        
select last_name , first_name , hire_date , salary
    from employees  
        WHERE salary BETWEEN &FROM_salary and &To_salary;        
            
            