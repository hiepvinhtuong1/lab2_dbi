	select emp.empSSN, emp.empName, dep.depName from tblEmployee emp
	join tblWorksOn wo on emp.empSSN = wo.empSSN
	join tblDepartment dep on dep.depNum = emp.depNum
	group by emp.empSSN, emp.empName, dep.depName
	having count(wo.empSSN)  = 2;

