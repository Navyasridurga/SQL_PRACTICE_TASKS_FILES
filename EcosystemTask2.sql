use Ecosystem;
create database OTT_Platform;
use OTT_Platform;
create table user(
user_sign text,
user_phoneNumber BigInt,
user_subscribe boolean

);
select * from user;

alter table user  add column user_location varchar(100);
alter table user add column user_platform varchar(100);
alter table user add column  watch_time datetime after user_phoneNumber;
alter table user add column serial_no int  first;
show tables;

select * from user;


insert into user values(1,"google",9652789261,'2019-04-13 8:25:30',true,"tanuku","aha");
select * from user;

create table Movies(
Aha_picks_Telugu text,
Aha_picks_Tamil text,
BlockBluster_hits text,
watch_for_free text
);
select * from Movies;
insert into movies values(1,
"k-ramp",4.5,"gymkhana","DJ tillu","adhurs");
insert into movies values(2,
"psych_siddhartha",3.9,"bottle_radha","sardar",
"seetamma_vakitlo_sirimalle_chettu");
select * from movies;
alter table Movies add column rating float after Aha_picks_Telugu ;

alter table Movies  add column serail_no int  first;
drop table Movies;
alter table Movies rename column serail_no to serialNo;
desc Movies;




create table shows(
new_on_aha_Telugu varchar(100),
new_on_aha_Tamil varchar(100),
Reality_shows text(100),
vida_Electrifying_Moments text(100),
South_India_Shopping_Mall_Stylish_Moments text(100)
);
select * from shows;

insert into shows values(1,"Akali rajyam",4.5,
"Dhoolpet", "telugu Idol","Moment 1","machu lakshmi show","aha"
);
insert into shows values(2,"pochamma",4.7,
"vera_maari_office","comedy stocks","moment 2","top telugu influencer","amazon_prime");
alter table  shows add column serial_No int first;
alter table shows add column rating float after new_on_aha_Telugu;
alter table shows add column platform text;

select * from shows;


create table watch_for_free(
popular_series text,
no1_yaari_with_rana_s1 text,
heartstrings text,
confrt_cinema varchar(100)
);

select * from watch_for_free;
insert into watch_for_free values(1,"home town",5,"mahesh","no_1_yaari_jaathirathnalu",
"kesava chandra ramavath","sanjeev");
insert into  watch_for_free values(2,"new sense",3.3,"sanjay puttaswami",
"no 1 yaari rajendra prasad","seetha kalyana vibhogame",
"mega cheppina prema katha");

alter table watch_for_free add column serial_No int  first;
alter table watch_for_free add column  actors_Name text after popular_series ;
alter table watch_for_free add column rating float after popular_series;

select * from watch_for_free;




create table aha_offers(
aha_gold int
);
insert into  aha_offers values (3000);
select * from aha_offers;
drop table choose_a_plan;

create table choose_a_plan(
aha_gold int,
annual int,
quartely_mobile int,
annual_premium int
);

insert into choose_a_plan values(999,499,99,699);
alter table choose_a_plan add column serialNo int  first;
alter table choose_a_plan add column userplan int  after serialNo;
alter table choose_a_plan add column Total_price int;
select * from choose_a_plan;

truncate table  shows;
select * from shows;
insert into choose_a_plan values(1,999,4999,999,6999,499,1000);
show tables;
