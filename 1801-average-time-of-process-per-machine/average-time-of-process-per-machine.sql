-- Write your PostgreSQL query statement below
SELECT machine_id, ROUND(AVG(process_duration)::numeric,3) as processing_time FROM (
SELECT machine_id,MAX(timestamp)-MIN(timestamp) as process_duration FROM Activity GROUP BY machine_id,process_id)
GROUP BY machine_id;