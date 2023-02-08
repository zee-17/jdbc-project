select * from employees;


/*
 ORDERBY
    - It allows us to sort data based on provided column
    - AS A DEFAULT it will order the result ASCENDING ORDER (A-Z,0-9)
    - If you wanna sort it DESCENDING order we need specify right after column name
 */
-- display all employees based salary in asc order
select * from EMPLOYEES order by SALARY asc;

-- display all employees based salary in desc order

select * from EMPLOYEES order by SALARY desc;

-- Can we use index to order results ?
-- YES we can
-- Index needs to within limit from column number


-- display all informatin from employees
-- where employee id is smaller than 120 and order them based on salary desc order
select * from EMPLOYEES
where EMPLOYEE_ID < 120 order by SALARY asc ;

-- display all information from employees and order them based firstname asc
select * from EMPLOYEES order by FIRST_NAME asc;


--IQ -->  display all information from employees and order them based firstname asc and based on lastname desc
select * from EMPLOYEES
order by FIRST_NAME, LAST_NAME desc;


/*
 it will first order result based on firstname
 after getting result if we have same names it will order them based lastname in desc order
 David Austin
 David Berstein
 David Lee
 --After execution
 David Lee
 David Berstein
 David Austin
 */