/*
Problem: Weather Observation Station 10
Link: https://www.hackerrank.com/challenges/weather-observation-station-10/problem
Level: Easy

EXPLANATION:
- We use the 'NOT LIKE' operator to exclude city names that end with a vowel.
- The '%' wildcard is placed at the beginning ('%a') to check the last character.
- 'AND' ensures that NONE of the vowel-ending conditions are met.
*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT LIKE '%a' 
  AND CITY NOT LIKE '%e' 
  AND CITY NOT LIKE '%i' 
  AND CITY NOT LIKE '%o' 
  AND CITY NOT LIKE '%u';
