/*
Problem: Placements
Link: https://www.hackerrank.com/challenges/placements/problem
Difficulty: Medium
Category: Basic Join
Description: Write a query to output the names of those students whose best friends got offered a higher salary than them. Names must be ordered by the salary amount offered to the best friends.
*/

SELECT s.Name
FROM Students s
-- Join to find the best friend of each student
JOIN Friends f ON s.ID = f.ID
-- Join Packages first time to get the student's own salary
JOIN Packages p1 ON s.ID = p1.ID
-- Join Packages second time to get the best friend's salary
JOIN Packages p2 ON f.Friend_ID = p2.ID
-- Filter where the friend's salary is greater than the student's salary
WHERE p2.Salary > p1.Salary
-- Order by the friend's salary in ascending order
ORDER BY p2.Salary ASC;
