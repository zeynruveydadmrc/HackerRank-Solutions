/*
Problem: Weather Observation Station 3
Link: https://www.hackerrank.com/challenges/weather-observation-station-3/problem
Level: Easy
Description: Query a list of CITY names from STATION for cities with an even ID number. 
             Print the results in any order, but exclude duplicates from the answer.
*/

-- 'DISTINCT' anahtar kelimesi, tablodaki tekrar eden satırları eleyerek her şehrin sadece bir kez listelenmesini sağlar.
SELECT DISTINCT CITY 
FROM STATION 
WHERE MOD(ID, 2) = 0;
