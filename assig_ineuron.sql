#Assigment 1

create table ats(
id int,
technology varchar(25)
);

insert into ats values(1, "DS"),
(2, "Tableau"),
(1, "Python"),
(2, "r"),
(1, "Tableau"),
(3, "DS"),
(1, "SQl"),
(2, "DS"),
(3, "5"),
(4, "HTML"),
(3, "PowerBI");

select * from ats;

select id from ats where technology in ("DS","Tableau","Python","SQl");

select id from ats where technology = "DS"
and id in (select id from ats where technology = "Tableau" 
and id in (select id from ats where technology = "SQl"
and id in (select id from ats where technology = "Python")));

#Assigment 2


create table product_info(
pro_id int, 
product varchar(25),
primary key(pro_id)
);


create table product_info_likes(
user_id int,
pro_id int,
liked_date date,
foreign key(pro_id) references product_info(pro_id)
);

insert into product_info values
(1001, "Blog"),
(1002, "youtube"),
(1003, "education");

select * from product_info;

insert into product_info_likes values
(1, 1001, "2023-08-19"),
(2, 1003, "2023-08-18");

select * from product_info pi
left join product_info_likes pil
on pil.pro_id = pi.pro_id;

SELECT pi.pro_id
FROM product_info pi
left JOIN product_info_likes pil ON pi.pro_id = pil.pro_id
WHERE pil.pro_id IS NULL;
