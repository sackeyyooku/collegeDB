drop database if exists college; 
create database college;

use college;

create table Student(
id auto_increment,
firstname varchar(150) NOT NULL,
lastname varchar(150) NOT NULL,
student_id int(10) NOT NULL,
dob date NOT NULL,
PRIMARY KEY(id)
);

create table Course(
course_id int(50),
course_name varchar(150),
PRIMARY KEY(id)
);

create table StudentCourse(
id auto_increment,
course_id int(50),
student_id int(50),
FOREIGN KEY (course_id)
references Course(student_id),
FOREIGN KEY (student_id)
references Student(student_id),
PRIMARY KEY(id)
);

create table Lecturer(
id auto_increment,
lecturer_id varchar(15),
firstname varchar(120),
lastname varchar(120),
dob varchar(50) unique,
contact varchar(255),
PRIMARY KEY (id)
);

create table LecturerCourses(
id auto_increment,
course_id varchar(50),
lecturer_id varchar(15),
FOREIGN KEY (course_id)
references Course(course_id),
FOREIGN KEY (lecturer_id)
references Lecturer(lecturer_id)
);

create table Department(
id auto_increment,
department_name  varchar(255),
PRIMARY KEY (id)
);

create table Result(
id auto_increment,
score int primary key,
lecturer_id int(20) not null,
student_id int(20) not null,
course_id int (50) not null,
FOREIGN KEY (course_id)
references Course(course_id),
FOREIGN KEY (lecturer_id)
references Lecturer(lecturer_id),
FOREIGN KEY (course_id)
references Course(course_id)
);
