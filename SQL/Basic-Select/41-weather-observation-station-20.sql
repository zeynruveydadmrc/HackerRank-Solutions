/*
Problem: Weather Observation Station 20
Link: https://www.hackerrank.com/challenges/weather-observation-station-20/problem
Difficulty: Medium
Category: Aggregation
Description: A median is defined as a number separating the higher half of a data sample from the lower half. Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to 4 decimal places.
*/

SELECT ROUND(LAT_N, 4)
FROM (
    -- Assign row numbers to ordered latitudes and get the total count
    SELECT LAT_N, 
           ROW_NUMBER() OVER (ORDER BY LAT_N) AS row_num,
           COUNT(*) OVER () AS total_rows
    FROM STATION
) AS RankedStations
-- Filter to find the exact middle row(s) for the median
WHERE row_num = (total_rows + 1) / 2 
   OR (total_rows % 2 = 0 AND row_num IN (total_rows / 2, (total_rows / 2) + 1));
