-- Write your PostgreSQL query statement below
WITH in_cat AS (SELECT account_id,income,
CASE
WHEN income<20000 THEN 'Low Salary'
WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
WHEN income>50000 THEN 'High Salary'
END AS income_cat
FROM Accounts),
category AS(
    SELECT 'Low Salary' as categories UNION ALL
    SELECT 'Average Salary' UNION ALL
    SELECT 'High Salary' 
)
SELECT c.categories as category,COUNT(i.account_id) as accounts_count FROM category c LEFT JOIN in_cat i ON c.categories=i.income_cat GROUP BY c.categories;