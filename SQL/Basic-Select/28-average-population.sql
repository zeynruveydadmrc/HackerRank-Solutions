/*
Problem: Average Population
Link: https://www.hackerrank.com/challenges/average-population/problem
Difficulty: Easy
Category: Aggregation
Description: Query the average population for all cities in CITY, rounded down to the nearest integer.
*/

SELECT FLOOR(AVG(POPULATION)) 
FROM CITY;
