/*
Problem: Draw The Triangle 1
Link: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem
Difficulty: Easy
Category: Alternative Text Queries
Description: P(R) represents a pattern consisting of R rows, where the i-th row has R-i+1 stars. Your task is to draw the pattern P(20).
*/

-- Initialize the variable with 21 since we decrement it before printing the first row
SET @number = 21;

-- Print the pattern by repeating '* ' and decrementing the variable for each row
SELECT REPEAT('* ', @number := @number - 1) 
FROM information_schema.tables 
LIMIT 20;
