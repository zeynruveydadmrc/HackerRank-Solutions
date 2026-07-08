/*
Problem: Weather Observation Station 2
Link: https://www.hackerrank.com/challenges/weather-observation-station-2/problem
Difficulty: Easy
Category: Aggregation
Description: Query the sum of LAT_N and SUM of LONG_W from STATION, rounded to 2 decimal places.
*/

SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2)
FROM STATION;
