create database college;
create database xyz_company;

-- to delete a database we use drop command 
drop database xyz_company;

-- to create a table we have to specify ki kisme table create krna h to do so we have to use the data base 
use college;

-- to create a table we have to use create command
create table college_table(
id int,
Name varchar(30),
age int);

insert into college_table
values
(101,"Satyansh Singh",22),
(102,"Bob",23);

select * from college_table;

-- to be asure we didnt want to craete duplicate database we use "if not exists" 
create database if not exists collge;

-- same goes for databases dropping part we can add "if exists" so that we cant get any error  
drop database if exists zeus;
-- to show each and every databases 
show databases;


-- first we have to use that database to see thier internal tables
use college;
-- to show every tables we use show tables 
show tables;

-- Table Queries
-- 1= Create Table

create table user_table(
id int,
name varchar(20) not null,
email varchar(50) unique,
followers int default 0,
following int,
constraint check (following>=18 and followers>10)
);

-- key constraints 
-- primary key  
use college;

create table new_tle(
id int primary key,
age int,
name varchar(30) not null,
email varchar(50) unique,
followers int default 0,
following int,
constraint check (age>=13)
);

create table post(
id int primary key,
content varchar(100),
user_id int,
foreign key(user_id) references new_tle(id)
);

drop table post;

use college;

-- inserting values into new_tle 
insert into new_tle
(id,age,name,email,followers,following)
values
(101,22,"Satyansh Singh","email@gmail.com",231,311),
(102,2,"Xavier Singh","gmail@gmail.com",231,311);

-- select command
-- selects and show data from the database
select id,name from new_tle;

-- to select all from a table
select * from new_tle;

-- distinct keyword use to give distinct results by removing repeating same values of user
select distinct age from new_tle;

-- Clauses

-- where clause
select age from new_tle 
where age>20;

-- operators of where clause
-- Arithematic operator
-- Below query provide jiski age 1 saal baaad 23 hojaye uski details  
select name,age from new_tle
where age +1 = 23;

select * from new_tle;
-- where clause frequently used operators


insert into new_tle
(id,age,name,email,followers,following)
values
(103,24,"Rahul Sharma","rahul.sharma@gmail.com",542,318),
(104,21,"Priya Verma","priya.verma@gmail.com",1280,765),
(105,26,"Aman Gupta","aman.gupta@gmail.com",892,421),
(106,23,"Neha Singh","neha.singh@gmail.com",654,290),
(107,25,"Rohit Kumar","rohit.kumar@gmail.com",1450,980),
(108,22,"Anjali Patel","anjali.patel@gmail.com",378,156),
(109,27,"Vikram Yadav","vikram.yadav@gmail.com",2100,1300),
(110,20,"Sneha Mishra","sneha.mishra@gmail.com",490,275),
(111,24,"Arjun Mehta","arjun.mehta@gmail.com",780,510),
(112,28,"Kavya Jain","kavya.jain@gmail.com",1650,920);
-- 1- AND 
-- checks both conditions to be true
select name, age,followers
FROM new_tle
WHERE age >15 AND followers>200;

-- 2- OR condition 
select name,age,followers
from new_tle
where age> 15 OR followers>200;

-- Aggreation function 

Select max(followers)
from new_tle;


-- give the no of user whose age is greater than 14
select count(age)
from new_tle
where age = 20;

-- group by clause used for to group rows from multiple records and gives output in a summary row as an iutput 
-- generally used with aggreagate function
select age,max(followers)
from new_tle
group by age;


-- having claude - used condition in the group by clause to add conditions
select age, max(followers)
from new_tle
group by age
having max(followers)>200;

use college;

-- general order if we have various keywords to apply
-- select columns
-- from table name
-- where condition 
-- group by columns
-- having condition 
-- order by columns asc

select age,max(followers)
from new_tle
group by age
having max(followers)>200
order by age desc;

-- table queries - Updation of a table
update new_tle
set followers=999
where id=101;

select * from new_tle;

select * from new_tle
where id=101;

-- deleting queries to delete existing rows
delete from new_tle
where id=102;

select * from new_tle;


-- columns level upadations/ schema upations

-- Adding an column
ALTER table new_tle
ADD column links varchar(100);

-- droping a column
ALTER table new_tle
DROP column links;

-- Renmaing a table 
ALTER TABLE new_tle
RENAME TO user;

select * from user;

-- change column name 
ALTER TABLE user
change column followers subscribers int default 0;

-- to modify columns in terms of datatype and constraints
alter table user 
modify subscribers int default 10;

-- to empty our table data
truncate table user;

select * from user;



