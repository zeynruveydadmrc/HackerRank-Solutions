/*
Problem: Occupations
Link: https://www.hackerrank.com/challenges/occupations/problem
Difficulty: Medium
Category: Advanced Select
Description: Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation.
*/

SELECT 
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM (
    -- Assign a sequential row number to each name within its specific occupation group
    SELECT Name, Occupation, 
           ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS row_num
    FROM OCCUPATIONS
) AS RankedOccupations
GROUP BY row_num;
