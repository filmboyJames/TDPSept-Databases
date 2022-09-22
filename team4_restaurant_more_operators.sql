use team4_restaurant;

show tables;

select * from customers;
select * from customers where firstname LIKE "%rb";

update orders set cust_id=order_id -1 WHERE order_id>2 ;

select * from orders;
select * from customers where firstname LIKE "%rb";

select * from order_items;

select * from orders JOIN customers ON orders.cust_id=customers.id;