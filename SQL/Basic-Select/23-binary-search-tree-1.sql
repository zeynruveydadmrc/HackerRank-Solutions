/*
Problem: Binary Search Tree 1
Link: https://www.hackerrank.com/challenges/binary-search-tree-1/problem
Difficulty: Medium
Category: Advanced Select
Description: Write a query to find the node type of Binary Search Tree ordered by the value of the node.
*/

SELECT N,
    CASE 
        WHEN P IS NULL THEN 'Root'
        -- If the node is not a parent to any other node, it's a Leaf
        WHEN N NOT IN (SELECT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
        -- Otherwise, it is an Inner node
        ELSE 'Inner'
    END
FROM BST
ORDER BY N;
