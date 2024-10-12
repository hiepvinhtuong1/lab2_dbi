select dep.depName, dep.depNum, lo.locName from tblDepartment dep
join tblDepLocation delo on dep.depNum = delo.depNum
join tblLocation lo on lo.locNum = delo.locNum
where dep.depName = N'Phòng Nghiên cứu và phát triển'