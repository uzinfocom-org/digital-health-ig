// TODO: Uzbek designations are placeholders pending native-speaker review.
// irregular is NOT here: coded via SNOMED CT (80182007 Irregular periods, verified active on
// tx.fhir.org) directly in the Questionnaire's answerOption, not a local code. No SNOMED CT
// equivalent was found for a positive "regular menstrual cycle" finding — SNOMED tends not to
// code the normal/absence-of-abnormality state, only the abnormal one.
CodeSystem: CervicalCancerMenstrualCycleCS
Id: cervical-cancer-menstrual-cycle-cs
Title: "Cervical cancer screening: menstrual cycle answers"
Description: "Answer codes for menstrual cycle character in the cervical cancer early-detection questionnaire, local remainder only."
* insert OriginalCodeSystemDraft(cervical-cancer-menstrual-cycle-cs)
* ^language = #uz

* #regular "Muntazam"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Регулярный"
  * ^designation[+].language = #en
  * ^designation[=].value = "Regular"
