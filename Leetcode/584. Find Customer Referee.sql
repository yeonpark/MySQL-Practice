# Write your MySQL query statement below

select name from customer where referee_id is null or referee_id <> 2

# MySQL uses three-valued logic -- TRUE, FALSE and UNKNOWN, null evaluates to unknown, therefore 
# the third condition is as well required.
