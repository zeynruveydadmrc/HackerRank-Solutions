/*
Problem: Population Density Difference
Link: https://www.hackerrank.com/challenges/population-density-difference/problem
Difficulty: Easy
Category: Aggregation
Description: Query the difference between the maximum and minimum populations in CITY.
*/

SELECT MAX(POPULATION) - MIN(POPULATION) 
FROM CITY;
