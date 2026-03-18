/*
Problem: Weather Observation Station 12
Link: https://www.hackerrank.com/challenges/weather-observation-station-12/problem
Level: Easy

EXPLANATION:
- This problem requires cities to meet BOTH conditions: not starting with a vowel AND not ending with a vowel.
- We use 'AND' to combine these two logical groups.
- Any city that starts OR ends with a vowel will be excluded.
*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE (CITY NOT LIKE 'a%' AND CITY NOT LIKE 'e%' AND CITY NOT LIKE 'i%' AND CITY NOT LIKE 'o%' AND CITY NOT LIKE 'u%')
  AND (CITY NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u');
