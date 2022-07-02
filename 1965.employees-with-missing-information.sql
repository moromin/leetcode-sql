--

-- @lc app=leetcode id=1965 lang=mysql

--

-- [1965] Employees With Missing Information

--

-- @lc code=start

# Write your MySQL query statement below
select
    employee_id
from
    Employees
where
    employee_id not in (
        select
            employee_id
        from
            Salaries
    )
union
select
    employee_id
from
    Salaries
where
    employee_id not in (
        select
            employee_id
        from
            Employees
    )
order by
    employee_id -- @lc code=end
