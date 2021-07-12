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
course_id int (150),
course_name varchar(150),
PRIMARY KEY(id)
);

create table StudentCourse(
id int auto_increment,
course_id int(150),
student_id int(10),
FOREIGN KEY (student_id) references Student(id),
FOREIGN KEY (course_id) references Course(id),
PRIMARY KEY(id)
);

create table Lecturer(
id int auto_increment,
lecturer_id varchar(150),
firstname varchar(150),
lastname varchar(150),
dob date NOT NULL,
contact varchar(255),
PRIMARY KEY (id)
);

create table LecturerCourse(
id int auto_increment,
course_id int,
lecturer_id int,
FOREIGN KEY (course_id) references Course(id),
FOREIGN KEY (lecturer_id) references Lecturer(id),
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
FOREIGN KEY (course_id) references Course(id),
FOREIGN KEY (lecturer_id) references Lecturer(id),
FOREIGN KEY (course_id) references Course(id),
PRIMARY KEY (id)
);

insert into Student value(1,"Kwame","Asamoah",2254,"1999-08-11");
insert into Student value(2,"Kwesi","Anah",1114,"2000-05-23");
insert into Student value(3,"Kofi","Boye",3274,"2002-03-01");

insert into Course value (1,444,"BIOLOGY 444");
insert into Course value (2,789,"MATH 789");
insert into Course value (3,231,"FRENCH 231");

insert into Lecturer value (1,"KO123","Kofi","Nti","1975-05-01",020120155);
insert into Lecturer value (2,"NI456","Nii","Amo","1965-06-03",02561962);
insert into Lecturer value (3,"AL789","Ali","Owusu","1980-08-09",026332145);

insert into StudentCourse value (1,1,1);
insert into StudentCourse value (2,2,2);
insert into StudentCourse value (3,3,3);

insert into LecturerCourse value (1,1,1); 
insert into LecturerCourse value (2,2,2);
insert into LecturerCourse value (3,3,3);

insert into Department value (1,"MATH");
insert into Department value (2,"PHYSICS");
insert into Department value (3,"FRENCH");

insert into Result value (1,67,1,8939,1);
insert into Result value (2,89,2,5665,2);
insert into Result value (3,45,3,4546,3);

SELECT student_id, score,
CASE
WHEN score < 40 then 'F' 
    WHEN score < 50 then 'E'
    WHEN score < 60 then 'D'
    WHEN score < 70 then 'C'
    WHEN score < 80 then 'B'
    ELSE 'A'
END AS grade
FROM Result
ORDER BY student_id;

select * from Student;
SELECT *, YEAR(CURDATE()) - YEAR(dob) AS age FROM Student;

select Lecturer.firstname,Lecturer.lastname,Lecturer.contact,LecturerCourses.course_id
from Lecturer
INNER JOIN LecturerCourses
ON Lecturer.id = LecturerCourses.lecturer_id;