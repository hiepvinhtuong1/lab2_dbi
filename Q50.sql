select emp.empSSN, emp.empName, Coalesce(sum(wo.workHours),0) total from tblEmployee emp
left join tblWorksOn wo on wo.empSSN = emp.empSSN
where emp.empSSN not in (
	select de.empSSN from tblDependent de	
)
group by emp.empSSN, emp.empName
