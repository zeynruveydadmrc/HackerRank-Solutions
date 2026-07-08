/*
Problem: Weather Observation Station 15
Link: https://www.hackerrank.com/challenges/weather-observation-station-15/problem
Difficulty: Easy
Category: Aggregation
Description: Query the Western Longitude (LONG_W) for the largest Northern Latitude (LAT_N) in STATION that is less than 137.2345. Round the answer to 4 decimal places.
*/

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC
LIMIT 1;
