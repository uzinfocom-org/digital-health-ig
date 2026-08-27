// TODO: Uzbek designations are placeholders pending native-speaker review.
// typical (SNOMED CT 429559004 Typical angina), atypical (371807002 Atypical angina) and
// shortness-of-breath (267036007 Dyspnea) are NOT here: all three verified active on
// tx.fhir.org and coded directly in the Questionnaire's answerOption. Only non-anginal is
// local: it's a Diamond-Forrester-style classification label with no matching SNOMED CT
// concept found.
CodeSystem: IhdChestPainTypeCS
Id: ihd-chest-pain-type-cs
Title: "IHD pretest chest pain type"
Description: "Chest pain classification derived from the IHD pretest-probability questionnaire, local remainder only."
* insert OriginalCodeSystemDraft(ihd-chest-pain-type-cs)
* ^language = #uz

* #non-anginal "Noanginoz og'riq"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неангинозная боль"
  * ^designation[+].language = #en
  * ^designation[=].value = "Non-anginal pain"
