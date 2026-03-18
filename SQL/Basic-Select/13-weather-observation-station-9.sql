/*
Problem: Weather Observation Station 9
Link: https://www.hackerrank.com/challenges/weather-observation-station-9/problem
Level: Easy

EXPLANATION:
- We use the 'NOT LIKE' operator to exclude city names that start with a vowel.
- The 'AND' operator ensures that the city name does not start with 'a', 'e', 'i', 'o', OR 'u'.
- 'DISTINCT' is used to remove any duplicate results.
*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY NOT LIKE 'a%' 
  AND CITY NOT LIKE 'e%' 
  AND CITY NOT LIKE 'i%' 
  AND CITY NOT LIKE 'o%' 
  AND CITY NOT LIKE 'u%';
