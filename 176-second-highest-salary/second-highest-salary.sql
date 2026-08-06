-- Write your PostgreSQL query statement below
WITH rank as (SELECT id,salary,
DENSE_RANK() OVER(ORDER BY salary DESC) as rnk
FROM Employee)
SELECT MAX(salary) as SecondHighestSalary FROM rank where rnk = 2;