use home;
create table products1(
product_id int  unique auto_increment primary key,
product_name varchar(100),
categoy varchar(100)
) auto_increment=101;

alter table products1 rename column categoy to category;
insert into products1 (product_name,category) values (
'wireless mouse','accessories'),
('Gaming keyboard','accessories'),
('USB Cable','electronics'),
('laptop stand','accessories'),
('smart watch','electronics'),
('bluetooth speaker','electronics');
select * from products1;


select *,upper(product_name) from products1;
select *, lower(product_name) from products1;
select *,length(product_name) from products1;
select product_name,char_length(product_name) from products1;
select * ,product_name from products where length(product_name)<10;
select product_name  from products1 where length(product_name)<10;
select upper(product_name),lower(category) from products1;

select upper(product_name) from products1 where char_length(product_name)>10;
select *,lower(product_name),char_length(product_name)from products1 where char_length(product_name);
select product_name from products1 where product_name like's%';
select product_name from products1 where length(product_name) between 5 and 10;
select upper(product_name),lower(category) from products1  where category='electronics';
select product_name from products1 where product_name like '% %';
select product_name from products1 where product_name like	'B%';
select product_name from products1 where length(product_name)<char_length(product_name);
desc products1;


select  concat(upper(product_name) ,lower(category)) from products1;
select left(product_name,3)from products1;
select right(product_name,4) from products1;
select  substring(product_name,1,5) from products1;
select trim(product_name) from products1;
select concat('PRODUCT:',upper(product_name)) from products1;
SELECT replace(product_name,' ','-') from products1; 
select upper(product_name);
select substring_index('navya@gmail.com','@',1); 
select substring_index('varalakshmi@gmail.com','i',2); 

select reverse(product_name) from products1;