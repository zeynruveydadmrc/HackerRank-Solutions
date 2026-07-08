/*
Problem: Asian Population
Link: https://www.hackerrank.com/challenges/asian-population/problem
Difficulty: Easy
Category: Basic Join
Description: Query the sum of the populations of all cities in the CITY table where the CONTINENT is 'Asia'.
*/

SELECT SUM(CITY.POPULATION)
FROM CITY
-- Join CITY and COUNTRY tables on the matching country code
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Asia';
