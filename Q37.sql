select lo.locName, count(delo.depNum) numbers from tblLocation lo
join tblDepLocation delo on lo.locNum = delo.locNum
join tblDepartment dep on delo.depNum = dep.depNum
group by lo.locName
having count(delo.locNum) = (
	select min(t1.numbers) from (
		select lo.locName, count(delo.depNum) numbers from tblLocation lo
		join tblDepLocation delo on lo.locNum = delo.locNum
		join tblDepartment dep on delo.depNum = dep.depNum
		group by lo.locName
	) as t1
)