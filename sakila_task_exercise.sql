use sakila;
show tables;
select * from film_actor;

select * from actor; #Q1 
select last_name from actor where first_name = "John"; #Q2 Ans = Suvari
select first_name, last_name from actor where last_name = "Neeson"; #Q3 Ans = Christian Neeson and Jayne Neeson
select actor_id, first_name, last_name from actor where actor_id like "%0"; #Q4 Ans displayed

