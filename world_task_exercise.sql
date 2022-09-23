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
select name, population from country where population is not null and population >0 order by population limit 1; #Q8 Ans = Pitcairn
select count(name) from country; #Q9 Ans = 239
select name, surfacearea from country order by surfacearea desc limit 10; #Q10 Ans displayed
select country.code, city.name, city.population from city join country on country.code=city.countrycode where country.name="Japan" order by population desc limit 5; #Q11 Ans Tokyo, Yokohama, Osaka, Nagoya, Sapporo
select name, code, headofstate from country where headofstate = "elisabeth II" order by name; #Q12 Ans displayed
select name, population, surfacearea, population/surfacearea as ratio from country where population >0 order by ratio limit 10; #Q13 Ans displayed
select distinct language from countrylanguage;
#select count(language) from (select distinct language from countrylanguage) as UniqueLanguages; #Q14 Ans displayed (count is 457)
select name, GNP from country order by GNP desc limit 10; #Q15 Ans displayed
select name, count(distinct name) from (select countrycode, language, name from countrylanguage join country on countrylanguage.countrycode=country.code) as countrylanguages ;
select name, countrycode, count(language) from countrylanguage join country on countrylanguage.countrycode=country.code group by countrycode order by count(language) desc limit 10; #Q16 displayed, China top at 12
select * from countrylanguage join country on countrylanguage.countrycode=country.code where language="German" AND percentage>50; #Q17 Ans displayed, 4 countries
select name, min(lifeexpectancy) from country where lifeexpectancy is not null and lifeexpectancy>0; #Q18 Ans = Aruba
select distinct GovernmentForm, count(GovernmentForm) from country group by GovernmentForm order by count(GovernmentForm) desc limit 3; #Q19 Ans displayed
select count(IndepYear) from country where Indepyear is not null; #Q20 Ans = 192
