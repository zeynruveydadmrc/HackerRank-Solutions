/*
Problem: Employee Salaries
Link: https://www.hackerrank.com/challenges/salary-of-employees/problem
Difficulty: Easy
Description: Write a query that prints a list of employee names having a salary greater than $2000 per month who have been employees for less than 10 months. Sort the result by employee_id.
*/

SELECT name 
FROM Employee 
WHERE salary > 2000 AND months < 10 
ORDER BY employee_id;
