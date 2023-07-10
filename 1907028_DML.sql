insert into Department(dept_id, dept_name, faculty) values(907, 'CE', 'Civil Engineering');
insert into Department(dept_id, dept_name, faculty) values(908, 'ME', 'Mechanical Engineering');
insert into Department(dept_id, dept_name, faculty) values(909, 'CSE', 'Electrical and Electronic Engineering');
insert into Department(dept_id, dept_name, faculty) values(910, 'EEE', 'Electrical and Electronic Engineering');
insert into Department(dept_id, dept_name, faculty) values(911, 'ECE', 'Electrical and Electronic Engineering');
insert into Department(dept_id, dept_name, faculty) values(912, 'ESE', 'Mechanical Engineering');
insert into Department(dept_id, dept_name, faculty) values(913, 'MTE', 'Mechanical Engineering');
insert into Department(dept_id, dept_name, faculty) values(914, 'BME', 'Electrical and Electronic Engineering');
insert into Department(dept_id, dept_name, faculty) values(915, 'LE', 'Mechanical Engineering');
insert into Department(dept_id, dept_name, faculty) values(916, 'TE', 'Mechanical Engineering');



insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(010, 'Rahim', 907, date '2002-12-21', 'M');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(011, 'Karim', 914, date '2002-05-17', 'M');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(012, 'Saba', 914, date '2001-03-01', 'F');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(013, 'Shaila', 910, date '2000-12-10', 'F');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(014, 'Ananya', 916, date '2002-05-25', 'F');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(015, 'Rumana', 911, date '2000-01-31', 'F');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(016, 'Ahmed', 909, date '2000-07-20', 'M');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(017, 'Rony', 908, date '2002-04-16', 'M');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(018, 'Sagor', 915, date '2001-07-19', 'M');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(019, 'Nafisa', 911, date '2002-12-02', 'F');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(020, 'Reza', 912, date '2002-10-26', 'M');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(021, 'Parul', 915, date '2002-05-14', 'F');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(022, 'Monalisa', 911, date '2001-04-25', 'F');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(023, 'Rakib', 913, date '2000-03-10', 'M');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(024, 'Safa', 909, date '2001-04-15', 'F');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(025, 'Lisa', 908, date '2001-04-15', 'F');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(026, 'Nowrin', 911, date '2002-08-09', 'F');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(027, 'Sabab', 910, date '2000-07-21', 'M');
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(028, 'Ali', 914, date '2002-09-26', 'M');



insert into Examination(course_id, course_title, semester, marks, dept_id) values(107, 'Analog Electronics', 2, 210, 910);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(108, 'Digital Logic Design', 2, 200, 909);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(109, 'Database System', 5, 250, 909);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(110, 'Digital Electronics', 3, 200, 910);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(111, 'Advanced Leather Chemistry', 2, 200, 915);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(112, 'Fabric Manufacturing', 4, 215, 916);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(113, 'Fundamentals of Energy Resources', 1, 250, 912);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(114, 'Rapid Hardware and Software Design', 5, 180, 911);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(115, 'Biomechanics', 4, 210, 914);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(116, 'Control System Fundamentals', 4, 195, 913);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(117, 'Imaging and Biophotonics', 5, 180, 914);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(118, 'Structured Programming', 2, 230, 909);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(119, 'Polymer Science', 3, 200, 916);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(120, 'Thermodynamics', 5, 185, 908);
insert into Examination(course_id, course_title, semester, marks, dept_id) values(121, 'AutoCAD Civil 3D', 2, 200, 907);




insert into Routine (course_id, exam_date, exam_time) values(107, date '2023-01-31', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(108, date '2023-02-03', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(109, date '2023-02-13', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(110, date '2023-02-21', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(111, date '2023-02-25', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(112, date '2023-02-18', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(113, date '2023-03-02', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(114, date '2023-02-27', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(115, date '2023-02-04', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(116, date '2023-03-05', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(117, date '2023-03-08', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(118, date '2023-03-10', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(119, date '2023-03-13', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(120, date '2023-03-20', '10:00');
insert into Routine (course_id, exam_date, exam_time) values(121, date '2023-03-25', '10:00');



insert into Result(st_id, gpa, cgpa) values(010, 4.50, 3.68);
insert into Result(st_id, gpa, cgpa) values(011, 4.30, 3.25);
insert into Result(st_id, gpa, cgpa) values(012, 4.20, 3.12);
insert into Result(st_id, gpa, cgpa) values(013, 4.45, 3.50);
insert into Result(st_id, gpa, cgpa) values(014, 3.90, 2.98);
insert into Result(st_id, gpa, cgpa) values(015, 4.21, 3.34);
insert into Result(st_id, gpa, cgpa) values(016, 3.99, 2.99);
insert into Result(st_id, gpa, cgpa) values(017, 3.80, 2.95);
insert into Result(st_id, gpa, cgpa) values(018, 4.55, 3.75);
insert into Result(st_id, gpa, cgpa) values(019, 4.68, 3.64);
insert into Result(st_id, gpa, cgpa) values(020, 4.22, 3.34);
insert into Result(st_id, gpa, cgpa) values(021, 4.88, 3.95);
insert into Result(st_id, gpa, cgpa) values(022, 4.95, 3.78);
insert into Result(st_id, gpa, cgpa) values(023, 4.24, 3.40);
insert into Result(st_id, gpa, cgpa) values(024, 3.74, 3.01);
insert into Result(st_id, gpa, cgpa) values(025, 4.64, 3.52);
insert into Result(st_id, gpa, cgpa) values(026, 4.23, 3.03);
insert into Result(st_id, gpa, cgpa) values(027, 3.88, 3.11);
insert into Result(st_id, gpa, cgpa) values(028, 4.90, 3.86);


--1. displaying table data using select command

select * from Department;
select * from Student;
select * from Examination;
select * from Routine;
select * from Result;

--2. updating data in a table
-- inserting
insert into Student(st_id, st_name, dept_id, date_of_birth, gender) values(029, 'Antu', 911, date '2002-08-16', 'M');

--updating
update Student set st_name='Piku' where st_id=029;

--3. deleting row from a table
delete from Student where st_id=029;

--4. union 
--Retreive the department name which is like contains 'S' and which starts with 'C'

select dept_name from Department where dept_name like 'C%' union select dept_name from Department where dept_name like '%S%';

--5. intersect
select dept_name from Department where dept_name like 'C%' intersect select dept_name from Department where dept_name like '%S%';

--6. except
select dept_name from Department where dept_name like '%S%' minus select dept_name from Department where dept_name like 'C%';

--except gives error in my oracle, that's why i am using minus operation instead of except

--7. with clause
--Retreive maximum of cgpa using with clause

with max_cgpa(val) as (select max(cgpa) from Result) select * from Result, max_cgpa where Result.cgpa=max_cgpa.val;

--8. Aggregate Function

--count
select count(*) from Student;
--average
select avg(cgpa) from Result;
--sum
select sum(marks) from Examination;
--max
select max(cgpa) from Result;
--min 
select min(gpa) from Result;

--9. group by and having
select count(dept_id) as Total_dept, faculty from Department group by faculty;

select count(st_id) as Total_student, dept_id from Student group by dept_id having count(st_id)>1;

--10. nested subquery
select st_name from Student where dept_id=(select dept_id from Department where dept_id=(select dept_id from Examination where course_id=(select course_id from Examination where course_title='Analog Electronics')));

--11. set membership
--and
select distinct course_title from Examination where semester=1 and course_title in (select course_title from Examination where semester=5);

--or
select dept_name, faculty from Department where faculty='Mechanical Engineering' or faculty='Civil Engineering';
 
--not
select distinct dept_name from Department where dept_name not in('Physics', 'Chemistry');

--12. set comparison
--some
select marks, semester from Examination where semester> some(select semester from Examination where course_title='Fabric Manufacturing');

--all
select marks, semester from Examination where semester> all(select semester from Examination where course_title='Polymer Science');

--13. exists
select * from Examination where semester>=2 and exists (select * from Department where dept_name like '__E');

--14. string opeartions
select dept_name from Department where faculty like 'E%';

select st_id, st_name from Student where st_name like '____m';

select course_title, marks from Examination where marks like '%2%';

--15. join operations
select * from Department natural join Student where dept_id=911;

select dept_name, course_title from Department left outer join Examination on Department.dept_id=Examination.dept_id;

select dept_name, course_title from Department right outer join Examination using(dept_id);

select dept_name, course_title from Department full outer join Examination using(dept_id);

--16. Find all courses in EEE department using view
create view EEE_Dept_Course as select course_title from Examination where dept_id = (select dept_id from Department where dept_name ='EEE');

--mixed queries
--17. Retreive the students details whose department is CSE
select * from Student s join Department d on d.dept_id=s.dept_id where dept_name = 'CSE';

--18. Retreive the average marks of all students
select avg(marks) as avg_marks from Examination;

--19. Retreive the dept_name which has the highest cgpa
select dept_name from Department d join Student s on d.dept_id=s.dept_id join Result r on r.st_id=s.st_id where cgpa=(select max(cgpa) from Result);

--20. Retreive the faculty name which has the highest cgpa
select faculty from Department d join Student s on d.dept_id=s.dept_id join Result r on r.st_id=s.st_id where cgpa=(select max(cgpa) from Result);

--21. Retreive the students who born in 2000
select * from Student where date_of_birth between date '2000-01-01' and date '2000-12-31';

--22. Retreive the students whose department starts with C
select * from Student s join Department d on d.dept_id=s.dept_id where d.dept_name like 'C%';

--23. Retreive the students infromation and depts whose semester is 4 and arrange it according to dept_name
select st_id, st_name, date_of_birth, gender, semester, dept_name from Student s join Department d on d.dept_id = s.dept_id join Examination e on d.dept_id=e.dept_id where semester=4 order by dept_name;

--24. Retreive exam_time, exam_date of Database System exam
select exam_time, exam_date, course_title from Examination e join Routine r on e.course_id=r.course_id where course_title='Database System';

--25. Retreive the course details of semseter 2
select * from Examination e join Department d on d.dept_id=e.dept_id where semester=2;

--26. Retreive the students group by gender
select * from Student order by gender;

--27. Retreive the students whose gpa >= 4.5
select s.st_id, st_name, date_of_birth, gender from Student s join Result r on s.st_id=r.st_id where gpa>=4.5;

--28. Retreive the departments which have more than or equal 2 courses
select d.dept_id, d.dept_name from Department d join Examination e on d.dept_id=e.dept_id group by d.dept_id, d.dept_name having count(distinct e.course_id) >=2;

--29. Retreive the student who has the highest cgpa
select s.st_id, st_name, date_of_birth, gender from Student s join Result r on s.st_id=r.st_id where cgpa=(select max(cgpa) from Result);

--30. List course_id, course_title, exam_time, exam_date order by exam_date
select e.course_id, e.course_title, r.exam_time, r.exam_date from Examination e join Routine r on e.course_id=r.course_id order by r.exam_date;

--31. List the courses of departments
select d.dept_name, count(distinct e.course_id) as total_courses from Department d join Examination e on d.dept_id = e.dept_id group by d.dept_name;

--32. Count the total students in each department
select d.dept_name, count(distinct s.st_id) as total_student from Department d join Student s on d.dept_id=s.dept_id group by d.dept_name;

--33. Retreive the maximum cgpa of all department
select d.dept_name, max(r.cgpa)as max_cgpa from Department d join Student s on d.dept_id=s.dept_id join Result r on s.st_id=r.st_id group by d.dept_name;



