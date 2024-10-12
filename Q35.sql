select dep.depNum, dep.depName, count(delo.locNum) Number from tblDepartment dep
left join tblDepLocation delo on dep.depNum = delo.depNum
group by dep.depNum, dep.depName
having count(delo.locNum) = (
	select min(t1.numbers) from (
		select dep.depNum, dep.depName, count(delo.locNum) numbers from tblDepartment dep
		left join tblDepLocation delo on delo.depNum = dep.depNum
	group by dep.depNum, dep.depName
	) as t1
)