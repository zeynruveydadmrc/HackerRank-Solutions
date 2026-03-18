/*
Problem: Weather Observation Station 11
Link: https://www.hackerrank.com/challenges/weather-observation-station-11/problem
Level: Easy

EXPLANATION:
- The problem asks for cities that EITHER do not start with a vowel OR do not end with a vowel.
- We use 'NOT LIKE' to define the non-vowel conditions.
- The 'OR' operator between the two main groups ensures that if a city fails even one of the vowel tests (start or end), it gets included in the result.
*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE (CITY NOT LIKE 'a%' AND CITY NOT LIKE 'e%' AND CITY NOT LIKE 'i%' AND CITY NOT LIKE 'o%' AND CITY NOT LIKE 'u%')
   OR (CITY NOT LIKE '%a' AND CITY NOT LIKE '%e' AND CITY NOT LIKE '%i' AND CITY NOT LIKE '%o' AND CITY NOT LIKE '%u');
