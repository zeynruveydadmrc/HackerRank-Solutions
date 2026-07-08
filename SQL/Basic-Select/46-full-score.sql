/*
Problem: Top Competitors (Full Score)
Link: https://www.hackerrank.com/challenges/full-score/problem
Difficulty: Medium
Category: Basic Join
Description: Write a query to print the hacker_id and name of hackers who achieved full scores for more than one challenge.
*/

SELECT h.hacker_id, h.name
FROM Submissions s
-- Join all 4 tables to connect submissions with hacker details and maximum possible scores
JOIN Hackers h ON s.hacker_id = h.hacker_id
JOIN Challenges c ON s.challenge_id = c.challenge_id
JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
-- Filter only the submissions that achieved the maximum score for that difficulty level
WHERE s.score = d.score
GROUP BY h.hacker_id, h.name
-- Keep only hackers who achieved full scores in more than one challenge
HAVING COUNT(s.challenge_id) > 1
ORDER BY COUNT(s.challenge_id) DESC, h.hacker_id ASC;
