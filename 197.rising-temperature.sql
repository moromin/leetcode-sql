--

-- @lc app=leetcode id=197 lang=mysql

--

-- [197] Rising Temperature

--

-- @lc code=start

# Write your MySQL query statement below
select w1.id
from Weather as w1, Weather as w2
where
    TO_DAYS(w1.recordDate) - TO_DAYS(w2.recordDate) = 1
    and w1.temperature > w2.temperature;

-- @lc code=end
