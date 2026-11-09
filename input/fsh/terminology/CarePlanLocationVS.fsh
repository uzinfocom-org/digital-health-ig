ValueSet: CarePlanLocationVS
Id: care-plan-location-vs
Title: "CarePlan location"
Description: "CarePlan location value set, used to describe the location where care is provided to a patient"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/care-plan-location-vs"
* ^experimental = true
* ^language = #uz

* include $v3-RoleCode#PTRES
* $v3-RoleCode#PTRES ^designation[0].language = #ru
* $v3-RoleCode#PTRES ^designation[=].value = "Место жительства пациента"
* $v3-RoleCode#PTRES ^designation[+].language = #uz
* $v3-RoleCode#PTRES ^designation[=].value = "Bemorning yashash joyi"

* include $v3-RoleCode#OF
* $v3-RoleCode#OF ^designation[0].language = #ru
* $v3-RoleCode#OF ^designation[=].value = "амбулаторное учреждение"
* $v3-RoleCode#OF ^designation[+].language = #uz
* $v3-RoleCode#OF ^designation[=].value = "ambulatoriya muassasasi"