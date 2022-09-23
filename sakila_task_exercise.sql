use sakila;
show tables;
select * from actor;
select * from film;
select * from film_actor;

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
select last_name from actor group by last_name having count(last_name) =1 order by last_name desc; # Q11 Ans displayed
select last_name, count(last_name) from actor group by last_name having count(last_name) > 1 order by count(last_name) desc; # Q12 Ans displayed
select first_name, last_name, actor.actor_id, film_id, count(film_id) from actor join film_actor on actor.actor_id = film_actor.actor_id group by actor.actor_id order by count(film_id) desc; #Q13 Ans = Gina Degeneres at 42

select * from actor;
select * from film;
select * from film_category;
select * from category;
select * from rental;
select * from inventory;

select * from film join (select * from rental join inventory on rental.inventory_id = inventory.inventory_id) as rentalinventory on film.film_id=rentalinventory.film_id; #Fails for duplicate column name...

select * from rental join inventory on rental.inventory_id = inventory.inventory_id;

select f.title, r.rental_date, f.rental_duration, DATE_ADD(r.rental_date, INTERVAL f.rental_duration DAY) as due_date from (rental r join inventory i ON r.inventory_id = i.inventory_id) join film f on f.film_id = i.film_id where f.title = "Academy Dinosaur" AND r.return_date is null;

select avg(length) from film; #Q15 Ans = 115.2720
#Q16 join film and film_category on film_id, categories are in category (16 of them)
