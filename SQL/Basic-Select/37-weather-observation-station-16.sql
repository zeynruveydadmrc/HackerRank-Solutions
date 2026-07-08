/*
Problem: Weather Observation Station 16
Link: https://www.hackerrank.com/challenges/weather-observation-station-16/problem
Difficulty: Easy
Category: Aggregation
Description: Query the smallest Northern Latitude (LAT_N) from STATION that is greater than 38.7780. Round the answer to 4 decimal places.
*/

SELECT ROUND(MIN(LAT_N), 4)
FROM STATION
WHERE LAT_N > 38.7780;
