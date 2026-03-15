/*
Problem: Weather Observation Station 6
Link: https://www.hackerrank.com/challenges/weather-observation-station-6/problem
Level: Easy

KEY CONCEPTS:
- DISTINCT: Used to avoid duplicate city names.
- REGEXP: A powerful way to search for patterns in strings.
- '^[aeiou]': The '^' symbol matches the start of the string, and '[aeiou]' matches any vowel.
*/

SELECT DISTINCT CITY 
FROM STATION 
WHERE CITY REGEXP '^[aeiou]';
