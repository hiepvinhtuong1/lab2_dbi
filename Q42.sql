select emp.empSSN, emp.empName, dep.depName from tblEmployee emp
join tblDepartment dep on dep.depNum = emp.depNum
where not exists (
	select 1 from tblProject pro
	join tblWorksOn wo on pro.proNum = wo.proNum
	where emp.empSSN = wo.empSSN
)