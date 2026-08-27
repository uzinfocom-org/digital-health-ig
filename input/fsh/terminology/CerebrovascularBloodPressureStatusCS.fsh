// TODO: Uzbek designations are placeholders pending native-speaker review.
CodeSystem: CerebrovascularBloodPressureStatusCS
Id: cerebrovascular-blood-pressure-status-cs
Title: "Cerebrovascular screening: blood pressure status answers"
Description: "Answer codes for blood pressure status in the cerebrovascular disease early-detection questionnaire"
* insert OriginalCodeSystemDraft(cerebrovascular-blood-pressure-status-cs)
* ^language = #uz

* #yes "Ha"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Да"
  * ^designation[+].language = #en
  * ^designation[=].value = "Yes"
* #no "Yo'q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нет"
  * ^designation[+].language = #en
  * ^designation[=].value = "No"
* #unknown "Bilmayman / muntazam o'lchamayman"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не знаю / измеряю нерегулярно"
  * ^designation[+].language = #en
  * ^designation[=].value = "Don't know / measure irregularly"
