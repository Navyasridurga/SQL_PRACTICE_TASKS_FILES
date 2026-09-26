use Ecosystem;

create table Students(
student_id int unique auto_increment primary key,
email varchar(20) unique,
name text not null,
age int not null check (age>=18 and age<=30),
city varchar(50)  default "Hyderabad"
);
select * from Students;
insert into Students(email,name,age) values("kasa@gmail.com","navya",30);
create table Employees1(
emp_id int unique auto_increment,
emp_name text not null,
email  varchar(20) unique,
salary int not null check(salary>15000),
joining_date  date default (current_date)
);
select * from Employees1;
insert into Employees1(emp_name,email,salary) values("sri durga","navya@gmail.com",34000);
select * from Employees1;
create table ProductManagement(
product_id int  unique auto_increment,
product_name text not null,
barcode int not null check(barcode>0),
price int not null check(price>0),
stock int default 0
);
insert into ProductManagement(product_name,barcode,price) values("nani",34,23000);
select * from ProductManagement;
drop table reservation;
create table reservation(
train_id int not null unique auto_increment,
train_name text not null,
starting_location text not null,
distance int not null check(distance>50),
location  varchar(100) default "hyderabad"
);
insert into reservation(train_name,starting_location,distance) values("godavari","vijayawada",560);
select * from ProductManagement;




