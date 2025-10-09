CodeSystem: EncounterSubjectStatusCS
Id: encounter-subject-status-cs
Title: "Encounter subject status translations"
Description: "Encounter subject status codes with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/CodeSystem/encounter-subject-status-cs"
* ^experimental = true
* ^status = #active
* ^caseSensitive = true
* ^hierarchyMeaning = #is-a
* ^language = #uz

* #gencl-0003-00001 "Hushida"
  * ^designation[0].language = #en
  * ^designation[=].value = "Awake"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В сознании"
* #gencl-0003-00002 "Hushsiz"
  * ^designation[0].language = #en
  * ^designation[=].value = "Unconscious"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Без сознания"
* #gencl-0003-00003 "Barqaror"
  * ^designation[0].language = #en
  * ^designation[=].value = "Stable"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Стабильный" 
* #gencl-0003-00004 "Kritik holat"
  * ^designation[0].language = #en
  * ^designation[=].value = "Critical"
  * ^designation[+].language = #ru
  * ^designation[=].value = "НестабильКритическое"
* #gencl-0003-00005 "TerminaKuzatuv ostidal"
  * ^designation[0].language = #en
  * ^designation[=].value = "Under Observation"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Под наблюдением"
