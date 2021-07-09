
drop database if exists college; 

-- create database
create database college;

-- create student table
create table students(
    id int primary key,
    name varchar(100) not null
)
