-- Given the Employee table, write a SQL query that finds out employees who earn more than their managers.
select WORKERS.FIRST_NAME,WORKERS.LAST_NAME,WORKERS.SALARY,MANAGERS.SALARY,MANAGERS.FIRST_NAME,MANAGERS.LAST_NAME
from EMPLOYEES WORKERS  left join EMPLOYEES MANAGERS
                                  on WORKERS.MANAGER_ID=MANAGERS.EMPLOYEE_ID
where WORKERS.SALARY>MANAGERS.SALARY;

select * from EMPLOYEES;