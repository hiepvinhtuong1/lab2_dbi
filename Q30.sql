select pro.proNum, pro.proName, coalesce(sum(wo.workHours),0) Total from tblProject pro
left join tblWorksOn wo on pro.proNum = wo.proNum
group by pro.proNum, pro.proName
having sum(wo.workHours) = (
	select min(total) FROM (
		select pro.proNum, pro.proName, coalesce(sum(wo.workHours),0) Total from tblProject pro
		left join tblWorksOn wo on pro.proNum = wo.proNum
		group by pro.proNum, pro.proName
	) as t1
);
