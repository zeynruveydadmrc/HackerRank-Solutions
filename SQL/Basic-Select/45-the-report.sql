/*
Problem: The Report
Link: https://www.hackerrank.com/challenges/the-report/problem
Difficulty: Medium
Category: Basic Join
Description: Generate a report containing three columns: Name, Grade and Mark. Names of students who received a grade lower than 8 should be replaced with NULL.
*/

SELECT 
    -- Display Name only if the grade is 8 or higher; otherwise, set to NULL
    CASE WHEN g.Grade >= 8 THEN s.Name ELSE NULL END AS Name,
    g.Grade, 
    s.Marks
FROM Students s
-- Join using BETWEEN to match marks within the min and max grade ranges
JOIN Grades g ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
-- Order by grade descending, then alphabetically for names, and finally by marks ascending for NULLs
ORDER BY g.Grade DESC, s.Name ASC, s.Marks ASC;
