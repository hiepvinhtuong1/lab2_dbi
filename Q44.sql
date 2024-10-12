select dep.depNum, dep.depName from tblDepartment dep
where not exists (
	select 1 from tblProject pro
	join tblEmployee emp on dep.depNum = emp.depNum
	join tblWorksOn wo on wo.proNum = pro.proNum
	where (pro.proName=N'ProjectA') and (wo.empSSN = emp.empSSN)
)

