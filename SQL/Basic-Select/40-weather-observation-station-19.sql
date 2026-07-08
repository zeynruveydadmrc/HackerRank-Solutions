/*
Problem: Weather Observation Station 19
Link: https://www.hackerrank.com/challenges/weather-observation-station-19/problem
Difficulty: Medium
Category: Aggregation
Description: Query the Euclidean Distance between points P1 and P2 and round it to a scale of 4 decimal places.
*/

SELECT ROUND(
    SQRT(
        POW(MIN(LAT_N) - MAX(LAT_N), 2) + 
        POW(MIN(LONG_W) - MAX(LONG_W), 2)
    ), 
    4
)
FROM STATION;
