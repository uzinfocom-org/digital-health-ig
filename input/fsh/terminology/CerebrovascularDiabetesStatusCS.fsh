// TODO: Uzbek designations are placeholders pending native-speaker review.
// diabetes and prediabetes are NOT here: coded via SNOMED CT (73211009 Diabetes mellitus,
// 714628002 Prediabetes, both verified active on tx.fhir.org) directly in the Questionnaire's
// answerOption, not local codes.
CodeSystem: CerebrovascularDiabetesStatusCS
Id: cerebrovascular-diabetes-status-cs
Title: "Cerebrovascular screening: diabetes status answers"
Description: "Answer codes for diabetes/elevated glucose in the cerebrovascular disease early-detection questionnaire, local remainder only."
* insert OriginalCodeSystemDraft(cerebrovascular-diabetes-status-cs)
* ^language = #uz

* #no "Yo'q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нет"
  * ^designation[+].language = #en
  * ^designation[=].value = "No"
* #unknown "Bilmayman / bir yildan beri tekshirmaganman"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не знаю / не обследовался за год"
  * ^designation[+].language = #en
  * ^designation[=].value = "Don't know / not tested this year"
