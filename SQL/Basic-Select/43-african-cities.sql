/*
Problem: African Cities
Link: https://www.hackerrank.com/challenges/african-cities/problem
Difficulty: Easy
Category: Basic Join
Description: Query the names of all cities in the CITY table where the CONTINENT is 'Africa'.
*/

SELECT CITY.NAME
FROM CITY
-- Join CITY and COUNTRY tables to filter cities by their continent
JOIN COUNTRY ON CITY.COUNTRYCODE = COUNTRY.CODE
WHERE COUNTRY.CONTINENT = 'Africa';
