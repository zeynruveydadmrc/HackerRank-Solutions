/*
Problem: SQL Projects
Link: https://www.hackerrank.com/challenges/sql-projects/problem
Difficulty: Medium
Category: Basic Join
Description: Write a query to output the start and end dates of projects listed by the number of days it took to complete the project in ascending order. If there is more than one project that have the same number of completion days, then order by the project start date.
*/

SELECT Start_Date, MIN(End_Date)
FROM 
    -- Subquery 1: Find all project start dates (dates that never appear as an end date)
    (SELECT Start_Date FROM Projects WHERE Start_Date NOT IN (SELECT End_Date FROM Projects)) AS Starts,
    -- Subquery 2: Find all project end dates (dates that never appear as a start date)
    (SELECT End_Date FROM Projects WHERE End_Date NOT IN (SELECT Start_Date FROM Projects)) AS Ends
-- Ensure the start date is before the end date
WHERE Start_Date < End_Date
GROUP BY Start_Date
-- Order by the duration of the project (End_Date - Start_Date) and then by the Start_Date
ORDER BY DATEDIFF(MIN(End_Date), Start_Date) ASC, Start_Date ASC;
