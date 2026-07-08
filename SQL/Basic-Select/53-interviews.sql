/*
Problem: Interviews
Link: https://www.hackerrank.com/challenges/interviews/problem
Difficulty: Hard
Category: Basic Join
Description: Write a query to print the contest_id, hacker_id, name, and the sums of total_submissions, total_accepted_submissions, total_views, and total_unique_views for each contest. Exclude the contest from the result if all four sums are 0.
*/

SELECT c.contest_id, c.hacker_id, c.name, 
       SUM(s.total_submissions), 
       SUM(s.total_accepted_submissions), 
       SUM(v.total_views), 
       SUM(v.total_unique_views)
FROM Contests c
-- Join core hierarchy: Contests -> Colleges -> Challenges
JOIN Colleges col ON c.contest_id = col.contest_id
JOIN Challenges ch ON col.college_id = ch.college_id
-- Left join pre-aggregated submission statistics to prevent row duplication
LEFT JOIN (
    SELECT challenge_id, 
           SUM(total_submissions) AS total_submissions, 
           SUM(total_accepted_submissions) AS total_accepted_submissions
    FROM Submission_Stats
    GROUP BY challenge_id
) s ON ch.challenge_id = s.challenge_id
-- Left join pre-aggregated view statistics to prevent row duplication
LEFT JOIN (
    SELECT challenge_id, 
           SUM(total_views) AS total_views, 
           SUM(total_unique_views) AS total_unique_views
    FROM View_Stats
    GROUP BY challenge_id
) v ON ch.challenge_id = v.challenge_id
GROUP BY c.contest_id, c.hacker_id, c.name
-- Exclude contests where all four sum values are zero
HAVING (SUM(s.total_submissions) + SUM(s.total_accepted_submissions) + SUM(v.total_views) + SUM(v.total_unique_views)) > 0
ORDER BY c.contest_id;
