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
select country.region, country.name, countrylanguage.language from countrylanguage join country on countrylanguage.countrycode=country.code where country.region="Southeast Asia"; #Q5 Ans displayed
select * from city where `Name` like "F%" limit 25; #Q6 Ans displayed
select count(code) from (
select country.code, city.name from city join country on country.code=city.countrycode where country.name="China") as ChinaCities; #Q7 Ans = 363
select name, population from country where population >0 order by population; #Q8 Ans = Pitcairn
select count(name) from country; #Q9 Ans = 239
select name, surfacearea from country order by surfacearea desc limit 10; #Q10 Ans displayed
