// TODO: Uzbek designations are placeholders pending native-speaker review.
// atrial_fibrillation is NOT here: coded via SNOMED CT (49436004, verified active on
// tx.fhir.org) directly in the Questionnaire's answerOption, not a local code.
CodeSystem: CerebrovascularHeartConditionCS
Id: cerebrovascular-heart-condition-cs
Title: "Cerebrovascular screening: heart condition answers"
Description: "Answer codes for heart rhythm disorders / other heart disease in the cerebrovascular disease early-detection questionnaire, local remainder only."
* insert OriginalCodeSystemDraft(cerebrovascular-heart-condition-cs)
* ^language = #uz

* #other_heart_disease "Boshqa yurak kasalliklari"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другие болезни сердца: ишемия, инфаркт, пороки"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other heart disease: ischemia, infarction, defects"
* #no "Yo'q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нет"
  * ^designation[+].language = #en
  * ^designation[=].value = "No"
* #unknown "Bilmayman"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не знаю"
  * ^designation[+].language = #en
  * ^designation[=].value = "Don't know"
