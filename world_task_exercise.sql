#Answers to World Exercise
use world;
show tables;
select * from city;
select * from country;
select * from countrylanguage;

select count(`name`) from city where CountryCode="USA"; #Q1 Ans = 274
select `name`, population, lifeExpectancy from country where name = "Argentina"; #Q2 Ans Pop = 37032000 LifeExp = 75.1
select `name`, population, lifeExpectancy from country order by lifeExpectancy DESC limit 1; #Q3 Ans Andorra
select country.name, city.name from city join country on country.capital=city.id where country.name="Spain"; #Q4 Ans Madrid
