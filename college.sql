
drop database if exists college; 

-- create database
create database college;

-- create student table
create table students(
first_name varchar(150),
last_name varchar(150),
student_id int(50),
student_DOB varchar(50) unique,
primary key (student_id));
);

create table student_courses(
course_id int(50),
student_id int(50)
);

create table courses(
course_id int(50),
department_name varchar(150),
course_name varchar(150)
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
Lecturer_id varchar(15)
);

create table Department(
id int autoincrement primary key,
Department_Name  varchar(23),
primary key(Department_Name));
);

create table results(
score int primary key,
lecturer_id int not null,
student_id int not null,
course_id
);

