# Write your MySQL query statement below

# Solution 1
with c as
(select customer_number, count(*) as cnt from orders group by customer_number)
select customer_number from c where cnt = (select max(cnt) from c)

# Solution 2 (Seems much faster)
select customer_number from orders group by customer_number order by count(*) desc limit 1

