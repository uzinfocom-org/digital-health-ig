// TODO: Uzbek designations are placeholders pending native-speaker review.
// current_smoker and never_smoked are NOT here: coded via SNOMED CT (77176002 Smoker,
// 266919005 Never smoked tobacco, both verified active on tx.fhir.org) directly in the
// Questionnaire's answerOption, not local codes. The two quit-recency brackets stay local
// because generic SNOMED CT 'Ex-smoker' (8517006) doesn't carry the <5y/>5y distinction the
// risk score needs.
CodeSystem: CerebrovascularSmokingStatusCS
Id: cerebrovascular-smoking-status-cs
Title: "Cerebrovascular screening: smoking status answers"
Description: "Answer codes for smoking status in the cerebrovascular disease early-detection questionnaire, local remainder only."
* insert OriginalCodeSystemDraft(cerebrovascular-smoking-status-cs)
* ^language = #uz

* #quit_less_than_5_years "5 yildan kam vaqt oldin tashladim"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бросил менее 5 лет назад"
  * ^designation[+].language = #en
  * ^designation[=].value = "Quit less than 5 years ago"
* #quit_more_than_5_years "5 yildan ko'p vaqt oldin tashladim"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Бросил более 5 лет назад"
  * ^designation[+].language = #en
  * ^designation[=].value = "Quit more than 5 years ago"
