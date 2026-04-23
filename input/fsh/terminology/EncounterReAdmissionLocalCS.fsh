CodeSystem: ReAdmissionLocalCS
Id: re-admission-local-cs
Title: "Readmission Local CodeSystem"
Description: "Codes describing whether the admission is first-time or repeated within the current year."
* insert OriginalCodeSystemDraft(re-admission-local-cs)


* #first-time "Birinchi marta"
  * ^designation[0].language = #en
  * ^designation[=].value = "First time"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Впервые"

* #repeat-current-year "Joriy yilda qayta"
  * ^designation[0].language = #en
  * ^designation[=].value = "Repeated within current year"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Повторно в текущем году"