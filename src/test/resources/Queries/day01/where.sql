

/*
 WHERE
 -- Which keyword we are using in JAVA to filter ?
    -- if statement
 -- To filter result from database while we are running query
     we are gonna use WHERE keyword
 -- String(Java) ---> Varchar (Database)
                      Varchar(20) --> it means you will have 20 letter
 -- double,float ---> Decimals
 */

select * from EMPLOYEES
where FIRST_NAME='David'; --> '' it is case SENSITIVE

-- display firstname,lastname,salary where firstname is Peter
select FIRST_NAME, LAST_NAME,SALARY from EMPLOYEES
where FIRST_NAME =  'Peter';


-- display firstname,lastname,salary where firstname is David and last_name is Austin
select FIRST_NAME, LAST_NAME,SALARY from EMPLOYEES
where FIRST_NAME = 'David'and LAST_NAME='Austin';

-- display all information from employees where salary is bigger than 6000
select * from EMPLOYEES
where SALARY > 6000;

-- display email of who is making less than 6000
select FIRST_NAME,EMAIL from EMPLOYEES
where SALARY < 6000;

-- display all info from employees  who is making more than 6000 and department id is 60 ;

select * from EMPLOYEES
where SALARY> 6000 and DEPARTMENT_ID= 60;

-- display all info from employees where salary  equals or more than 3000  and salary  equals or less than 7000

select * from EMPLOYEES
where SALARY >= 3000 and SALARY<= 7000;
-- BETWEEN lower and upper --> boundries are included

-- it will give result within this range
select * from EMPLOYEES
where SALARY between 3000 and 7000;



-- display all info from employees where employee_id between 100 and 120
  --> range is included

-- OR --
-- display all info from employees who is working as IT_PROG or MK_MAN
-- solution 1

select * from EMPLOYEES
where JOB_ID = 'IT_PROG' or JOB_ID='MK_MAN';
select * from EMPLOYEES
where JOB_ID in ('IT_PROG', 'MK_MAN');


-- IN CLAUSES --
-- it uses or logic
-- it check jobID from IN paranthesis to see condition is matching
-- solution 2


-- display all information where employee id is 121,143,156,134
--solution 1
select * from EMPLOYEES
where EMPLOYEE_ID in (121,143,156,134);



--solution 2


-- display all information where country id equals US , IT


-- display all country names except country_id is US and IT
select COUNTRY_NAME from COUNTRIES
where COUNTRY_ID not in ('US','IT');

-- IS NULL

-- display all information from employees where department id is null


-- display all information from emplyees where manager id is null
select * from EMPLOYEES
where MANAGER_ID is null ;

select * from EMPLOYEES
where MANAGER_ID is null;

-- IS NOT NULL
-- display all information from employees where department id is not null


-- display all information from emplyees where manager id is not null






