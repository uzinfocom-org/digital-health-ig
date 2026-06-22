CodeSystem: TaskCodesCS
Id: task-codes-cs
Title: "Task Codes"
Description: "Uzbekistan national code system for Task codes. This CodeSystem contains codes for different types of tasks in the healthcare workflow."
* insert OriginalCodeSystemDraft(task-codes-cs)
* ^language = #uz
* ^experimental = true

* #approve-family-doctor "Oilaviy shifokorning roziligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Утверждение семейного врача"
  * ^designation[+].language = #en
  * ^designation[=].value = "Family doctor approval"

* #approve-specialist "Mutaxassisning roziligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Утверждение узкого специалиста"
  * ^designation[+].language = #en
  * ^designation[=].value = "Specialist approval"

* #approve-regional-commission "Mintaqaviy komissiyaning roziligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Утверждение региональной комиссии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Regional commission approval"

* #approve-national-commission "Respublika komissiyasining roziligi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Утверждение республиканской комиссии"
  * ^designation[+].language = #en
  * ^designation[=].value = "Republican commission approval"

* #approve-hospitalization "Kasalxonaga yotqizishni tasdiqlash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Утверждение госпитализации"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hospitalization approval"

* #approve-insurance-fund "Sug'urta fondi tomonidan tasdiqlash"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Утверждение фондом страхования"
  * ^designation[+].language = #en
  * ^designation[=].value = "Approval insurance fund"