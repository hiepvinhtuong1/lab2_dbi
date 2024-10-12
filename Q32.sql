select lo.locName, count(delo.depNum) Number from tblLocation lo
left join tblDepLocation delo on lo.locNum = delo.locNum
group by lo.locName