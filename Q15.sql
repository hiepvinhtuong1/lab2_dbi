select de.depRelationship, COUNT(de.depName) as Number from tblDependent de
group by de.depRelationship
