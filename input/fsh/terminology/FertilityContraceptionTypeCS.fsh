// TODO: Uzbek designations are placeholders pending native-speaker review.
CodeSystem: FertilityContraceptionTypeCS
Id: fertility-contraception-type-cs
Title: "Fertility questionnaire: contraception type answers"
Description: "Answer codes for contraception type in the fertility questionnaire"
* insert OriginalCodeSystemDraft(fertility-contraception-type-cs)
* ^language = #uz

* #surgical "Jarrohlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Хирургическая"
  * ^designation[+].language = #en
  * ^designation[=].value = "Surgical"
* #non_surgical "Jarrohliksiz"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нехирургическая"
  * ^designation[+].language = #en
  * ^designation[=].value = "Non-surgical"
* #none "Qo'llanilmaydi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не применяется"
  * ^designation[+].language = #en
  * ^designation[=].value = "Not applicable"
