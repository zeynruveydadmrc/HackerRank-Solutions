/*
Problem: Challenges
Link: https://www.hackerrank.com/challenges/challenges/problem
Difficulty: Medium
Category: Basic Join
Description: Write a query to print the hacker_id, name, and the total number of challenges created by each student. Exclude hackers who have created the same number of challenges unless that number is the maximum number of challenges created.
*/

SELECT h.hacker_id, h.name, COUNT(c.challenge_id) AS total_count
FROM Hackers h
JOIN Challenges c ON h.hacker_id = c.hacker_id
GROUP BY h.hacker_id, h.name
HAVING 
    -- Condition 1: Include the hacker if their total count equals the maximum challenges created by anyone
    total_count = (
        SELECT COUNT(challenge_id) 
        FROM Challenges 
        GROUP BY hacker_id 
        ORDER BY COUNT(challenge_id) DESC 
        LIMIT 1
    )
    OR 
    -- Condition 2: If less than maximum, include only if the total count is unique (no other hacker has the same count)
    total_count IN (
        SELECT sub.cnt 
        FROM (
            SELECT COUNT(challenge_id) AS cnt 
            FROM Challenges 
            GROUP BY hacker_id
        ) sub
        GROUP BY sub.cnt
        HAVING COUNT(sub.cnt) = 1
    )
ORDER BY total_count DESC, h.hacker_id ASC;
