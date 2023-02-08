create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;


select * from Developers;
select * from TESTERS;

select * from Developers
union
select * from TESTERS;   -- union it sel removes dublicate

select * from Developers
union all                -- (all)order
select * from TESTERS;

select Names from Developers
union
select Names from TESTERS;    -- remove duplicate

select Names from Developers
union
select Names from TESTERS
order by 1 desc ; --1 refers to the number of calm

select Names from Developers
union all
select Names from TESTERS
order by 1;

select Names from Developers
minus
select Names from TESTERS;

select Names from TESTERS
minus
select Names from Developers;

select * from Developers
minus
select * from TESTERS;

select * from Developers
intersect
select * from TESTERS;

select Names from Developers
intersect
select Names from TESTERS;


