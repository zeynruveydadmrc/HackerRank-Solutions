/*
Problem: Higher Than 75 Marks
Link: https://www.hackerrank.com/challenges/more-than-75-marks/problem
Level: Easy

KEY CONCEPTS:
- RIGHT(NAME, 3): Extracts the last three characters of the string for sorting.
- ORDER BY: First sorts by the last three characters, then by ID as a tie-breaker.
- WHERE Marks > 75: Filters only the students with high marks.
*/

SELECT NAME 
FROM STUDENTS 
WHERE MARKS > 75 
ORDER BY RIGHT(NAME, 3) ASC, ID ASC; 
