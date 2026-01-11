

select *
from retired_employees;

select job_id
from employees
UNION
select job_id
from retired_employees;