select emp.empSSN,emp.empName, coalesce(SUM(wo.workHours),0) as Total from tblEmployee emp
join tblEmployee sup on sup.empSSN = emp.supervisorSSN
left join tblWorksOn wo on wo.empSSN = emp.empSSN
where sup.empName = N'Mai Duy An'
group by emp.empSSN, emp.empName

