# Write your MySQL query statement below

select player_id, min(event_date) as first_login from activity group by player_id

# group by 이후에 select가 실행되기 때문에 각 그룹별 제일 작은 날짜를 가져올수있음
