// TODO: Uzbek designations are placeholders pending native-speaker review.
// high_level is NOT here: coded via SNOMED CT (13644009 Hypercholesterolemia, verified active
// on tx.fhir.org) directly in the Questionnaire's answerOption, not a local code. taking_statins
// stays local: no verified SNOMED CT "on statin therapy" finding was found, and it's arguably a
// medication-use fact rather than a finding (MedicationStatement candidate) — open question.
CodeSystem: CerebrovascularCholesterolStatusCS
Id: cerebrovascular-cholesterol-status-cs
Title: "Cerebrovascular screening: cholesterol status answers"
Description: "Answer codes for elevated cholesterol / statin use in the cerebrovascular disease early-detection questionnaire, local remainder only."
* insert OriginalCodeSystemDraft(cerebrovascular-cholesterol-status-cs)
* ^language = #uz

* #taking_statins "Statin qabul qilaman"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Принимаю статины"
  * ^designation[+].language = #en
  * ^designation[=].value = "Taking statins"
* #no "Yo'q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нет"
  * ^designation[+].language = #en
  * ^designation[=].value = "No"
* #unknown "Bilmayman / bir yildan beri tekshirmaganman"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не знаю / не проверял за год"
  * ^designation[+].language = #en
  * ^designation[=].value = "Don't know / not checked this year"
