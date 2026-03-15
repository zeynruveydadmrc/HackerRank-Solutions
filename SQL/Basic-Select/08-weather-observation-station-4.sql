/*
Problem: Weather Observation Station 4
Link: https://www.hackerrank.com/challenges/weather-observation-station-4/problem
Level: Easy

EXPLANATION:
- COUNT(CITY): Returns the total number of city entries in the table, including duplicates.
- COUNT(DISTINCT CITY): Returns the number of unique city names by excluding duplicates.
- The difference between these two values gives us the number of duplicate entries.
*/

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) 
FROM STATION;
