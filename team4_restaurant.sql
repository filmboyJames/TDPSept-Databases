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