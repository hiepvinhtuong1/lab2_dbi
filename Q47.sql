select dep.depNum, dep.depName, count(pro.proNum) numbers from tblDepartment dep
left join tblProject pro on dep.depNum = pro.depNum
group by dep.depNum, dep.depName
having count(pro.proNum) = (
	select max(t1.numbers) from (
		select dep.depNum, dep.depName, count(pro.proNum) numbers from tblDepartment dep
		left join tblProject pro on dep.depNum = pro.depNum
		group by dep.depNum, dep.depName
	) as t1
)