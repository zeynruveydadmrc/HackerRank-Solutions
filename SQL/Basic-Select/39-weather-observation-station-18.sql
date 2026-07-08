/*
Problem: Weather Observation Station 18
Link: https://www.hackerrank.com/challenges/weather-observation-station-18/problem
Difficulty: Medium
Category: Aggregation
Description: Query the Manhattan Distance between points P1 and P2 and round it to a scale of 4 decimal places.
*/

SELECT ROUND(
    (MAX(LAT_N) - MIN(LAT_N)) + (MAX(LONG_W) - MIN(LONG_W)), 
    4
)
FROM STATION;
