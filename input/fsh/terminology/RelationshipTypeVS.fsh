ValueSet: RelationshipTypeVS
Id: relationship-type-vs
Title: "Relationship type"
Description: "Relationship types in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/relationship-type-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ParticipationTypeCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RoleClassCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ContactRole2CS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RoleCodeCS)

* include $v3-ParticipationType#WIT
* include $v3-RoleClass#NOT 
* include $v3-RoleClass#ECON
* include $v3-RoleClass#NOK
* include $v3-RoleClass#EMP
* include $v2-0131#E
* include $v2-0131#O
* include $v2-0131#U
* include $v3-RoleCode#INTPRTER
