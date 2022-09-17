/* Write your T-SQL query statement below */
SELECT hs.Department
     , hs.Employee
     , hs.Salary
FROM (
    SELECT Department.name Department
          , Employee.name Employee
          , Employee.salary Salary
          , DENSE_RANK() OVER (PARTITION BY Department.name ORDER BY Employee.Salary DESC) AS dr
    FROM Employee
         INNER JOIN Department ON Employee.departmentId = Department.id
    ) hs
WHERE dr <= 3