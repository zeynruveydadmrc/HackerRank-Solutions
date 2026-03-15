/*
Problem: Weather Observation Station 5
Link: https://www.hackerrank.com/challenges/weather-observation-station-5/problem
Level: Easy

KEY CONCEPTS:
- LENGTH(CITY): Calculates the number of characters in each city name.
- ORDER BY: Sorts the results by length and then alphabetically to handle ties.
- LIMIT 1: Retrieves only the top record for both the shortest and longest categories.
*/

-- 1. Query for the shortest city name
SELECT CITY, LENGTH(CITY) 
FROM STATION 
ORDER BY LENGTH(CITY) ASC, CITY ASC 
LIMIT 1;

-- 2. Query for the longest city name
SELECT CITY, LENGTH(CITY) 
FROM STATION 
ORDER BY LENGTH(CITY) DESC, CITY ASC 
LIMIT 1;
