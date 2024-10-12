select t1.empSSN, t1.empName, t1.numbers numbers, SUM(wo.workHours) total from (
	select emp.empSSN, emp.empName, count(de.depName) numbers from tblEmployee emp
	join tblDependent de on emp.empSSN = de.empSSN
	group by emp.empSSN, emp.empName
	having count(de.depName) > 3
) as t1
join tblWorksOn wo on wo.empSSN = t1.empSSN
group by t1.empName, t1.empSSN, t1.numbers

