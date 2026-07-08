/*
Problem: Symmetric Pairs
Link: https://www.hackerrank.com/challenges/symmetric-pairs/problem
Difficulty: Medium
Category: Basic Join
Description: You are given a table, Functions, containing two columns: X and Y. Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1. Write a query to output all such symmetric pairs in ascending order by X. List the rows such that X1 <= Y1.
*/

SELECT f1.X, f1.Y
FROM Functions f1
-- Self-join the table to find cross matches where X1 = Y2 and Y1 = X2
JOIN Functions f2 ON f1.X = f2.Y AND f1.Y = f2.X
GROUP BY f1.X, f1.Y
-- Condition 1: X < Y handles distinct pairs like (8, 24) and (24, 8)
-- Condition 2: X = Y handles identical pairs like (20, 20), ensuring they exist at least twice
HAVING f1.X < f1.Y OR (f1.X = f1.Y AND COUNT(*) > 1)
ORDER BY f1.X ASC;
