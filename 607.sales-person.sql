--

-- @lc app=leetcode id=607 lang=mysql

--

-- [607] Sales Person

--

-- @lc code=start

# Write your MySQL query statement below
select sp.name
from SalesPerson as sp
    left outer join (
        select o.sales_id
        from Orders as o
            join Company as c on o.com_id = c.com_id
        where
            c.name = 'RED'
    ) as tmp on sp.sales_id = tmp.sales_id
where tmp.sales_id is NULL;

-- @lc code=end
