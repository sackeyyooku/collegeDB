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

<<<<<<< HEAD

insert into Students value("Kwame","Asamoah","2254","11th August 1999");
insert into Students value("Kwesi","Anah","1114","23rd May 2000");
insert into Students value("Kofi","	Boye","3274","1st March 2002");

insert into StudentCourse value ("BIO444","2254");
insert into StudentCourse value ("MAT789","1114");
insert into StudentCourse value ("FRE231","3274");
=======
insert into Course value ("BIO444","BIOLOGY 444");
insert into Course value ("MAT789","MATH 789");
insert into Course value ("FRE231","FRENCH 231");
>>>>>>> e89dbe1c595a9a3a1915416a3679e9daf629c970

insert into Lecturer value ("KO123","Kofi","Nti","1st May 1975","020120155");
insert into Lecturer value ("NI456","Nii","Amo","3rd June 1965","02561962");
insert into Lecturer value ("AL789","Ali","Owusu","9th August 1980","026332145");

insert into LecturerCourses value ("BIO444","KO123"); 
insert into LecturerCourses value ("MAT789","NI456");
insert into LecturerCourses value ("FRE231","AL789");

insert into Department value ("MATH");
insert into Department value ("PHYSICS");
insert into Department value ("FRENCH");

<<<<<<< HEAD



=======
<<<<<<< HEAD
); 
=======
insert into Result value ("76","KO123","2254","BIO444");
insert into Result value ("89","NI456","1114","MAT789");
insert into Result value ("45","AL789","3274","FRE231");
>>>>>>> 8c5fb39f7d489b59415c7ec815a500799cb73302
>>>>>>> e89dbe1c595a9a3a1915416a3679e9daf629c970
