--

-- @lc app=leetcode id=1581 lang=mysql

--

-- [1581] Customer Who Visited but Did Not Make Any Transactions

--

-- @lc code=start

# Write your MySQL query statement below
select
    v.customer_id,
    count(*) as 'count_no_trans'
from Visits as v
    left outer join Transactions as t on v.visit_id = t.visit_id
where t.amount is NULL
group by v.customer_id;

-- @lc code=end
