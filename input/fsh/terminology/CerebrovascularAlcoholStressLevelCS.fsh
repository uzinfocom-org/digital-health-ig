// TODO: Uzbek designations are placeholders pending native-speaker review.
CodeSystem: CerebrovascularAlcoholStressLevelCS
Id: cerebrovascular-alcohol-stress-level-cs
Title: "Cerebrovascular screening: alcohol/stress level answers"
Description: "Answer codes for alcohol consumption and stress level in the cerebrovascular disease early-detection questionnaire"
* insert OriginalCodeSystemDraft(cerebrovascular-alcohol-stress-level-cs)
* ^language = #uz

* #regular_alcohol "Muntazam ko'p alkogol"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Регулярно много алкоголя"
  * ^designation[+].language = #en
  * ^designation[=].value = "Regularly high alcohol intake"
* #high_stress "Doimiy yuqori stress"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Постоянный высокий стресс"
  * ^designation[+].language = #en
  * ^designation[=].value = "Constant high stress"
* #both "Ikkalasi ham"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оба фактора"
  * ^designation[+].language = #en
  * ^designation[=].value = "Both factors"
* #none "Yo'q"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нет"
  * ^designation[+].language = #en
  * ^designation[=].value = "None"
