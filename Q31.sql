select pro.proNum, pro.proName, coalesce(sum(wo.workHours),0) Total from tblProject pro
left join tblWorksOn wo on pro.proNum = wo.proNum
group by pro.proNum, pro.proName
having sum(wo.workHours) = (
	select max(t1.total) FROM (
		select pro.proNum, coalesce(sum(wo.workHours),0) total from tblProject pro
		left join tblWorksOn wo on pro.proNum = wo.proNum
		group by pro.proNum
	) as t1
);
