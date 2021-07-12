drop database if exists college; 
create database college;

use college;

create table Student(
id int auto_increment,
firstname varchar(150) NOT NULL,
lastname varchar(150) NOT NULL,
student_id int(10) NOT NULL,
dob date NOT NULL,
PRIMARY KEY(id)
);

create table Course(
id int auto_increment,
course_id varchar(255),
course_name varchar(150),
PRIMARY KEY(id)
);

create table StudentCourse(
id int auto_increment,
course_id int(50),
student_id int(50),
FOREIGN KEY (course_id)
references Course(id),
FOREIGN KEY (student_id)
references Student(id),
PRIMARY KEY(id)
);

create table Lecturer(
id int auto_increment,
lecturer_id varchar(15),
firstname varchar(120),
lastname varchar(120),
dob varchar(50) unique,
contact varchar(255),
PRIMARY KEY (id)
);

create table LecturerCourses(
id int auto_increment,
course_id int,
lecturer_id int,
FOREIGN KEY (course_id)
references Course(id),
FOREIGN KEY (lecturer_id)
references Lecturer(id),
PRIMARY KEY (id)
);

create table Department(
id int auto_increment,
department_name  varchar(255),
PRIMARY KEY (id)
);

create table Result(
id int auto_increment,
score int,
lecturer_id int(20),
student_id int(20) not null,
course_id int (50) not null,
FOREIGN KEY (course_id)
references Course(id),
FOREIGN KEY (lecturer_id)
references Lecturer(id),
FOREIGN KEY (course_id)
references Course(id),
PRIMARY KEY (id)
);