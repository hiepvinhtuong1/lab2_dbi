select emp.empSSN, emp.empName, SUM(wo.workHours) as total from tblEmployee emp
join tblWorksOn wo on emp.empSSN = wo.empSSN
group by emp.empSSN, emp.empName
