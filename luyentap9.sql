-- Bài 1
SELECT
sum(case
when device_type ='laptop' then 1
else 0
end ) as laptop_views
,sum(CASE
when device_type ='tablet' or device_type ='phone' then 1
else 0
end) as mobile_views
FROM viewership
-- Bài 2
select
x,y,z
,case
when x+y>z and x+z>y and y+z>x then 'Yes'
when x+y<z or x+z<y or y+z<x then 'No'
end as triangle
from Triangle
-- Bài 3
SELECT
(sum(CASE
when call_category ='n/a' or call_category =' '  then 1 ( chỗ này ' ' có ý nghĩa là ô null k nhỉ? nếu dùng Coalesce(call_category,1) có đc k?
else 0
end ))/count(case_id)*100
FROM callers
-- Bài 4
select
name
from Customer
where referee_id <>2 or referee_id is null
  -- Bài 5
select
survived
,sum(case
when pclass = 1 then 1
else 0
end) as first_class
,sum(case
when pclass = 2 then 1
else 0
end) as second_class
