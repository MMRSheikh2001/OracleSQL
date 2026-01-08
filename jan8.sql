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

--job grade

CREATE TABLE job_grades (
grade 		CHAR(1),
lowest_sal 	NUMBER(8,2) NOT NULL,
highest_sal	NUMBER(8,2) NOT NULL
);

ALTER TABLE job_grades
ADD CONSTRAINT jobgrades_grade_pk PRIMARY KEY (grade);

INSERT INTO job_grades VALUES ('A', 1000, 2999);
INSERT INTO job_grades VALUES ('B', 3000, 5999);
INSERT INTO job_grades VALUES ('C', 6000, 9999);
INSERT INTO job_grades VALUES ('D', 10000, 14999);
INSERT INTO job_grades VALUES ('E', 15000, 24999);
INSERT INTO job_grades VALUES ('F', 25000, 40000);

COMMIT;

select * from job_grades;

select e.last_name , e.salary , j.grade
from employees e join job_grades j
on e.salary
between j.lowest_sal and j.highest_sal;

