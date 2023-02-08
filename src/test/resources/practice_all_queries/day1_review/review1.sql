select DEPARTMENT_ID, sum(salary), max(salary) from EMPLOYEES
group by DEPARTMENT_ID;

select DEPARTMENT_ID from EMPLOYEES;
