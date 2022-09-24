# Write your MySQL query statement below
with q1 as (
    select * from sales where sale_date >= "2019-01-01" and sale_date <= "2019-03-31"
), rest as (
    select * from sales where sale_date >= "2019-04-01"
    or sale_date <= "2018-12-31"
)
select distinct product.product_id, product.product_name from q1, product where 
q1.product_id = product.product_id
and q1.product_id not in (select product_id from rest) 
