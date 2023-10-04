create database american_cities;
use ineuron;
create table city(
id int,
name varchar(17),
countrycode varchar(3),
district varchar(20),
population int
);

insert into city values (6,'Rotterdam','NLD','Zuid-Holland',593321),
(19,'Zaanstad','NLD','Noord-Holland',135621),
(214,'Porto Alegre','BRA','Rio Grande do Sul',1314032),
(397,'Lauro de Freitas','BRA','Bahia',109236),
(547,'Dobric','BGR','Varna',100399),
(552,'Bujumbura','BDI','Bujumbura',300000),
(554,'Santiago de Chile','CHL','Santiago',4703954),
(626,'al-Minya','EGY','al-Minya',201360),
(646,'Santa Ana','SLV','Santa Ana',139389),
(762,'Bahir','Dar','ETH Amhara',96140),
(796,'Baguio','PHL','CAR',252386),
(896,'Malungon','PHL','Southern Mindanao',93232),
('904','Banjul','GMB','Banjul',42326),
('924','Villa','GTM','Nueva',101295),
(990,'Waru','IDN','East Java',124300),
(1155,'Latur','IND','Maharashtra',197408),
(1222,'Tenali','IND','Andhra Pradesh',143726),
(1235,'Tirunelveli','IND','Tamil Nadu',135825),
(1256,'Alandur','IND','Tamil Nadu',125244),
(1279,'Neyveli','IND','Tamil Nadu',118080),
(1293,'Pallavaram','IND','Tamil Nadu',111866),
(1350,'Dehri','IND','Bihar',94526),
(1383,'Tabriz','IRN','East Azerbaidzan',1191043),
(1385,'Karaj','IRN','Teheran',940968),
(1508,'Bolzano','ITA','Trentino-Alto Adige',97232),
(1520,'Cesena','ITA','Emilia-Romagna',89852),
(1613,'Neyagawa','JPN','Osaka',257315),
(1630,'Ageo','JPN','Saitama','209442'),
(1661,'Sayama','JPN','Saitama',162472),
(1681,'Omuta','JPN','Fukuoka',142889),
(1739,'Tokuyama','JPN','Yamaguchi',107078),
(1793,'Novi Sad','YUG','Vojvodina',179626),
(1857,'Kelowna','CAN','British Colombia',89442),
(1895,'Harbin','CHN','Heilongjiang',4289800),
(1900,'Changchun','CHN','Jilin',2812000),
(1913,'Lanzhou','CHN','Gansu',1565800),
(1947,'Changzhou','CHN','Jiangsu',530000),
(2070,'Dezhou','CHN','Shandong',195485),
(2081,'Heze','CHN','Shandong',189293),
(2111,'Chenzhou','CHN','Hunan',169400),
(2153,'Xianning','CHN','Hubei',136811),
('2192','Lhasa','CHN','Tibet',120000),
(2193,'Lianyuan','CHN','Hunan',118858),
(2227,'Xingcheng','CHN','Liaoning',102384),
(2273,'Villavicencio','COL','Meta',273140),
(2384,'Tong-yong','KOR','Kyongsangnam',131717),
(2386,'Yongju','KOR','Kyongsangbuk',131097),
(2387,'Chinhae','KOR','Kyongsangnam',125997),
(2388,'Sangju','KOR','Kyongsangbuk',124116),
(2406,'Herakleion','GRC','Crete',116178),
(2440,'Monrovia','LBR','Montserrado',850000),
(2462,'Lilongwe','MWI','Lilongwe',435964),
(2505,'Taza','MAR','Taza-Al Hoceima-Taou',92700),
(2555,'Xalapa','MEX','Veracruz',390058),
(2602,'Ocosingo','MEX','Chiapas',171495),
(2609,'Nogales','MEX','Sonora',159103),
(2670,'San Pedro Cholula','MEX','Puebla',99734),
(2689,'Palikir','FSM','Pohnpei',8600),
(2706,'Tete','MOZ','Tete',101984),
(2716,'Sittwe (Akyab)','MMR','Rakhine',137600),
(2922,'Carolina','PRI','Carolina',186076),
(2967,'Grudziadz','POL','Kujawsko-Pomorskie',102434),
(2972,'Malabo','GNQ','Bioko',40000),
(3073,'Essen','DEU','Nordrhein-Westfalen',599515),
(3169,'Apia','WSM','Upolu',35900),
(3198,'Dakar','SEN','Cap-Vert',785071),
(3253,'Hama','SYR','Hama',343361),
(3288,'Luchou','TWN','Taipei',160516),
(3309,'Tanga','TZA','Tanga',137400),
(3353,'Sousse','TUN','Sousse',145900),
(3377,'Kahramanmaras','TUR','Kahramanmaras',245772),
(3430,'Odesa','UKR','Odesa',1011000),
(3581,'St Petersburg','RUS','Pietari',4694000),
(3770,'Hanoi','VNM','Hanoi',1410000),
(3815,'El Paso','USA','Texas',563662),
(3878,'Scottsdale','USA','Arizona',202705),
(3965,'Corona','USA','California',124966),
(3973,'Concord','USA','California',121780),
(3977,'Cedar Rapids','USA','Iowa',120758),
(3982,'Coral Springs','USA','Florida',117549),
(4054,'Fairfield','USA','California',92256),
(4058,'Boulder','USA','Colorado',91238),
(4061,'Fall River','USA','Massachusetts',90555);

select * from city;

#Q1. Query all columns for all American cities in the CITY table with populations larger than 100000.
#The CountryCode for America is USA.

select * from city where countrycode = "USA" and population > 100000;

#Q2. Query the NAME field for all American cities in the CITY table with populations larger than 120000.
#The CountryCode for America is USA.

select name from city where countrycode = "USA" and population > 120000;

#Q3. Query all columns (attributes) for every row in the CITY table.

select * from city;

#Q4. Query all columns for a city in CITY with the ID 1661.

select * from city where id = 1661;

#Q5. Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.

select * from city where countrycode = "JPN";

#Q6. Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

select name from city where countrycode = "JPN";

####Station Data set import from excel-csv to mysql
select * from stationdata;

#Q7. Query a list of CITY and STATE from the STATION table.

select City, State from stationdata;

#Q8. Query a list of CITY names from STATION for cities that have an even ID number. Print the results
#in any order, but exclude duplicates from the answer.

select City from stationdata where id % 2 = 0;
select distinct City from stationdata where id % 2 = 0;

#Q9. Find the difference between the total number of CITY entries in the table and the number of
#distinct CITY entries in the table.

 select count(City) from stationdata;
 select count(distinct City) from stationdata;
 select (count(City) - count(distinct City)) as "TotalCity-DistinctCity" from stationdata;
 
 #Q10. Query the two cities in STATION with the shortest and longest CITY names, as well as their
#respective lengths (i.e.: number of characters in the name). If there is more than one smallest or
#largest city, choose the one that comes first when ordered alphabetically.

((select City, length(City) as min_len_city from stationdata
order by length(city), city limit 1)
union
(select City, length(City) as max_len_city from stationdata
order by length(City) desc limit 1));

#Q11. Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result
#cannot contain duplicates.

select distinct City from stationdata where City like "a%" or City like "e%" or City like "i%"
or City like "o%" or City like "u%"
order by City;

#Q12. Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot
#contain duplicates.

select distinct City from stationdata where City like "%a" or City like "%e" or City like "%i"
or City like "%o" or City like "%u"
order by City;

#Q13. Query the list of CITY names from STATION that do not start with vowels. Your result cannot
#contain duplicates.

select distinct City from stationdata where not (City like "a%" or City like "e%" or City like "i%"
or City like "o%" or City like "u%")
order by city;

#Q14. Query the list of CITY names from STATION that do not end with vowels. Your result cannot
#contain duplicates.

select distinct City from stationdata where not (City like "%a" or City like "%e" or City like "%i"
or City like "%o" or City like "%u")
order by City;

#Q15. Query the list of CITY names from STATION that either do not start with vowels or do not end
#with vowels. Your result cannot contain duplicates.

select distinct City from stationdata where not ((City like "a%" or City like "e%" or City like "i%"
or City like "o%" or City like "u%") or (City like "%a" or City like "%e" or City like "%i"
or City like "%o" or City like "%u"))
order by City;

#Q16. Query the list of CITY names from STATION that do not start with vowels and do not end with
#vowels. Your result cannot contain duplicates.

select distinct City from stationdata where not ((City like "a%" or City like "e%" or City like "i%"
or City like "o%" or City like "u%") and (City like "%a" or City like "%e" or City like "%i"
or City like "%o" or City like "%u"))
order by City;


#Q17 ################################################

use ineuron;

create table Product(
product_id int,
product_name varchar(50),
unit_price int,
primary key(product_id)
);

create table Sales(
seller_id int,
product_id int,
buyer_id int,
sale_date date,
quantity int,
price int,
foreign key(product_id) references Product(product_id)
);

insert into Product values
(1, "S8", 1000),
(2, "G4", 800),
(3, "iPhone", 1400);

select * from Product;

insert into Sales values
(1, 1, 1, '2019-01-21', 2, 2000),
(1, 2, 2, '2019-02-17', 1, 800),
(2, 2, 3, '2019-06-02', 1, 800),
(3, 3, 4, '2019-05-13', 2, 2800);

select * from Sales;
# 2019-01-01 and 2019-03-31

select p.product_id, p.product_name from Product p
inner join Sales s
on p.product_id = s.product_id
where s.sale_date between '2019-01-01' and '2019-03-31'
and p.product_id not in (select product_id from Sales 
where sale_date not between '2019-01-01' and '2019-03-31');

#Q 18 #####################################################

create table views(
article_id int,
author_id int,
viewer_id int,
view_date date
);

insert into views values
(1, 3, 5, "2019-08-01"),
(1, 3, 6, "2019-08-02"),
(2, 7, 7, "2019-08-01"),
(2, 7, 6, "2019-08-02"),
(4, 7, 1, "2019-07-22"),
(3, 4, 4, "2019-07-21"),
(3, 4, 4, "2019-07-21");

select * from views;

select distinct author_id from views
where author_id = viewer_id
order by author_id;

# Q19 #################################################
 
 create table Delivery(
delivery_id int,
customer_id int,
order_date date,
customer_pref_delivery_date date
);

Alter table Delivery
Add primary key(delivery_id);

desc Delivery;

insert into Delivery values
(1, 1, '2019-08-01', '2019-08-02'),
(2, 5, '2019-08-02', '2019-08-02'),
(3, 1, '2019-08-11', '2019-08-11'),
(4, 3, '2019-08-24', '2019-08-26'),
(5, 4, '2019-08-21', '2019-08-22'),
(6, 2, '2019-08-11', '2019-08-13');

select * from Delivery;

select count(delivery_id) from Delivery;

select count(delivery_id) from Delivery
where order_date = customer_pref_delivery_date;

#reference select concat(round(((Number/TotalNumber) * 100 ),2), '%') as Result from DemoTable;

select concat(round((((select count(delivery_id) from Delivery
where order_date = customer_pref_delivery_date) / (count(delivery_id))) * 100),2),
'%') as immediate_percentage from Delivery;

# Q20 #############################################

create table Ads(
ad_id int,
user_id int,
actions enum('Clicked', 'Viewed', 'Ignored'),
primary key(ad_id, user_id)
);

desc Ads;

insert into Ads values
(1, 1, 1),
(2, 2, 1),
(3, 3, 2),
(5, 5, 3),
(1, 7, 3),
(2, 7, 2),
(3, 5, 1),
(1, 4, 2),
(2, 11, 2),
(1, 2, 1);

select * from Ads;

select count(ad_id) from Ads where actions = "Viewed"
group by ad_id;

/* select ad_id, round(((select count(ad_id) from Ads where actions = 'Clicked') / 
((select count(ad_id) from Ads where actions = 'Clicked') + (select count(ad_id) 
from Ads where actions = "Viewed")))*100,2) as per from ads
group by ad_id; */

select t.ad_id,
(case when base != 0 then round(t.num/t.base*100,2) else 0 end) as ctr 
from (select ad_id,
sum(case when actions = "Clicked" or actions = "Viewed" then 1 else 0 end) as base,
sum(case when actions = "Clicked" then 1 else 0 end) as num 
from ads
group by ad_id)t
order by ctr desc, t.ad_id;

# Q21 #######################################################

create table Employee(
employee_id int,
team_id int,
primary key(employee_id)
);

insert into Employee values
(1, 8),
(2, 8),
(3, 8),
(4, 7),
(5, 9),
(6, 9);

select * from Employee;

SELECT e.employee_id, COUNT(t.team_id) as team_count
FROM Employee e inner JOIN Employee t 
ON e.team_id = t.team_id
GROUP BY e.employee_id, t.team_id
order by e.employee_id;

# Q22 #################################

CREATE TABLE IF NOT EXISTS Country(
country_id INT PRIMARY KEY,
counrty_name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS Weather(
country_id INT,
weather_state int,
day date,
PRIMARY KEY(country_id, day)
);

INSERT INTO Country
VALUES
(2, 'USA'),
(3, 'Australia'),
(7, 'Peru'),
(5, 'China'),
(8, 'Morocco'),
(9, 'Spain');

INSERT INTO Weather
VALUES
(2, 12, '2019-10-27'),
(3, -2, '2019-11-10'),
(3, 0, '2019-11-11'),
(3, 3, '2019-11-12'),
(5, 16, '2019-11-07'),
(5, 18, '2019-11-09'),
(5, 21, '2019-10-23'),
(7, 25, '2019-10-28'),
(7, 22, '2019-12-01'),
(7, 20, '2019-12-02'),
(8, 25, '2019-11-05'),
(8, 27, '2019-11-15'),
(9, 7, '2019-10-23'),
(9, 3, '2019-12-23');


SELECT * FROM Country;
SELECT * FROM Weather;
 
 
 