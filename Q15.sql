select de.depRelationship, COUNT(de.depName) as 'Numbers' from tblDependent de
group by de.depRelationship
