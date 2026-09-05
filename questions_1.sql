create 	database if not exists details;

use details;

create table teacher(
id INT NOT NULL,
Name VARCHAR(30),
subject VARCHAR(20),
salary INT DEFAULT 10000
);

insert into teacher
values
(23,"Ajay","Maths",50000),
(47,"Bharat","english",60000),
(18,"chetan","chemistry",45000),
(9,"divya","physics",75000);

select * from teacher;

-- questions-
-- select salary of teacher more than 55k
select name,salary from teacher 
where salary>55000;

-- Rename salary column of teacher to ctc
Alter table teacher 
change column salary ctc int default 10000;

select * from teacher;

-- increment salary by 25%

set sql_safe_updates=1;

update teacher
set ctc=ctc+(ctc*0.25)
where ctc>=0;

select * from teacher;


-- adding column city default should be gurgaon
alter table teacher
add column city varchar(20) default "Gurgaon";

select * from teacher;

-- delete the salary column for teacher table
alter table teacher 
drop column ctc;

select * from teacher;


