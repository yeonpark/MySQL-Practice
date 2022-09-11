# Write your MySQL query statement below
with c as (
    select email, count(*) as num from person group by email
    )
select email from c where num>1
