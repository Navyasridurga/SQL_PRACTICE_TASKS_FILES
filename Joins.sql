use ecosystem;
create database employees;
use employees;
create table employees(
 emp_id int,
emp_name varchar(100),
dept_id varchar(200),
salary int 
);
create table departments(
 dept_id int ,
dept_name varchar(100)
);
insert into employees values
(1,"ravi",10,30000),
(2,"priya",20,40000),
(3,"arun",10,35000),
(4,"sneha",30,45000);
select* from employees;
insert into departments values
(10,"IT"),
(20,"HR"),
(30,"Sales"),
(40,"Finance");
select * from departments;
show tables;
select employees.emp_name,departments.dept_name from  employees inner join departments on employees.dept_id=departments.dept_id;
select employees.emp_id,employees.emp_name,departments.dept_name from employees inner join departments on employees.dept_id=departments.dept_id;
select employees.emp_name from employees inner join departments on employees.dept_id = departments.dept_id where departments.dept_name="IT";
select employees.emp_name from employees  inner join  departments on employees.dept_id=departments.dept_id where departments.dept_name="HR";
select employees.emp_name ,employees.salary,departments.dept_name from employees inner join 
departments on employees.dept_id=departments.dept_id;
select employees.emp_name,departments.dept_name from employees inner join departments
on employees.dept_id=departments.dept_id;
select *  from employees left join  departments on
employees.dept_id =departments.dept_id;
select * from departments left join employees on
departments.dept_id=employees.dept_id; 
select departments.dept_name from departments left join employees on
departments.dept_id=employees.dept_id where  employees.dept_id is null; 
select * from employees right join departments on
employees.dept_id =departments.dept_id ;
select * from employees  left join departments on
employees.dept_id =departments.dept_id;
select departments.dept_name,count(employees.emp_id)  from employees left join 
departments on employees.dept_id=departments.dept_id group by departments.dept_name; 
 
 select  departments.dept_name, count(employees.emp_id) from employees left join
 departments on employees.dept_id=departments.dept_id group by departments.dept_name having count(employees.emp_id)>1 ;
 
 select departments.dept_name,employees.salary from departments right  join employees
 on departments.dept_id=employees.dept_id;
 
 create table  Students(
 student_name varchar(100));
 create table courses(
 course_name varchar(100)
 );
 drop table courses;
 drop table students;

 select employees.salary,departments.dept_name from employees left join departments on employees.dept_id =departments.dept_id where employees.salary>35000;
 select departments.dept_name ,employees.emp_name from departments left join employees on departments.dept_id=employees.dept_id where departments.dept_name='IT' or departments.dept_name='HR';
 
 select avg(employees.salary),departments.dept_name from employees 
 left join departments on employees.dept_id=departments.dept_id 
 group by departments.dept_name;
 
 select max(employees.salary),departments.dept_name from employees
 left join departments on employees.dept_id =departments.dept_id
 group by departments.dept_name;
 
 select sum(employees.salary),departments.dept_name from employees
 left join departments on employees.dept_id=departments.dept_id group by departments.dept_name;
 
 
 select employees.emp_name from employees left join departments
 on employees.dept_id=departments.dept_id where departments.dept_name like"S%";
 
 select employees.emp_name,departments.dept_name,employees.salary from employees left join 
 departments on employees.dept_id=departments.dept_id  order by employees.salary  desc;