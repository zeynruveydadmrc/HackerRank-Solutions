/*
Problem: The PADS
Link: https://www.hackerrank.com/challenges/the-pads/problem
Difficulty: Medium
Category: Advanced Select
Description: Generate two output sheets. First, alphabetical list of names followed by the first letter of profession. Second, the total number of occurrences of each activity.
*/

-- 1st Query: Concatenate names with the first letter of their occupation
SELECT CONCAT(Name, '(', SUBSTRING(TRIM(Occupation), 1, 1), ')') 
FROM OCCUPATIONS 
ORDER BY Name;

-- 2nd Query: Print the total number of occurrences of each occupation
SELECT CONCAT('There are a total of ', COUNT(Occupation), ' ', LOWER(TRIM(Occupation)), 's.') 
FROM OCCUPATIONS 
GROUP BY Occupation 
ORDER BY COUNT(Occupation) ASC, Occupation ASC;
