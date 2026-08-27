// TODO: Uzbek designations are placeholders pending native-speaker review.
// obesity and overweight are NOT here: coded via SNOMED CT (414916001 Obesity, 238131007
// Overweight, both verified active on tx.fhir.org) directly in the Questionnaire's answerOption,
// not local codes.
CodeSystem: CerebrovascularWeightStatusCS
Id: cerebrovascular-weight-status-cs
Title: "Cerebrovascular screening: weight status answers"
Description: "Answer codes for overweight/obesity by BMI or waist circumference in the cerebrovascular disease early-detection questionnaire, local remainder only."
* insert OriginalCodeSystemDraft(cerebrovascular-weight-status-cs)
* ^language = #uz

* #normal "Vazn me'yorida"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Вес в норме"
  * ^designation[+].language = #en
  * ^designation[=].value = "Normal weight"
* #unknown "Bilmayman"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не знаю"
  * ^designation[+].language = #en
  * ^designation[=].value = "Don't know"
