/*
Problem: New Companies (The Company)
Link: https://www.hackerrank.com/challenges/the-company/problem
Difficulty: Medium
Category: Advanced Select
Description: Write a query to print the company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, and total number of employees.
*/

SELECT c.company_code, c.founder,
       COUNT(DISTINCT lm.lead_manager_code),
       COUNT(DISTINCT sm.senior_manager_code),
       COUNT(DISTINCT m.manager_code),
       COUNT(DISTINCT e.employee_code)
FROM Company c
-- Joining tables down the corporate hierarchy chain
JOIN Lead_Manager lm ON c.company_code = lm.company_code
JOIN Senior_Manager sm ON lm.lead_manager_code = sm.lead_manager_code
JOIN Manager m ON sm.senior_manager_code = m.senior_manager_code
JOIN Employee e ON m.manager_code = e.manager_code
GROUP BY c.company_code, c.founder
ORDER BY c.company_code;
