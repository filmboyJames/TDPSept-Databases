create database Team4_Restaurant;

use Team4_Restaurant;

create table customers(
id int unique not null auto_increment,
firstname varchar(50) not null,
lastname varchar(50) not null,
phone varchar(11) default "None given" not null,
address varchar(250) default "Collection only",
postcode varchar(20) default "Collection only",
email varchar(100) default "None given",
primary key (id));

show tables;

describe menu;

create table menu(
item_id int unique not null auto_increment,
item varchar(80) not null,
price decimal(5,2),
in_stock boolean,
image varchar(200) not null,
calories int not null,
allergens varchar(30),
ingredients varchar(30) not null,
primary key(item_id));

show tables;

alter table menu add special varchar(50) default "Standard item";
alter table menu drop column special;
alter table menu_table rename to menu;


#DML Commands 
#Create = Insert into
#Read = Select
#Update = Update
#Delete = Delete

describe customers;

select * from customers; #Wildcard for columns from table customers
select id, firstname from customers; #Specific columns from table customers

insert into customers(firstname, lastname, phone, address, postcode, email) values("Lard", "Bucket", "07895645821", "74 Hubble Lane", "EH5 7FD", "gap@jam.com"),
("Lard", "Bucket", "07895645821", "74 Hubble Lane", "EH5 7FD", "gap@jam.com"),
("Lard", "Bucket", "07895645821", "74 Hubble Lane", "EH5 7FD", "gap@jam.com"),
("Lard", "Bucket", "07895645821", "74 Hubble Lane", "EH5 7FD", "gap@jam.com"),
("Lard", "Bucket", "07895645821", "74 Hubble Lane", "EH5 7FD", "gap@jam.com");

delete from customers where id=9;

insert into customers(firstname, lastname, phone, address, postcode, email) values("Timothy", "Parpson", "07546321556", "The Gleaming", "EH7 9PO", "parpson@tim.com");

update customers set firstname="Barb" where id=5;
update customers set firstname="Herb" where id=6;
update customers set firstname="Durb" where id=7;
update customers set firstname="Crab" where id=8;

alter table customers modify lastname varchar(50) after id;


select * from menu; 
select item_id, item, price from menu; 

insert into menu(item,price,in_stock,image,calories,allergens,ingredients) values("Tofu in black bean sauce", 13.99, true, "link1", 890, "Soya", "Tofu, black beans"),
("Tofu in black bean sauce", 13.99, true, "link1", 890, "Soya", "Tofu, black beans"),
("Tofu in black bean sauce", 13.99, true, "link1", 890, "Soya", "Tofu, black beans"),
("Tofu in black bean sauce", 13.99, true, "link1", 890, "Soya", "Tofu, black beans"),
("Tofu in black bean sauce", 13.99, true, "link1", 890, "Soya", "Tofu, black beans");

alter table menu 
modify ingredients varchar(100) after calories;

update menu set item ="Rainbow salad", price = 9.50, in_stock = true, image = "saladlink", calories = 555, allergens = "Celery", ingredients = "Lettuce, pepper, carrot, tomato, avocado" where item_id=2;
update menu set item ="A potato", price = 1.50, in_stock = 0, image = "potatolink", calories = 10555, allergens = "Potato", ingredients = "Potato" where item_id=3;

delete from menu where item_id=6;

insert into menu(item,price,in_stock,image,calories,allergens,ingredients) values("Ham", 240.99, false, "hamlink", 2, "Pig", "Pork, water, colourings, flavourings, dirt");

create table orders(
order_id int unique not null auto_increment,
`date` timestamp,
cust_id int not null,
price decimal(6,2) not null,
primary key(order_id),
foreign key(cust_id) references customers(id));

alter table orders add complete boolean;
alter table orders add discounts decimal (5,2) default 0.0;

select * from orders;

create table order_items(
oi_id int unique not null auto_increment,
ord_id int not null,
item_id int not null,
quantity int,
primary key (oi_id),
foreign key (ord_id) references orders(order_id),
foreign key (item_id) references menu(item_id));

insert into orders(`date`,cust_id,price,discounts,complete) 
values ("1985-03-27 17:00:00.0000",5,35.87,0,false),
("1985-03-27 17:00:00.0000",5,35.87,0,false),
("1985-03-27 17:00:00.0000",5,35.87,0,false),
("1985-03-27 17:00:00.0000",5,35.87,0,false),
("1985-03-27 17:00:00.0000",5,35.87,0,false);

select * from orders;

delete from orders where order_id=6;

insert into order_items(ord_id,item_id,quantity) 
values (4,1,2),
(4,2,2),
(4,3,2),
(4,4,2),
(4,5,2);

select * from order_items;

delete from order_items where oi_id=5;

update order_items set ord_id=1 where oi_id=6;

#READ from tables to view the records
# SELECT * FROM table_name
# SELECT col1, col2, col4 FROM table_name;
#
#WHERE clause
# SELECT * FROM table_name WHERE col_name=value;  this is filtering what you see

#OPERATORS
# = is equal to
# > greater than
# < less than
# != not equal to
# >= greater than or equal to
# <= less than or equal to