-- Write your PostgreSQL query statement below
SELECT MAX(num) as num FROM(
SELECT num,COUNT(num) as freq FROM MyNumbers GROUP BY num having count(num)=1);