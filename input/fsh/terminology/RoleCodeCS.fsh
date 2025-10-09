CodeSystem: RoleCodeCS
Id: role-code-cs
Title: "Role code"
Description: "Specifies role codes used to define the function or position of a person or organization, with translations in Uzbek and Russian."
* ^url = "https://terminology.dhp.uz/fhir/core/CodeSystem/role-code-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $v3-RoleCode
* ^version = "3.0.0"
* ^language = #en

* #INTPRTER
  * ^designation[0].language = #ru
  * ^designation[=].value = "устный переводчик"
  * ^designation[+].language = #uz
  * ^designation[=].value = "tarjimon"
