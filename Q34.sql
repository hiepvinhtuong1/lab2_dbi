select dep.depNum, dep.depName, count(delo.locNum) Number from tblDepartment dep
left join tblDepLocation delo on dep.depNum = delo.depNum
group by dep.depNum, dep.depName
having count(delo.locNum) = (
	select max(t1.Number) from (
		select dep.depNum, dep.depName, count(delo.locNum) Number from tblDepartment dep
	left join tblDepLocation delo on dep.depNum = delo.depNum
	group by dep.depNum, dep.depName
	) as t1
)