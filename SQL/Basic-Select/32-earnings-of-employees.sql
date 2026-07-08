/*
Problem: Top Earners
Link: https://www.hackerrank.com/challenges/earnings-of-employees/problem
Difficulty: Easy
Category: Aggregation
Description: Query the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings.
*/

SELECT (months * salary) AS earnings, COUNT(*)
FROM Employee
GROUP BY earnings
ORDER BY earnings DESC
LIMIT 1;
