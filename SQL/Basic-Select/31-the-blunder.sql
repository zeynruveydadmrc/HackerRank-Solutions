/*
Problem: The Blunder
Link: https://www.hackerrank.com/challenges/the-blunder/problem
Difficulty: Easy
Category: Aggregation
Description: Query the amount of error (actual average salary minus miscalculated average salary), rounded up to the next integer.
*/

SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, '0', ''))) 
FROM EMPLOYEES;
