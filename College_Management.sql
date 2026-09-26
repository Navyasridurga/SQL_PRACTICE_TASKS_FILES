use Ecosystem;
create database  college;
use college;
create table Students(
student_name varchar(100),
student_id varchar(100)
);
insert into Students  (student_name,student_id) values
("navya","226w1a0525"),("sri","2234543"),
("durga","12338854"),
("ganaga","37858347"),("surya","3043495"),("jyothi","4u3495"),("hema","4853485"),("nandu","4i39434856"),
("girish","873485"),("dattu","845438956");
select* from Students;
create table Teachers(
Teacher_Name text,
subject_teach text
);
insert into  Teachers (Teacher_Name,subject_teach) values("sridhar","database"),("satya","api"),
("ramayya","maths"),("raghu","sql"),("hama malini","science"),("chaitanya","agentic ai"),("janaki","maths"),
("siddu","flat"),("lakshmi","sft skills");
select * from Teachers;
alter table Teachers add column serial_No int first;
set sql_safe_updates=0;
update Teachers set serial_No=1 where subject_teach="database";
update Teachers set serial_No=2 where subject_teach="api";
update Teachers set serial_No=3 where subject_teach="maths";
update Teachers set serial_No=4 where subject_teach="sql";
update Teachers set serial_No=5 where subject_teach="science";
update Teachers set serial_No=6 where subject_teach="agentic ai";
update Teachers set serial_No=7 where subject_teach="maths";
update Teachers set serial_No=8 where subject_teach="flat";
update Teachers set seria_No=9 where subject_teach="sft skills";
delete from Teachers where serial_No =1;
delete from Teachers where serial_No=2;
update Teachers set subject_teach ="soft skills" where subject_teach="sft skills";
select * from Teachers;
create table Departments(
department_name text,
department_teacher text
);
insert into Departments (department_name,department_teacher) values("cse","vasundhara"),("ece","hema"),
("civil","prasad"),("mech","ram"),("eee","sahil"),("aiml","ammeer"),("ai","baba"),("agri","damodhar");
select * from Departments;
alter table Departments add  column no_of_studets int;
alter table Departments add column serialNo int first;
 alter table Departments drop column serialNo;
 alter table Departments  rename  column no_of_studets to no_of_students;
update Departments set serialNo=1 ,no_of_students=100 where department_name="cse";
update Departments set serialNo=2,no_of_students =1000  where department_name="ece";
update Departments set serialNo=3 ,no_of_students=200 where department_name="mech";
update Departments set serialNo=4 ,no_of_students=300 where department_name="eee";
update Departments set serialNo=5 ,no_of_students=166 where department_name="ai";
update Departments set serialNo=6, no_of_students=300 where department_name="agri";
select * from Departments;
create table Courses(
course_name varchar(100)
);
select * from Courses;
insert into Courses values("Cyber security"),("salesforce"),("data analytics"),("agentic ai"),("my sql"),
("serviece now");
select * from Courses;
alter table Courses add column no_of_students int;
alter table Courses add column serial_No int first;
alter table Courses   drop column  serial_No ;
select * from Courses;
update Courses set no_of_students=100,serial_No=1 where course_name="cyber security";
update Courses set no_of_students =200 ,serial_No=2 where course_name="salesforce";
update Courses set no_of_students=300, serial_No=3 where course_name="data analytics";
update Courses set no_of_students=400,serial_No=4 where course_name="agentic ai";
update Courses set no_of_students=500 , serial_No=5 where course_name="my sql";
update Courses set no_of_students=600,serial_No=6 where course_name="serviece now";
select * from Courses;

create table Enrollments(
course_Enrollments int,
student_Name text
);
insert into Enrollments values(123,"paradise");
select * from Enrollments;
alter table Enrollments  add column course_status varchar(10);
insert into Enrollments(course_Enrollments,student_Name) values(134,"ganga");
update Enrollments set course_status="completed" where course_Enrollments=123;
update Enrollments set course_status="not yet"where course_Enrollments=134; 
select * from Enrollments;
drop table Exams;
create table Exams(
Exam_name text,
exam_data date
);
insert into Exams(Exam_name,exam_data)values("dsa",'2024-12-4'),("aws",'2019-8-12');
select * from Exams;
create table Marks(
Student_Marks int,
subject_wise_Marks int
);
alter table Marks drop column subject_wise_Marks;
select * from Marks;
insert into Marks(Student_Marks) values(129);
select * from Marks;
