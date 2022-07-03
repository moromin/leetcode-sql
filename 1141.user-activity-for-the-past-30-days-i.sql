--

-- @lc app=leetcode id=1141 lang=mysql

--

-- [1141] User Activity for the Past 30 Days I

--

-- @lc code=start

# Write your MySQL query statement below
select
    activity_date as day,
    count(distinct user_id) as active_users
from Activity a1
where
    datediff('2019-07-27', activity_date) < 30
    and activity_date <= '2019-07-27'
group by activity_date;

-- @lc code=end
