select dep.depNum, dep.depName from tblDepartment dep
where not exists (
	select 1 from tblEmployee emp
	join tblWorksOn wo on wo.empSSN = emp.empSSN
	where (dep.depNum = emp.depNum)
)

