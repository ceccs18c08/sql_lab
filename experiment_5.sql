-- Creating the table --

create table class(name varchar(20), id int);

-- Inserting the values --

insert into class(name,id)
values("Arjun",11),("hari",36),("Jesswin",29),("aravind",69);
insert into class(name,id)
values("jessel",46);

-- Illustration of rollback and commit --

start transaction;

insert into class(name,id)
values("justin",12);
rollback;

select * from class;

insert into class(name,id)
values("abhijith",62);
select * from class;
commit;

-- Illustration of savepoint --

start transaction;