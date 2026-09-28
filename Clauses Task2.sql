
use Ecosystem;
CREATE TABLE Employees12 (
EmpID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(30),
Salary DECIMAL(10,2),
Age INT,
City VARCHAR(30),
JoiningDate DATE
);


INSERT INTO Employees12 VALUES
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
select * from Employees12;
select * from Employees12 where Salary>60000;
select *from Employees12 where Department='It';
select * from Employees12 where age<30;
select * from Employees12 where city='Hyderabad' order by Salary asc;
select * from Employees12 where salary>50000 and salary<80000 order by age;
select * from Employees12 where department='HR' order by Name;
select* from Employees12 where joiningDate>'2021-01-01' order by joiningdate desc;
select * from Employees12 where city='Chennai' || city='Bangalore' order by city and salary desc;
select * from Employees12  where Age>25 order by department asc  , salary desc; 