-- Write your PostgreSQL query statement below
WITH PriorDayTemp AS(
    SELECT id, recordDate, temperature,
    LAG(recordDate) OVER(ORDER BY recordDate) as prevDate,
    LAG(temperature) OVER(ORDER BY recordDate) as prevTemp
    FROM Weather
)
SELECT id FROM PriorDayTemp WHERE temperature>prevTemp AND recordDate - prevDate = 1;