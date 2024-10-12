select * from (
	select emp.empSSN, emp.empName, sum(wo.workHours) Total from tblEmployee emp
	join tblWorksOn wo on emp.empSSN = wo.empSSN
	group by emp.empSSN, emp.empName
) ta1
where ta1.total = ( select MAX(ta2.total) from (
	select emp.empSSN, emp.empName, sum(wo.workHours) total from tblEmployee emp
	join tblWorksOn wo on emp.empSSN = wo.empSSN
	group by emp.empSSN, emp.empName
) ta2
)
