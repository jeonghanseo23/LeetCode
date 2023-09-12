# Write your MySQL query statement below
SELECT query_name,
round(sum(rating / position) / count(query_name), 2) as quality,
round(sum(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / count(query_name), 4)*100 as poor_query_percentage
FROM Queries 
GROUP BY query_name;