# Write your MySQL query statement below
with w as (
select w1.temperature prev_day, w2.temperature today, w2.id from weather w1 
    join weather w2 on datediff(w2.recordDate, w1.recordDate) = 1
    )
select id from w where today > prev_day

# Date를 사용해보려고 했는데 이걸 사용했을때 arithmetic이 정상적이지 않음 -> 사용 불가
# Lag도 사용해보려고 했으나 날짜가 하루 이상 차이나는것도 있음 -> 사용 불가
