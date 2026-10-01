use ecosystem;


CREATE TABLE Employees123(
EmpID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(30),
Salary DECIMAL(10,2),
Age INT,
City VARCHAR(30),
JoiningDate DATE
);


INSERT INTO Employees123 VALUES
(101, 'Alice', 'HR', 45000, 25, 'Hyderabad', '2022-01-10'),
(102, 'Bob', 'IT', 70000, 30, 'Chennai', '2021-06-15'),
(103, 'Charlie', 'Finance', 55000, 28, 'Bangalore', '2020-08-20'),
(104, 'David', 'IT', 80000, 35, 'Hyderabad', '2019-03-12'),
(105, 'Eva', 'HR', 48000, 27, 'Mumbai', '2023-02-18'),
(106, 'Frank', 'Sales', 60000, 31, 'Delhi', '2021-11-25'),
(107, 'Grace', 'Finance', 75000, 29, 'Chennai', '2018-09-10'),
(108, 'Henry', 'Sales', 52000, 26, 'Bangalore', '2022-07-05'),
(109, 'Ivy', 'IT', 90000, 32, 'Mumbai', '2017-05-30'),
(110, 'Jack', 'HR', 47000, 24, 'Delhi', '2023-01-12');

select * from Employees123;

select sum(Salary) from Employees123;
select avg(salary) from Employees123;
select max(salary) from Employees123;
select min(salary) from Employees123;
select   department, count(name)  from Employees123 group by department;
select department,sum(salary) from Employees123 group by department;
select department,avg(salary) from Employees123 group by department;
select  department,max(salary) from Employees123 group by department;
select department,min(salary) from Employees123 group by department;
select department,avg(salary) from Employees123 group by department having avg(salary)>60000;
CREATE TABLE StudentMarks (
    mark_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    subject VARCHAR(50),
    marks INT
);

INSERT INTO StudentMarks VALUES
(1, 'Ravi', 'Maths', 80),
(2, 'Sita', 'Maths', 90),
(3, 'Arun', 'Maths', 70),
(4, 'Priya', 'Science', 85),
(5, 'Ravi', 'Science', 75),
(6, 'Sita', 'Science', 95),
(7, 'Arun', 'English', 60),
(8, 'Priya', 'English', 80),
(9, 'Ravi', 'English', 70);


select * from StudentMarks;
select subject,avg(marks) from StudentMarks  group by subject;

select subject ,max(marks) from StudentMarks group by subject;


CREATE TABLE CustomerOrders1 (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    order_date DATE,
    order_amount DECIMAL(10,2)
);

INSERT INTO CustomerOrders1 VALUES
(1, 'Ravi', '2026-01-05', 5000),
(2, 'Sita', '2026-01-10', 7000),
(3, 'Ravi', '2026-01-15', 3000),
(4, 'Arun', '2026-02-05', 8000),
(5, 'Sita', '2026-02-10', 4000),
(6, 'Ravi', '2026-02-15', 6000),
(7, 'Priya', '2026-03-05', 9000),
(8, 'Ravi', '2026-03-15', 2000);

select * from CustomerOrders1;
select customer_name,count(order_id) from CustomerOrders1 
group by customer_name;
select  customer_name,count(order_id)  from CustomerOrders1 group by customer_name  order by count(order_id) desc limit 1 ;



CREATE TABLE ClassStudents (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50),
    class_name VARCHAR(20)
);

INSERT INTO ClassStudents VALUES
(1, 'Ravi', '10-A'),
(2, 'Sita', '10-A'),
(3, 'Arun', '10-B'),
(4, 'Priya', '10-B'),
(5, 'Kiran', '10-A'),
(6, 'Anu', '10-C');


CREATE TABLE ProductSales11 (
    sale_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    quantity INT,
    sales_amount DECIMAL(10,2),
    sale_date DATE
);

INSERT INTO ProductSales11 VALUES
(1, 'Laptop', 2, 100000, '2026-01-05'),
(2, 'Laptop', 1, 50000, '2026-01-15'),
(3, 'Mobile', 5, 75000, '2026-01-10'),
(4, 'Mobile', 3, 45000, '2026-02-12'),
(5, 'Headphones', 10, 20000, '2026-02-20'),
(6, 'Headphones', 15, 30000, '2026-03-05'),
(7, 'Keyboard', 20, 40000, '2026-03-15'),
(8, 'Laptop', 1, 50000, '2026-03-20');

select * from ProductSales11;
select  product_name,sum(sales_amount)  from ProductSales11 
group by product_name having sum(sales_amount)>100000 ;

select product_name ,sum(quantity) from ProductSales11 group by product_name having sum(quantity)> 15;

