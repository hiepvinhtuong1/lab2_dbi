select emp.empSSN,emp.empName, SUM(wo.workHours) as total from tblEmployee emp
join tblEmployee sup on sup.empSSN = emp.supervisorSSN
join tblWorksOn wo on wo.empSSN = emp.empSSN
where sup.empName = N'Mai Duy An'
group by emp.empSSN, emp.empName

