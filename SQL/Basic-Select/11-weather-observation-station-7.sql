/*
Problem: Weather Observation Station 7
Link: https://www.hackerrank.com/challenges/weather-observation-station-7/problem
Level: Easy

EXPLANATION:
We use the 'LIKE' operator with the '%' wildcard at the beginning of the string.
'%a' means any city name that ends with the letter 'a'.
'DISTINCT' is used to ensure city names are unique in the result.
*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY LIKE '%a' 
   OR CITY LIKE '%e' 
   OR CITY LIKE '%i' 
   OR CITY LIKE '%o' 
   OR CITY LIKE '%u';
