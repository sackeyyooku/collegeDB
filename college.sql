
drop database if exists college; 

-- create database
create database college;

-- create student table
create table students(
    id int primary key,
    name varchar(100) not null
);

create table results(
    score int primary key,
    lecturer_id int not null
);


create table Lecturer(
    id int primary key,
Lecturer_name varchar(120),
Lecturer_id varchar(15),
Lecturer_DOB varchar(50) unique,
primary key(Lecturer_id));

create table Lecturer_Courses(
    id int autoincrement primary key,
Course_id varchar(50),
L888ecturer_id varchar(15));

create table Department(
    id int autoincrement primary key,
Department_Name  varchar(23),
primary key(Department_Name));
);
