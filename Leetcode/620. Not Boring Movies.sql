# Write your MySQL query statement below
select * from cinema
WHERE mod(id,2) <> 0
and description not like "boring"
order by rating desc
