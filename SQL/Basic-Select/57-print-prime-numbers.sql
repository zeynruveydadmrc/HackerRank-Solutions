/*
Problem: Print Prime Numbers
Link: https://www.hackerrank.com/challenges/print-prime-numbers/problem
Difficulty: Medium
Category: Alternative Text Queries
Description: Write a query to print all prime numbers less than or equal to 1000. Print your output on a single line, and use the ampersand (&) character as a separator.
*/

WITH RECURSIVE Numbers AS (
    -- Anchor member: start generating numbers from 2
    SELECT 2 AS num
    UNION ALL
    -- Recursive member: increment up to 1000
    SELECT num + 1 FROM Numbers WHERE num < 1000
)
SELECT GROUP_CONCAT(num SEPARATOR '&')
FROM Numbers n1
WHERE NOT EXISTS (
    -- Filter out numbers that have divisors other than 1 and themselves
    SELECT 1 
    FROM Numbers n2 
    WHERE n2.num < n1.num AND n1.num % n2.num = 0
);
