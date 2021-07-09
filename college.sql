drop database if exists college; 
create database college;

use college;

create table Student(
firstname varchar(150) NOT NULL,
lastname varchar(150) NOT NULL,
student_id int(10) NOT NULL,
dob date NOT NULL,
PRIMARY KEY (student_id)
);

create table Course(
course_id int(50),
course_name varchar(150),
PRIMARY KEY (course_id)
);

create table StudentCourse(
course_id int(50),
student_id int(50),
FOREIGN KEY (course_id)
references Course(student_id),
FOREIGN KEY (student_id)
references Student(student_id)
);

create table Lecturer(
lecturer_id varchar(15),
firstname varchar(120),
lastname varchar(120),
dob varchar(50) unique,
contact varchar(255),
PRIMARY KEY (lecturer_id)
);

create table LecturerCourses(
course_id varchar(50),
lecturer_id varchar(15),
FOREIGN KEY (course_id)
references Course(course_id),
FOREIGN KEY (lecturer_id)
references Lecturer(lecturer_id)
);

create table Department(
department_name  varchar(255),
PRIMARY KEY (department_name)
);

create table Result(
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
