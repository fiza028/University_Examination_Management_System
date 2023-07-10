--1. dropping tables

drop table Result;
drop table Routine;
drop table Examination;
drop table Student;
drop table Department;


--2. creating tables

create table Department(
dept_id number primary key,
dept_name varchar(20) not null,
faculty varchar(50),
check (dept_id > 900)
);

create table Student(
st_id number primary key,
st_name varchar(20) not null,
dept_id number not null,
date_of_birth date,
gender char(1),
check (st_id > 000),
check (gender='F' or gender='M'),
foreign key(dept_id) references Department(dept_id) on delete cascade
);

create table Examination(
course_id number primary key,
course_title varchar(50),
semester number(1) not null,
marks number(3),
dept_id number not null,
check (course_id>100),
check (semester>=1 and semester<=8),
check (marks <= 300),
foreign key(dept_id) references Department(dept_id) on delete cascade
);

create table Routine(
course_id number not null,
exam_date date,
exam_time varchar(10),
foreign key(course_id) references Examination(course_id) on delete cascade
);

create table Result(
st_id number not null,
gpa number(4,2),
cgpa number(4,2) not null,
check (gpa<=5.0),
check (cgpa<=4.0),
foreign key(st_id) references Student(st_id) on delete cascade
);

--3. add column in Department table
alter table Department add lecturer varchar(20);

--4. modify column definition
alter table Department modify lecturer char(20);

--5. rename column name
alter table Department rename column lecturer to lecturer1;

--6. drop the column
alter table Department drop column lecturer1;