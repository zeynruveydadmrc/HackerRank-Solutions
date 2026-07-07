/*
Problem: Revising Aggregations - The Average Function
Link: https://www.hackerrank.com/challenges/revising-aggregations-the-average-function/problem
Difficulty: Easy
Category: Aggregation
Description: Query the average population of all cities in CITY where District is California.
*/

SELECT AVG(POPULATION) 
FROM CITY 
WHERE DISTRICT = 'California';
