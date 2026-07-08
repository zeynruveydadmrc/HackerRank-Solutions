/*
Problem: Ollivander's Inventory (Harry Potter and Wands)
Link: https://www.hackerrank.com/challenges/harry-potter-and-wands/problem
Difficulty: Medium
Category: Basic Join
Description: Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power. If more than one wand has same power, sort the result in order of descending age.
*/

SELECT w.id, p.age, w.coins_needed, w.power
FROM Wands w
JOIN Wands_Property p ON w.code = p.code
WHERE p.is_evil = 0
  -- Correlated subquery to filter only the cheapest wand for each specific age and power combination
  AND w.coins_needed = (
      SELECT MIN(w2.coins_needed)
      FROM Wands w2
      JOIN Wands_Property p2 ON w2.code = p2.code
      WHERE w2.power = w.power AND p2.age = p.age
  )
ORDER BY w.power DESC, p.age DESC;
