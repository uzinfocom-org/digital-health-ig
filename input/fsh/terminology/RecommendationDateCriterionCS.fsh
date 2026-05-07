CodeSystem: RecommendationDateCriterionCS
Id: recommendation-date-criterion-cs
Title: "Immunization recommendation date criterion translations"
Description: "Immunization recommendation date criteria with Uzbek and Russian translations"

* insert SupplementCodeSystemDraft(recommendation-date-criterion-cs, $loinc, 2.82)

* #30981-5 "Earliest date to give"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Самая ранняя допустимая дата вакцинации"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Emlashni o‘tkazish mumkin bo‘lgan eng erta sana"

* #30980-7 "Date vaccine due"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рекомендуемая дата вакцинации"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Emlash tavsiya etilgan sana"

* #59777-3 "Latest date to give immunization"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Крайняя дата своевременной вакцинации"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Emlashni o‘z vaqtida o‘tkazish uchun oxirgi sana"

* #59778-1 "Date when overdue for immunization"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дата, с которой вакцинация считается просроченной"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Emlash muddati o‘tgan deb hisoblanadigan sana"