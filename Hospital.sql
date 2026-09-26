show databases;
use hospital;
desc hospital;
create table patients(
patient_id int,
patient_name text
);
select * from patients;
alter table patients add column patient_place text;
alter table patients add column patient_age int after patient_name;
alter table patients add column serialNo int first;
select *from patients;
insert  into patients  values(1,1001,"kanakalingam",45,"ramachandrapuram");
insert into patients values(2,1003,"siva lingam",45,"tanuku");
insert into patients values(2,1004,"parvathi",56,"siva puram");
select * from patients;
set sql_safe_updates=0;
update patients set serialNo=3 where patient_name="parvathi";
select * from patients;
create table doctors(
doctor_name text,
doctor_specialist text
);
select * from doctors;
alter table doctors add column serial_no int first;
alter table doctors add column hospital_name text after doctor_name;
alter table doctors add column  hospital_address text;
select * from doctors;
insert into doctors values(1,"vijay","kavitha clinic","cardiologist",null,"rajamundry",null);
insert into doctors values(2,"sanjay",null,"gynacologist",null,null,null);
select * from doctors;
update doctor set hospital_name="vasavi hospital" where serial_no=2;
select * from doctors;
delete from doctors where hospital_name="gynacologist";
select * from doctors;
update  doctors set hospital_name="surya prabham hospital" where hospital_name is null; 
select * from doctors;
update doctors  set hospital_address="tadepalli gudem "where hospital_address is null;
select * from doctors;
alter table doctors add column doctor_timings datetime;
alter table doctors add column study text  after doctor_specialist;
delete  from  doctors  where  serialno is null ; 
select * from doctors;
create table  departments(
depratment_no int,
department_name text
);
select * from departments;
insert  into departments values(1221,"surgery");
insert into departments values(1909,"operation");
select* from departments;
create table medicines(
medicine_name text,
patient_medicine text
);
select * from medicines;
alter table  medicines add column medicine_no int first;
insert  into medicines values(123,"dolo","navya");
insert into medicines values(156,"omnigel","koteswarao");
select* from medicines;
create table rooms(
room_no int,
room_type varchar(10)
);
select * from rooms;
alter table rooms add column room_cost int;
alter table rooms add column patient_name varchar(100) first;
select * from tables;
insert into rooms  values("mavullamma",12,"Ac",2600);
insert into rooms  values("varalakshmi",13,"non ac",4500);
select* from rooms;
create table bills(
patient_bill int
);
select * from bills;
alter table bills add column room_bill int;
alter table bills add column patient_name varchar(100) first;
select * from bills;
insert into bills values("navya",3600,360);
select * from bills;


