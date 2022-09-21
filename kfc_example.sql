create database kfc;

use kfc;

create table customers(
c_id int unique not null auto_increment,
`name` varchar(100) default "Unknown",
phone_number varchar(11) not null,
over_18 boolean,
points DECIMAL(6,2),
primary key(c_id));

show tables;

describe customers;

#drop table customers;

create table customers2(
c_id int unique not null auto_increment,
cust_id int not null,
o_date date,
primary key(c_id),
foreign key (cust_id) references customers(c_id));

alter table customers add age int not null ;

alter table customers drop column over_18;

alter table customers modify `name` varchar(50) default "N/A";

