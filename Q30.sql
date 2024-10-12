select pro.proNum, pro.proName,sum(wo.workHours) total from tblProject pro
join tblWorksOn wo on pro.proNum = wo.proNum
group by pro.proNum, pro.proName
having count(wo.workHours) = (
	select min(total) FROM (
		select count(wo.empSSN) as total
		from tblProject pro
		join tblWorksOn wo on pro.proNum = wo.proNum
		group by pro.proNum
	) as t1
);
