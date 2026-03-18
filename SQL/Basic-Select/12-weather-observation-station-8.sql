/*
Problem: Weather Observation Station 8
Link: https://www.hackerrank.com/challenges/weather-observation-station-8/problem
Level: Easy

EXPLANATION:
- The first part (inside parentheses) checks if the city starts with a vowel.
- The second part checks if the city ends with a vowel.
- The 'AND' operator ensures that both conditions must be true for a city to be selected.
*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE (CITY LIKE 'a%' OR CITY LIKE 'e%' OR CITY LIKE 'i%' OR CITY LIKE 'o%' OR CITY LIKE 'u%')
  AND (CITY LIKE '%a' OR CITY LIKE '%e' OR CITY LIKE '%i' OR CITY LIKE '%o' OR CITY LIKE '%u');
