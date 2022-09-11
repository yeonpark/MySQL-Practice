# Write your MySQL query statement below

select name as "Customers" from customers where name not in (
select name from orders o, customers c where c.id = o.customerId

#answer
select customers.name as 'Customers'
from customers
where customers.id not in
(
    select customerid from orders
);
근데 이렇게 되면

{"headers": {"Customers": ["id", "name"], "Orders": ["id", "customerId"]}, 
"rows": {"Customers": [[1, "James"], [2, "James"]], "Orders": [[1, 1]]}}

케이스에서 출력값이 없어야 되는게 아닌지? james는 이미 주문을 했는데 왜 포함이 되는건지?
-> 이름이 같은 두명의 사람이기 때문에 james가 출력되야함

+
SELECT Name AS 'Customers'
FROM Customers c
LEFT JOIN Orders o
ON c.Id = o.CustomerId
WHERE o.CustomerId IS NULL
가 훨씬 효율적인듯?
