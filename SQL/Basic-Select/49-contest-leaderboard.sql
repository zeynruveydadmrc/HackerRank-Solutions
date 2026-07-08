/*
Problem: Contest Leaderboard
Link: https://www.hackerrank.com/challenges/contest-leaderboard/problem
Difficulty: Medium
Category: Basic Join
Description: Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. If more than one hacker has the same score, sort the result by ascending hacker_id. Exclude all hackers with a total score of 0.
*/

SELECT h.hacker_id, h.name, SUM(MaxScores.max_score) AS total_score
FROM Hackers h
-- Join with a subquery that captures only the highest score for each challenge per hacker
JOIN (
    SELECT hacker_id, challenge_id, MAX(score) AS max_score
    FROM Submissions
    GROUP BY hacker_id, challenge_id
) MaxScores ON h.hacker_id = MaxScores.hacker_id
GROUP BY h.hacker_id, h.name
-- Exclude hackers who have a total score of 0
HAVING total_score > 0
ORDER BY total_score DESC, h.hacker_id ASC;
