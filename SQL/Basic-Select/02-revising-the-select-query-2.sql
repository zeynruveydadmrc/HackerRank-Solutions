/*
Problem: Revising the Select Query II
Link: https://www.hackerrank.com/challenges/revising-the-select-query-2/problem
Difficulty: Easy
Description: Query the NAME field for all American cities in the CITY table with populations larger than 120000.
*/

SELECT c.NAME FROM CITY c WHERE c.COUNTRYCODE = 'USA' AND c.POPULATION > 120000;
