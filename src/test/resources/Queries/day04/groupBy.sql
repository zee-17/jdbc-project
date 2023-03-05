select JOB_ID,avg(salary),min(salary),max(SALARY),sum(salary),count(*) from EMPLOYEES
group by JOB_ID;

select REGION_ID,count(*) from COUNTRIES
group by  REGION_ID;

select * from COUNTRIES;

select REGION_ID,count(*) from COUNTRIES
group by  REGION_ID
order by 2 desc;

select JOB_ID,avg(SALARY) from EMPLOYEES
group by JOB_ID
having avg(salary)>5000
order by 2 desc;
