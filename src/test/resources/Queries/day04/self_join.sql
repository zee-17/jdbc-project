select * from employees;


-- 7. Display manager name of 'Neena'

select MANAGER_ID from employees
where FIRST_NAME='Neena';

select FIRST_NAME,LAST_NAME from EMPLOYEES
where EMPLOYEE_ID=(select MANAGER_ID from employees
                   where FIRST_NAME='Neena');


select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,MANAGER_ID from EMPLOYEES;


select WORKERS.FIRST_NAME,WORKERS.LAST_NAME,MANAGERS.FIRST_NAME,MANAGERS.LAST_NAME
from EMPLOYEES WORKERS  inner join EMPLOYEES MANAGERS
                                   on WORKERS.MANAGER_ID=MANAGERS.EMPLOYEE_ID;


-- to see Steven
select WORKERS.FIRST_NAME,WORKERS.LAST_NAME,MANAGERS.FIRST_NAME,MANAGERS.LAST_NAME
from EMPLOYEES WORKERS  left join EMPLOYEES MANAGERS
                                  on WORKERS.MANAGER_ID=MANAGERS.EMPLOYEE_ID
order by WORKERS.FIRST_NAME;
