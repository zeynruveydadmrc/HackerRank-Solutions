/*
Problem: 15 Days of Learning SQL
Link: https://www.hackerrank.com/challenges/15-days-of-learning-sql/problem
Difficulty: Hard
Category: Basic Join
Description: Write a query to print total number of unique hackers who made at least 1 submission each day starting from the first day of the contest, and find the hacker_id and name of the hacker who made maximum number of submissions for each day.
*/

SELECT 
    s1.submission_date,
    -- Calculate the count of unique hackers who have made submissions sequentially every day since 2016-03-01
    (SELECT COUNT(DISTINCT s2.hacker_id)
     FROM Submissions s2
     WHERE s2.submission_date = s1.submission_date
       AND (SELECT COUNT(DISTINCT s3.submission_date)
            FROM Submissions s3
            WHERE s3.hacker_id = s2.hacker_id
              AND s3.submission_date <= s1.submission_date) = DATEDIFF(s1.submission_date, '2016-03-01') + 1
    ) AS hacker_count,
    -- Find the hacker_id with the maximum submissions on the current date
    (SELECT s4.hacker_id
     FROM Submissions s4
     WHERE s4.submission_date = s1.submission_date
     GROUP BY s4.hacker_id
     ORDER BY COUNT(submission_id) DESC, s4.hacker_id ASC
     LIMIT 1) AS leader_id,
    -- Fetch the name of the daily leader using their hacker_id
    (SELECT h.name 
     FROM Hackers h 
     WHERE h.hacker_id = leader_id) AS leader_name
FROM (SELECT DISTINCT submission_date FROM Submissions) s1
ORDER BY s1.submission_date;
