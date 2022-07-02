--

-- @lc app=leetcode id=176 lang=mysql

--

-- [176] Second Highest Salary

--

-- @lc code=start

# Write your MySQL query statement below
select
    max(salary) as 'SecondHighestSalary'
from
    Employee
where
    salary < (
        select
            max(salary)
        from
            Employee
    ) -- @lc code=end
