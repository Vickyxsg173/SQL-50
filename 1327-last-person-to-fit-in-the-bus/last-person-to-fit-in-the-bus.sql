-- Write your PostgreSQL query statement below
WITH total as (SELECT person_name,
SUM(weight) OVER(ORDER BY turn) AS total_weight
from Queue)
SELECT person_name FROM total WHERE total_weight<=1000 ORDER BY total_weight DESC LIMIT 1;