-- Q: Create a table to store student info (roll_no, name, city, marks).

-- Insert the following data in the table:

-- 110, "adam", "Delhi", 76
-- 108, "bob", "Mumbai", 65
-- 124, "casey", "Pune", 94
-- 112, "duke", "Pune", 80


use details;

create table student1(
roll_no int NOT NULL,
nane varchar(30),
city varchar (20),
marks int default 0 
);

insert into student1
values
(110, "adam", "Delhi", 76),
(108, "bob", "Mumbai", 65),
(124, "casey", "Pune", 94),
(112, "duke", "Pune", 80);

select * from student1;


-- Select all students who scored 75+.
-- Find names of all cities where students are from.
-- Find the maximum marks of students from each city.
-- Find the average of the class.
-- Add a new column grade and assign grades such that:
-- Marks > 80 → Grade = O
-- Marks 70–80 → Grade = A
-- Marks 60–70 → Grade = B



-- Select all students who scored 75+.
select * from student1 
where marks>75;


-- Find names of all cities where students are from.
select nane,city from student1; 


-- Find the average of the class.
-- aggregate function
select avg(marks) from student1;



-- Add a new column grade and assign grades such that:
-- Marks > 80 → Grade = O
-- Marks 70–80 → Grade = A
-- Marks 60–70 → Grade = B

alter table student1
add column grade char(1);

set sql_safe_updates=0;

update student1 
set grade=
case 
	when marks >80 then 'O'
    when marks between 70 and 80 then 'A'
    when marks between 60 and 70 then 'B'
    else 'C'
End;

select * from student1; 
