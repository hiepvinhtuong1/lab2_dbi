select emp.empSSN, emp.empName, dep.depName,coalesce(SUM(wo.workHours),0) as Total from tblEmployee emp
left join tblWorksOn wo on emp.empSSN = wo.empSSN
join tblDepartment dep on emp.depNum = dep.depNum
group by emp.empSSN, emp.empName, dep.depName
