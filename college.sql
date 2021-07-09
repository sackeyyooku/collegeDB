
drop database if exists college; 

-- create database
create database college;

-- create student table
create table students(
    id int primary key,
    name varchar(100) not null
)
<<<<<<< HEAD
=======

create table results(
    score int primary key,
    lecturer_id int not null
)
>>>>>>> 259797bd574589a926d0a4332c4dcc4ea388d449
