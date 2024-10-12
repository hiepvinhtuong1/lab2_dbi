select lo.locName, coalesce(count(delo.depNum),0) Number from tblLocation lo
left join tblDepLocation delo on lo.locNum = delo.locNum
group by lo.locName
having count(delo.locNum) = (
	select max(t1.Number) from (
		select lo.locName, coalesce(count(delo.depNum),0) Number from tblLocation lo
		left join tblDepLocation delo on lo.locNum = delo.locNum
		group by lo.locName
	) as t1
)