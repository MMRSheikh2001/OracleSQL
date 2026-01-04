SELECT * 
    FROM  hr.EMPLOYEES;

SELECT first_name , last_name , email
    FROM hr.EMPLOYEES;

SELECT last_name , salary , salary * 12
    FROM hr.employees;    

select HIRE_DATE , HIRE_DATE + 90
    from hr.EMPLOYEES;


select first_name , commission_pct 
    FROM hr.EMPLOYEES;

select last_name as "Given ancestor Name" , salary*12  as "Yearly Salary"
    from hr.employees;  




SELECT last_name,email,hire_date , first_name, salary, commission_pct ,
salary + commission_pct as "Salary With Commission", first_name || ' ' || last_name
    FROM employees;

select   'MY First name is ' || first_name ||' And My last name is '|| last_name 
    FROM employees;
    
        
SELECT country_id , country_name 
    from countries;
    
SELECT DISTINCT department_id,  salary  
    FROM employees;
SELECT DISTINCT  salary ,  first_name
    FROM employees;  
    
DESCRIBE departments;    
      

desc employees;

SELECT * 
    FROM employees
        WHERE salary BETWEEN 2000 AND 12000;

SELECT * 
    FROM employees
        WHERE salary IN(5000,8000,12000);
        
SELECT * 
    FROM employees
        WHERE salary IN(5000,8000,12000) AND commission_pct BETWEEN 0.3 AND 0.5;  
        
SELECT * 
    FROM employees
        WHERE last_name LIKE '%i%';
        
SELECT * 
    FROM employees
        WHERE salary BETWEEN 2000 AND 3500 and last_name like '_%s%_';  
        
SELECT * 
    FROM employees
        WHERE  hire_date = '20-AUG-05';       
--   <>   is not equal  

SELECT * 
    FROM employees
        WHERE  commission_pct is not null;

