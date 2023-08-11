# Write your MySQL query statement below
SELECT name from Employee
WHERE id in
(SELECT managerId FROM Employee
GROUP BY managerId 
HAVING COUNT(managerId)>=5 )