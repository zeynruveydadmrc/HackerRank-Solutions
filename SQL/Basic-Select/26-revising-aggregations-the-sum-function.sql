/*
Problem: Revising Aggregations - The Sum Function
Link: https://www.hackerrank.com/challenges/revising-aggregations-sum/problem
Difficulty: Easy
Category: Aggregation
Description: Query the total population of all cities in CITY where District is California.
*/

SELECT SUM(POPULATION) 
FROM CITY 
WHERE DISTRICT = 'California';
