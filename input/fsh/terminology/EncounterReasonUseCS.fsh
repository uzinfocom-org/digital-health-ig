CodeSystem: EncounterReasonUseCS
Id: encounter-reason-use-cs
Title: "Encounter reason use translations"
Description: "Encounter reason use codes with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-reason-use-cs"
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #mserv-0002-00001 "Kasallik"
  * ^designation[0].language = #en
  * ^designation[=].value = "Disease"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Заболевание"
* #mserv-0002-00002 "Profilaktik qabul"
  * ^designation[0].language = #en
  * ^designation[=].value = "Preventive visit"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Профилактический приём"
* #mserv-0002-00003 "Boshqa"
  * ^designation[0].language = #en
  * ^designation[=].value = "Other"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Другое"
