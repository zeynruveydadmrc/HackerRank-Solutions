/*
Problem: Draw The Triangle 2
Link: https://www.hackerrank.com/challenges/draw-the-triangle-2/problem
Difficulty: Easy
Category: Alternative Text Queries
Description: P(R) represents a pattern consisting of R rows, where the i-th row has i stars. Your task is to draw the pattern P(20).
*/

-- Initialize the variable with 0 since we increment it before printing the first row
SET @number = 0;

-- Print the pattern by repeating '* ' and incrementing the variable for each row
SELECT REPEAT('* ', @number := @number + 1) 
FROM information_schema.tables 
LIMIT 20;
