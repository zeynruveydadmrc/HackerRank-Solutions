/*
Problem: Revising the Select Query I
Link: https://www.hackerrank.com/challenges/revising-the-select-query/problem
Difficulty: Easy
Description: Query all columns for all American cities in the CITY table with populations larger than 100000.
*/

SELECT * FROM CITY c WHERE c.COUNTRYCODE = 'USA' AND c.POPULATION > 100000;
