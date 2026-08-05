-- Write your PostgreSQL query statement below
SELECT name FROM Employee WHERE id IN (SELECT managerID FROM Employee GROUP BY managerID having COUNT(*)>=5);