/*
Problem: Weather Observation Station 17
Link: https://www.hackerrank.com/challenges/weather-observation-station-17/problem
Difficulty: Easy
Category: Aggregation
Description: Query the Western Longitude (LONG_W) for the smallest Northern Latitude (LAT_N) in STATION that is greater than 38.7780. Round the answer to 4 decimal places.
*/

SELECT ROUND(LONG_W, 4)
FROM STATION
WHERE LAT_N > 38.7780
ORDER BY LAT_N ASC
LIMIT 1;
