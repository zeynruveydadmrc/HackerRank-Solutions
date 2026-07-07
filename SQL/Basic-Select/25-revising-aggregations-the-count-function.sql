/*
Problem: Revising Aggregations - The Count Function
Link: https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem
Difficulty: Easy
Category: Aggregation
Description: Query a count of the number of cities in CITY having a Population larger than 100,000.
*/

SELECT COUNT(*) 
FROM CITY 
WHERE POPULATION > 100000;
