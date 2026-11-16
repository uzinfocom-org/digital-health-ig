CodeSystem: CarePlanLocationCS
Id: care-plan-location-cs
Title: "CarePlan location translations"
Description: "CarePlan location supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(care-plan-location-cs, $v3-RoleCode, 4.0.0)


* #PTRES
  * ^designation[0].language = #ru
  * ^designation[=].value = "Место жительства пациента"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bemorning yashash joyi"

* #OF
  * ^designation[0].language = #ru
  * ^designation[=].value = "амбулаторное учреждение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "ambulatoriya muassasasi"