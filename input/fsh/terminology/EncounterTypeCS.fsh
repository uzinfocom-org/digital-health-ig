CodeSystem: EncounterTypeCS
Id: encounter-type-cs
Title: "Encounter Type translations"
Description: "Encounter type codes with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-type-cs"
* ^experimental = true
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #mserv-0001-00001 "Profilaktik"
  * ^designation[0].language = #en
  * ^designation[=].value = "Preventive services"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Профилактические"
* #mserv-0001-00002 "Diagnostika"
  * ^designation[0].language = #en
  * ^designation[=].value = "Diagnostic"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Диагностические"  
* #mserv-0001-00003 "Konsultativ"
  * ^designation[0].language = #en
  * ^designation[=].value = "Consultative"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Консультативные"
* #mserv-0001-00004 "Davolash"
  * ^designation[0].language = #en
  * ^designation[=].value = "Treatment services"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Лечебные"
* #mserv-0001-00005 "Palliativ (psixologik va terapevtik)"
  * ^designation[0].language = #en
  * ^designation[=].value = "Palliative care (psychological and therapeutic)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Паллиатив (психологическое и лечебная)"
* #mserv-0001-00006 "Sud tibbiy ekspertizasi"
  * ^designation[0].language = #en
  * ^designation[=].value = "Forensic medical examination"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Суд мед экспертиза"
* #mserv-0001-00007 "Patologoanatomik xizmat"
  * ^designation[0].language = #en
  * ^designation[=].value = "Pathalogonatomy service"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Паталогаанатомическая служба"
