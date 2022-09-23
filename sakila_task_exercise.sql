use sakila;
show tables;
select * from actor;
select * from film;

select * from actor; #Q1 
select last_name from actor where first_name = "John"; #Q2 Ans = Suvari
select first_name, last_name from actor where last_name = "Neeson"; #Q3 Ans = Christian Neeson and Jayne Neeson
select actor_id, first_name, last_name from actor where actor_id like "%0"; #Q4 Ans displayed
select title, description from film where film_id = 100; #Q5 'A Beautiful Drama of a Dentist And a Composer who must Battle a Sumo Wrestler in The First Manned Space Station'
select title, rating from film where rating = "R"; #Q6 Ans displayed
#CHECK NUMBERS select count(title) from (select title, rating from film where rating = "R") as Rratedfilms; #195
select title, rating from film where rating != "R"; #Q7 Ans displayed
#CHECK NUMBERS select count(title) from (select title, rating from film where rating != "R") as NonRratedfilms; #805
#CHECK NUMBERS select count(title) from film; #1000 films
select title, length from film order by length limit 10; #Q8 Ans displayed
select title, length from film where length = (select max(length) from film); #Q9 Chicago North etc
select title, special_features from film where special_features like "%Deleted Scenes%"; #Q10 Ans displayed but assumes no spelling mistakes!
select last_name from actor having desc



