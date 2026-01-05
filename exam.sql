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