create database  Ecosystem;
drop database Ecosystem;
use Ecosystem;
Drop Table Hospital;
create  table employee(
employeeId int,
employee_Name text,
employee_Place text,
empoye_WorkName text,
employee_joining_date DATE,
employee_employeesalary int
);
select * from employee;
insert into employee values (1001,"sambayya","tadeplligudem","gumasta",'2013-08-14',34000);
select * from employee;
create table student(
Student_RollNo int,
Student_Name text,
Stud_clas_name char,
Student_Place text
); 
select *from  student;
insert into student values(25,"navya",'8',"ramachandrapuram"); 
select*from student;
create table amazon(
product_Name text,
quantity int,
rating float,
order_Place text,
order_plamazonemployeplace_date DATETIME
);
select * from amazon;
insert into amazon values("clothes",1,3.9,"secendrabad",'2019-04-13 8:25:30');
select * from amazon;
create table Hospital(
Hospital_Name varchar(100),
Doctor_Name varchar(100),
Hospital_Address varchar(100),
Initial_Patient_Card_Money int,
Name_of_the_Patient varchar(100),
patient_Adress varchar(100),
patient_age int,
patient_problem varchar(100),
patient_tablets int,
patient_joining_date datetime
);
select * from Hospital;
insert Hospital values("manipal hospitals dwaraka pvt ltd","Dr. Ch Manoj Kumar" ,
"Andhra Pradesh",200,"subbayya","tadepalligudem",34,"ear",450,'2026-1-18 8:36:25');
select * from Hospital;




