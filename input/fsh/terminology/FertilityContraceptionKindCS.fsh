// TODO: Uzbek designations are placeholders pending native-speaker review.
// female_sterilization (SNOMED CT 60890002), vasectomy (22523008), natural (718701005 Natural
// family planning method), intrauterine (268460000 Intrauterine contraceptive device) and
// chemical (466945004 Spermicide) are NOT here: all five verified active on tx.fhir.org and
// coded directly in the Questionnaire's answerOption. Only barrier and hormonal are local:
// SNOMED CT has no single category concept as broad as DMED's bucket for either — only specific
// instances exist (diaphragm, condom; oral/patch/injection/implant), none a faithful 1:1 match.
CodeSystem: FertilityContraceptionKindCS
Id: fertility-contraception-kind-cs
Title: "Fertility questionnaire: contraception kind answers"
Description: "Answer codes for the specific kind of contraception in the fertility questionnaire, local remainder only."
* insert OriginalCodeSystemDraft(fertility-contraception-kind-cs)
* ^language = #uz

* #barrier "To'siqli"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Барьерная"
  * ^designation[+].language = #en
  * ^designation[=].value = "Barrier"
* #hormonal "Gormonal"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Гормональная"
  * ^designation[+].language = #en
  * ^designation[=].value = "Hormonal"
