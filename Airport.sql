use ecosystem;
show databases;
show tables;
create database airport;
use airport;
drop database airport;
use airport;
drop table Airport;
desc aircraft;
show tables;
create table  Airport(
airport_id   INT primary key,
airport_name VARCHAR(100),
city VARCHAR(50),
country VARCHAR(50)
);
insert into Airport values
(111,"rajiv gandhi","hyderabad","india"),
(112,"dubai airport","dubai","india"),
(113,"rajamundry airport","rajamundry","india"),
(114,"pakistan airport","pakistan","pakistan"),
(115,"hyderabad","lingamplaii","india")
;
select * from Airport;
create table Aircraft(
aircraft_id  INT primary key,
model VARCHAR(50),
total_seats INT
);
insert   into Aircraft values
(101,"Airbus A320",180),
(102,"Boeing 737",189),
(103,"Airbus321",220),
(104,"Boeing 787",296),
(105,"Airbus 350",325);
select * from Aircraft;
drop table Flight;
DESC Aircraft;
DROP TABLE IF EXISTS Flight;
create table Flight(
flight_id  INT primary key,
flight_number VARCHAR(20),
source_airport_id  INT,
aircraft_id int,
destination_airport_id INT,
departure_time DATETIME,
arrival_time DATETIME,
foreign key (aircraft_id)   
references Aircraft(aircraft_id) 
);
insert into  Flight values
(1,"AI101",10,101,20,'2026-10-10 8:00:00','2026-10-10 10:00:00'),
(2,"6E202",20,102,30,'2026-10-10 11:00:00','2026-10-10 13:00:00'),
(3,"UK303",30,103,10,'2026-10-11 9:00:00','2026-10-10 9:00:00'),
(4,"SG404",10,104,40,'2026-10-11 15:00:00','2026-10-12 21:00:00'),
(5,"AI505",40,105,20,'2026-10-12 18:00:00','2026-10-12 21:00:00');
select * from flight;
select * from flight where  
departure_time='2026-10-10 08:00:00';
select * from booking;
 select * from flight;
drop table passenger;
create table passenger(
passenger_id  INT primary key,
first_name VARCHAR(50),
last_name VARCHAR(50),
gender CHAR(1),
date_of_birth DATE,
passport_number varchar(20)
);
insert into passenger values
(1,"ravi","kumar",'M','1998-05-13',"P1234567","ravi@gmail.com"),
(2,"Priya","Sharma",'F','2000-08-21',"P2345678","priya@gmail.com"),
(3,"kiran","reddy",'M','1997-11-03',"P3456789","kiran@gmail.com"),
(4,"Anjali","Rao",'F','1999-02-15',"P434556","anjali@gmail.com"),
(5,"Arjun","Singh",'M', '2001-06-30',"P567890","arjun@gmail.com");
select* from passenger;
select  last_name from passenger  order by last_name;
desc passenger;
select * from passenger where date_of_birth>1995;
alter table  passenger add column email varchar(50);
select * from passenger;
desc passenger;
desc flight;
create table booking(
booking_id  INT primary key,
passenger_id int,
flight_id int,
foreign key(passenger_id)   
 references passenger(passenger_id),
foreign key (flight_id)  
references flight(flight_id),
booking_date DATE,
seat_number VARCHAR(5),
booking_status VARCHAR(20)
);
select* from booking;
insert into booking values
(101,1,1,'2026-10-05','12A',"Confirm"),
(102,2,2,'2026-10-05','15B',"Confirm"),
(103,3,3,'2026-10-06',"08c","Confirm"),
(104,4,4,'2026-10-07',"10b","pending"),
(105,5,5,'2026-10-02',"20A","pending");
select * from booking;
delete from booking  where  booking_status !='Confirm';
update booking set  booking_status='Cancelled' where booking_id=103;
insert into booking values
(103,3,3,'2026-10-06',"08c","Confirm"),
(104,4,4,'2026-10-07',"10b","pending"),
(105,5,5,'2026-10-02',"20A","pending");
select  count(booking_id),flight_id from booking group by flight_id;
select flight_id ,count(booking_id) from booking group by flight_id
having count(booking_id)>50;
select * from flight;
select* from booking;
alter table booking modify seat_number varchar(10) ;
create table payment(
payment_id  INT primary key,
booking_id int,
foreign key (booking_id) 
references booking(booking_id),
payment_date DATE,
amount DECIMAL(10,2),
payment_method VARCHAR(30)
);
select * from payment;
select * from booking;
insert into payment values
(501,101,'2026-10-05',5500.00,"UPI"),
(502,102,'2026-10-05',7200.00,"Credit card"),
(503,103,'2026-10-06',4800.00,"Debit card"),
(504,104,'2026-10-07',8000.00,"net banking");
 set sql_safe_updates=0;
update payment set amount=amount*1.10;
select* from payment;
select passenger.first_name=flight.flight_number
from passenger inner join  booking on passenger.passenger_id
=booking.passenger_id 
inner  join flight on booking.flight_id=flight.flight_id;
select * from flight;
select * from booking;
desc passenger;
desc booking;
desc flight;  
create table crew(
crew_id  INT primary key,
crew_name VARCHAR(100),
role VARCHAR(50)
);
alter table crew rename FLIGHT_CRE_MEMBER;
select * from Flight_cre_member;
create table Flight_crew(
flight_id int,
crew_id int ,
foreign key (flight_id)   references  Flight(flight_id),
foreign key (crew_id) references crew (crew_id)
);
drop table payment;
select * from Flight_crew;
INSERT INTO crew VALUES
(201, 'Ravi Kumar', 'Pilot'),
(202, 'Priya Sharma', 'Co-Pilot'),
(203, 'Arjun Reddy', 'Cabin Crew'),
(204, 'Sneha Rao', 'Pilot'),
(205, 'Kiran Kumar', 'Co-Pilot'),
(206, 'Anjali Devi', 'Cabin Crew'),
(207, 'Rahul Singh', 'Pilot'),
(208, 'Meena Das', 'Cabin Crew');
select * from crew;
INSERT INTO Flight_crew VALUES
(1, 201),
(1, 202),
(1, 203),
(2, 204),
(2, 205),
(2, 206),
(3, 207),
(3, 208),
(4, 201),
(4, 203),
(5, 204),
(5, 206);
select * from Flight_crew;
select   crew.crew_id,flight.flight_number,crew.crew_id from flight_crew join  crew on crew.crew_id=flight_crew.crew_id
join  flight on flight_crew.flight_id=flight.flight_id;
select * from passenger;
select * from booking;
select * from flight;
select * from payment;
select * from flight left join booking on flight.flight_id =booking.flight_id
left join  passenger on booking.passenger_id=passenger.passenger_id;
select * from payment join  booking   on payment.booking_id =booking.booking_id   join flight on booking.flight_id=flight.flight_id; 
select * from booking; 
select *from crew;

















