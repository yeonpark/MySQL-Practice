# Write your MySQL query statement below
select distinct S.name from Orders O right outer join SalesPerson S
on O.sales_id = S.sales_id
where S.sales_id not in 
(select O.sales_id from Orders O left outer join Company C on O.com_id=C.com_id where C.name = 'RED'
