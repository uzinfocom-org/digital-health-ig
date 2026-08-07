CodeSystem: DMEDROleClassCS
Id: dmed-role-class-cs
Title: "DMED Position SNOMED CodeSystem"
Description: "DMED Position SNOMED supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(dmed-role-class-cs, $v3-RoleClass, 6.0.0)

* #PAT
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пациент"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemot"