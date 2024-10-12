select dep.depNum, dep.depName, pro.proName ,count(emp.empSSN) from tblDepartment dep
left join tblEmployee emp on dep.depNum = emp.depNum
join tblProject pro on pro.depNum = dep.depNum
group by dep.depNum, dep.depName, pro.proName 
having count(emp.empSSN) > 5