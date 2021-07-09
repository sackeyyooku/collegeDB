
drop database if exists college; 

create database college;

create table student(
id int autoincrement primary key,
firstname varchar(150),
lastname varchar(150),
student_id int(10),
dob date(50)
);

create table studentcourse(
id int autoincrement primary key,
course_id int(50),
student_id int(50)
);

create table course(
id int autoincrement primary key,
course_id int(50),
course_name varchar(150)
);

create table Lecturer(
id int autoincrement primary key,
firstname varchar(120),
lastname varchar(120),
lecturer_id varchar(15),
dob varchar(50) unique,
contact varchar(255)
);

create table LecturerCourses(
id int autoincrement primary key,
course_id varchar(50),
lecturer_id varchar(15)
);

create table Department(
id int autoincrement primary key,
department_name  varchar(255)
);

create table results(
id int autoincrement primary key,
score int primary key,
lecturer_id int not null,
student_id int not null,
course_id int (50) not null
);

