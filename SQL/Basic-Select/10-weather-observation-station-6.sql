/*
Problem: Weather Observation Station 6
Link: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
Level: Easy

EXPLANATION:
We use the 'LIKE' operator with the '%' wildcard to find cities starting with vowels.
'A%' means any string that starts with the letter A.
*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY LIKE 'A%' 
   OR CITY LIKE 'E%' 
   OR CITY LIKE 'I%' 
   OR CITY LIKE 'O%' 
   OR CITY LIKE 'U%';
