use  Ecosystem;
show databases;
create database Online_shopping;
use Online_shopping;
create table customers(
customer_id int,
customer_name varchar(100),
customer_address text
);
select * from customers;
insert into customers(customer_id,customer_name,customer_address) values(1,"sri","tanuku"),(2,"durga","huderabad"),
(3,"lakshmi","benguluru"),(4,"koteswarao","meenavilluru"),(5,"mavullamma","sivapuram"),(6,"kishore","pentapadu"),
(7,"nani","patna"),(8,"dattatreya","bihar"),(9,"gayathri","vadali"),(10,"chaitanya","lingampalli"),(11,"saany","chennai"),
(12,"balu","velpur"),(13,"harsha","kakinada"),(14,"devi","ramachandrapuram"),(15,"chamundeswari","ravulapalem");
alter table customers add column customer_rating float ;
alter table customers add column phone_number bigInt after customer_name;
alter table customers add column  order_date date after customer_id;
select* from  customers;
set sql_safe_updates=0;
update customers set order_date ='2023-06-19' where customer_id =3;
update customers set phone_number=9012349017,customer_rating=3.5 where customer_id=3;
update customers set order_date ='2018-01-01',phone_number=9010191901, customer_rating=5 where customer_id=1;
delete from customers where order_date='2018-01-01';
update customers set order_date='2019-03-01', phone_number=8901819109 ,customer_rating=4.5 where customer_id=2;
update customers set order_date='2014-09-14' ,phone_number=9018191023, customer_rating=3.4 where customer_id=4;
update customers set order_date='2019-03-14' ,phone_number=8913456789, customer_rating=4.6 where customer_id=5;
update customers set order_date='2016-9-15' ,phone_number=9304597610, customer_rating=3.9 where customer_id=7;
update customers set order_date='2026-9-14' ,phone_number=9823405055,customer_rating=5.6 where customer_id=6;
update customers set order_date='2017-9-17',phone_number=9858859939,customer_rating=5.6 where customer_id=8;
update customers set order_date='2016-8-15' ,phone_number=870454003,customer_rating=6 where customer_id=9;
update customers set order_date='2014-2-14' ,phone_number=678901234,customer_rating=4 where customer_id=10;
update customers set order_date='2012-1-01',phone_number=9101010101,customer_rating=9  where customer_id=11;
update customers set order_date='2019-8-17',phone_number=9019928334,customer_rating=6 where customer_id=12;
update customers set order_date='2016-9-12',phone_number=6784933300,customer_rating=7 where customer_id=13;
update customers set order_date='2018-9-12',phone_number=9087654209,customer_rating=4 where customer_id=14;
update customers set order_date ='2024-1-18',phone_number=9394030221,customer_rating=7 where customer_id=15;
select* from customers;
truncate table products;
create table products(
product_id int,
product_name text
);
select * from products;
insert into products(product_id,product_name) values(1001,"books"),(1002,"clothes"),(1003,"face cream"),
(1004,"laptop"),(1005,"mobile"),(1006,"dress"),(1007,"pens"),(1008,"jean pant"),(1009,"earningS"),(1010,"tv"),(1011,"charger"),
(1012,"chairs"),(1013,"bike"),(1014,"t shirt"),(1015,"gate books");
select * from products;
alter  table products add column serialNo int first;
alter table products add column quantity int;
update  products set serialNo=1 ,quantity=1 where product_id=1;
update  products set serialNo=2 ,quantity=1 where product_id=1003;
update  products set serialNo=3 ,quantity=1 where product_id=1004;
update  products set serialNo=4 ,quantity=1 where product_id=1005;
update  products set serialNo=5 ,quantity=1 where product_id=1006;
update  products set serialNo=5 ,quantity=1 where product_id=1007;
update  products set serialNo=6 ,quantity=1 where product_id=1008;
update  products set serialNo=7 ,quantity=1 where product_id=1009;
update  products set serialNo=9 ,quantity=1 where product_id=1010;
update  products set serialNo=10 ,quantity=1 where product_id=1011;
update  products set serialNo=11 ,quantity=1 where product_id=1012;
update  products set serialNo=12 ,quantity=1 where product_id=1013;
update  products set serialNo=13 ,quantity=1 where product_id=1014;
update  products set serialNo=14,quantity=1 where product_id=1015;
update  products set serialNo=1 ,quantity=1 where product_id=1001;
select * from products;
delete from products where product_name="face cream";
alter table products  rename column serialNo to Serial_No ;
alter table products rename column product_id to Product_Id;
alter table products rename column product_name to Product_Name;
select * from products;
create table categories(
categorie_name varchar(100)
);
select * from categories;
insert into categories(categorie_name) values("women western"),("men"),("accessories"),("foot wear"),("kids clothing"),
("kids toys"),("kids accessories"),("baby core");
select * from  categories;
alter table categories add column serial_No int first;
update categories set  serial_No=1 where categorie_name="women western";
update categories set serial_No=2 where categorie_name="men";
update categories set serial_No=3 where categorie_name="accessories";
update categories set serial_No=4 where categorie_name="foot wear";
update categories set serial_No=5 where categorie_name="kids clothing";
update categories set serial_No=6 where categorie_name="kids toys";
update categories set serial_No=7 where categorie_name="kids accessories";
update categories set serial_No=8 where categorie_name="baby core";
create table orders(
order_id int,
order_name text,
order_placed text
);
select * from orders;
insert into orders(order_id ,order_name ,order_placed )values
(1,"fancy stylish wear","ramachandrapuram"),(2,"lehanga","hyderabad"),(3,"tooth paste","chennai"),(4,"jeans","bihar"),
(5,"books","tanuku"),(6,"bedsheet","sivapuram"),(7,"file","meenavilluru"),(8,"phone","komaru");
select * from orders;
alter table orders add column person_Name text after order_id;
alter table orders add column order_date date after person_Name;
select * from orders;
update orders set person_Name="navya" ,order_date='2019-3-10' where order_Name="fancy stylish wear";
update orders set person_Name="kishore",order_date='2018-4-13' where order_Name="lehanga" ;
update orders set person_Name="nandu",order_date='2019-3-19' where order_Name="tooth paste order";
update orders set person_Name="nani",order_date='2019-3-10' where order_Name="jeans";
update orders set person_Name="sri" ,order_date='2012-1-1'where order_Name="books";
update orders set person_Name="durga" ,order_date='2014-12-12'where order_Name="bedsheet";
update orders set person_Name="vijay",order_date='2019-2-13' where order_Name="file" ;
update orders set person_Name="siddu" ,order_date='2019-2-5'where order_Name="phone";
select * from orders;
delete  from  orders where  person_Name is null;
create table addresses(
customer_place text,
product_place text
);
select * from addresses;
insert into addresses(customer_place,product_place) values
("navya","tanuku"),("sri","meenaviluru"),("durga","siva puram"),("sai baba","siridi"),
("durga", "vijayawada"),("shiva","srisailam");
select * from addresses;
alter table  addresses add column customer_Id int  first;
alter table addresses rename  column customer_place to Customer_Place;
update addresses set   customer_Id =1 where product_place="tanuku";
update addresses set customer_Id=2 where product_place="meenaviluru";
update addresses set customer_Id=3 where product_place="siva puram";
update addresses set customer_Id=4 where product_place="siridi";
update addresses set customer_Id=5 where product_place="vijayawada";
update addresses set customer_Id=6 where product_place="srisailam";
create table sellers(
seller_name varchar(100),
seller_place varchar(100)
);
select* from sellers;
insert into sellers(seller_name,seller_place) values("raajhans creation","patna"),("Gk fabric","vijayawada"),
("bapasitaram creation","assam");
alter table sellers add column serialNo int first;
alter table sellers add column followers int;
update sellers set serialNo=1 ,followers=100 where seller_name="raajhans creation";
update sellers set serialNo=2 ,followers= 200 where seller_name="Gk fabric";
update sellers set serialNo=3 ,followers = 130 where seller_place="assam";
select*from sellers;
