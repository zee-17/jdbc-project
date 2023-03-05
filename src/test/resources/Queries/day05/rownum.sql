select * from EMPLOYEES
where rownum<6
order by salary desc ;

select * from (select * from EMPLOYEES order by salary desc )
where rownum<6;

-- IQ -->  display all information who is getting 213th highest salary
--  display all information who is getting 4th highest salary

select * from EMPLOYEES
where salary = (select min(salary) from (select  distinct salary  from EMPLOYEES order by salary desc)
                where rownum<5);

-- HOMEWORK -->  display all information who is getting 3th lowest salary