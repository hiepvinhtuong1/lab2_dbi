select dep.depNum, dep.depName, sum(wo.workHours) total from tblEmployee emp
join tblWorksOn wo on emp.empSSN = wo.empSSN
join tblDepartment dep on dep.depNum = emp.depNum
group by dep.depNum, dep.depName
