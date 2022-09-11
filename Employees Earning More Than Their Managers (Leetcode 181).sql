# Write your MySQL query statement below

select e2.name as Employee 
from employee e1 right join employee e2 
on e1.id = e2.managerId
where e2.salary > e1.salary
