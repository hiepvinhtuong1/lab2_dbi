	select pro.proNum, pro.proName,count(wo.empSSN) numbers from tblProject pro
	join tblWorksOn wo on pro.proNum = wo.proNum
	group by pro.proNum, pro.proName
	having count(wo.empSSN) = (
    select min(numbers) FROM (
        select count(wo.empSSN) as numbers
        from tblProject pro
        join tblWorksOn wo on pro.proNum = wo.proNum
        group by pro.proNum
    ) as t1
	);