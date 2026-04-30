CodeSystem: EncounterPurposeCS
Id: encounter-purpose-cs
Title: "Encounter Purpose Classification"
Description: "Classification of patient encounter purposes in Uzbek and Russian"
* insert OriginalCodeSystemDraft(encounter-purpose-cs)

* #enc-pur-001 "Diagnostika"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Диагностика"
  * ^designation[+].language = #en
  * ^designation[=].value = "Diagnostics"

* #enc-pur-002 "Majburiy davolash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Принудительное лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Mandatory treatment"

* #enc-pur-003 "Ixtiyoriy davolash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Добровольное лечение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Voluntary treatment"

* #enc-pur-004 "Ekspertiza"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Экспертиза"
  * ^designation[+].language = #en
  * ^designation[=].value = "Expertise"
