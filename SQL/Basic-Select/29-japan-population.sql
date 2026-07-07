/*
Problem: Japan Population
Link: https://www.hackerrank.com/challenges/japan-population/problem
Difficulty: Easy
Category: Aggregation
Description: Query the sum of the populations for all Japanese cities in CITY, where the COUNTRYCODE is 'JPN'.
*/

SELECT SUM(POPULATION) 
FROM CITY 
WHERE COUNTRYCODE = 'JPN';
