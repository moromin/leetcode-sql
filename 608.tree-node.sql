--

-- @lc app=leetcode id=608 lang=mysql

--

-- [608] Tree Node

--

-- @lc code=start

# Write your MySQL query statement below
select
    id,
    case
        when p_id is NULL then 'Root'
        when id in (
            select
                p_id
            from
                Tree
        ) then 'Inner'
        else 'Leaf'
    end as type
from
    Tree t1
order by
    id -- @lc code=end
