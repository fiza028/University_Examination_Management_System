--1. variable declaration and printing value

set serveroutput on 

declare 
Dpt_Id Department.dept_id%type;
Dpt_Name Department.dept_name%type;

begin
select dept_id, dept_name into Dpt_Id, Dpt_Name from Department where dept_id=916;
dbms_output.put_line('DEPT_ID: '||Dpt_Id|| ' DEPT_NAME: '||Dpt_Name);
end;
/


--2. inserting and set default 

set serveroutput on

declare
Dpt_id Department.dept_id%type:=901;
Dpt_name Department.dept_name%type:='MSE';
fac Department.faculty%type:='EEE';


begin
insert into Department values(Dpt_id, Dpt_name, fac);
end;
/

--3. using rowtype to represent an entire row in a database table

set serveroutput on

declare
Result_row Result%rowtype;

begin
select st_id, gpa, cgpa into Result_row.st_id, Result_row.gpa, Result_row.cgpa from Result where st_id=028;
dbms_output.put_line('Student_id: '||Result_row.st_id|| ' GPA: '||Result_row.gpa|| ' CGPA: '||Result_row.cgpa);
end;
/


--4. cursor and row count: cursor is used to retreive rows one at a time

set serveroutput on

declare 
cursor stu_cursor is select st_id, st_name, gender, dept_id from Student;
stu_row Student%rowtype;

begin
open stu_cursor;
fetch stu_cursor into stu_row.st_id, stu_row.st_name, stu_row.gender, stu_row.dept_id;

while stu_cursor%found loop
dbms_output.put_line('Stu_ID: '||stu_row.st_id||' Stu_Name: '||stu_row.st_name|| 'Gender: '||stu_row.gender||' Dept_ID: '||stu_row.dept_id);
dbms_output.put_line('Student_No: '||stu_cursor%rowcount);
fetch stu_cursor into stu_row.st_id, stu_row.st_name, stu_row.gender, stu_row.dept_id;
end loop;

close stu_cursor;
end;
/


--5. For loop/while loop
--with extend function

set serveroutput on

declare
countt number;
crs_title Examination.course_title%type;
TYPE NAMEARRAY IS VARRAY(15) OF Examination.course_title%type;
A_name NAMEARRAY:=NAMEARRAY();


begin
countt:=1;
for x in 107..121
loop
select course_title into crs_title from Examination where course_id=x;
A_name.EXTEND();
A_name(countt):=crs_title;
countt:=countt+1;
end loop;

countt:=1;
while countt<=A_name.COUNT
loop
dbms_output.put_line(A_name(countt));
countt:=countt+1;
end loop;
end;
/

--without extend function
set serveroutput on

declare
countt number;
stu_name Student.st_name%type;
TYPE NAMEARRAY IS VARRAY(10) OF Student.st_name%type;
A_name NAMEARRAY := NAMEARRAY('st 1', 'st 2', 'st 3', 'st 4', 'st 5', 'st 6', 'st 7', 'st 8', 'st 9', 'st 10');
--VARRAY with a fixed size of 10 elements and initialized with st names

begin
countt:=1;
for x in 010..019
loop
select st_name into stu_name from Student where st_id=x;
A_name(countt):=stu_name;
countt:=countt+1;
end loop;

countt:=1;
while countt<=A_name.count
loop
dbms_output.put_line(A_name(countt));
countt:=countt+1;
end loop;
end;
/


--6. if/elseif/else

set serveroutput on

declare
cnt number;
dpt_name Department.dept_name%type;
TYPE NAMEARRAY IS VARRAY(10) of Department.dept_name%type;
A_Name NAMEARRAY:=NAMEARRAY();

begin

cnt:=1;
for x in 907..916 loop
select dept_name into dpt_name from Department where dept_id=x;
A_Name.extend();
if dpt_name='CE' then 
dbms_output.put_line('Dept. '||dpt_name|| ' is in Civil Engineering Faculty');
elsif dpt_name='EEE' OR dpt_name='CSE' OR dpt_name='BME' OR dpt_name='ECE' then
dbms_output.put_line('Dept. '||dpt_name|| ' is in Electrical and Electronic Engineering Faculty');
else
dbms_output.put_line('Dept. '||dpt_name|| ' is in Mechanical Engineering Faculty');
end if;
end loop;
end;
/



--7. Procedure

--(i)
--creating procedure 
create or replace procedure proc1( var1 in varchar2, var2 out date)
as
show char(30);

begin
show:='Using procedure: ';
select exam_date into var2 from Routine where course_id in ( select course_id from Examination where course_title=var1);
dbms_output.put_line(show|| ' Exam date of '|| var1 || ' is '|| var2);
end;
/


--calling procedure 
set serveroutput on

declare
crs_title Examination.course_title%type:='Digital Electronics';
--crs_id Examination.course_id%type;
exam_date Routine.exam_date%type;

begin
proc1(crs_title, exam_date);
end;
/



--(ii)
--adding new departments using procedure

create or replace procedure proc2_add_dept(
d_id Department.dept_id%type,
d_name Department.dept_name%type,
d_faculty Department.faculty%type
)
is 
begin
insert into Department values(d_id, d_name, d_faculty);
end;
/

--calling 
set serveroutput on

declare
d_id Department.dept_id%type;
d_name Department.dept_name%type;
d_faculty Department.faculty%type;

begin

d_id:=940;
d_name:='MIE';
d_faculty:='EEE';
--'EEE'
dbms_output.put_line('Values added..');
proc2_add_dept(d_id, d_name, d_faculty);
end;
/

--(iii)
--deleting department using procedure
create or replace procedure proc3_delete_dept(d_id Department.dept_id%type)
is 

begin
delete from Department where dept_id=d_id;
end;
/


--calling
set serveroutput on
declare
d_id Department.dept_id%type;

begin
dbms_output.put_line('Dept. will be deleted');
d_id:=918;
proc3_delete_dept(d_id);
end;
/


--(iv)
--updating result using procedure
create or replace procedure proc4_update_result(
s_st_id Result.st_id%type,
s_gpa Result.gpa%type,
s_cgpa Result.cgpa%type
)
is

begin
update Result set gpa=s_gpa, cgpa=s_cgpa where st_id=s_st_id;
end;
/
show errors

--calling
set serveroutput on

declare
s_st_id Result.st_id%type;
s_gpa Result.gpa%type;
s_cgpa Result.cgpa%type;

begin
dbms_output.put_line('Result will be updated..');
s_st_id:= 013;
s_gpa:=4.67;
s_cgpa:=3.81;
proc4_update_result(s_st_id, s_gpa,s_cgpa);
end;
/


--8. Function
--(i)
create or replace function func1(var1 in varchar) return varchar 
as
value Department.dept_name%type;

begin
select dept_name into value from Department where dept_id=var1;
return value;
end;
/

--calling function 
set serveroutput on
declare 
value varchar(20);

begin
value:=func1(910);
dbms_output.put_line('Dept_name is '||value);
end;
/

--(ii)

create or replace function avg_cgpa return float 
as
value Result.cgpa%type;

begin
select avg(cgpa) into value from Result;
return value;
end;
/

--calling
set serveroutput on
declare value number(4,2);

begin
value:=avg_cgpa();
dbms_output.put_line('Average cgpa is '||value);
end;
/