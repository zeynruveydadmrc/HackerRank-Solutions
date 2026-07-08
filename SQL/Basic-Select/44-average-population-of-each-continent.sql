/*
Problem: Average Population of Each Continent
Link: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem
Difficulty: Easy
Category: Basic Join
Description: Query the names of all continents and their respective average city populations, rounded down to the nearest integer.
*/

SELECT COUNTRY.Continent, FLOOR(AVG(CITY.Population))
FROM CITY
-- Join tables to associate each city with its respective continent
JOIN COUNTRY ON CITY.CountryCode = COUNTRY.Code
-- Group the results by continent to calculate the average for each
GROUP BY COUNTRY.Continent;
