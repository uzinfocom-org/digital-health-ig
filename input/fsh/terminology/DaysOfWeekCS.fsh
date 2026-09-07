CodeSystem: DaysOfWeekCS
Id: days-of-week-cs
Title: "Days of Week translations"
Description: "Uzbek and Russian translations for the standard Days of Week codes."
* insert SupplementCodeSystemDraft(days-of-week-cs, $days-of-week, 5.0.0)

* #mon "Monday"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Dushanba"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Понедельник"

* #tue "Tuesday"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Seshanba"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вторник"

* #wed "Wednesday"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Chorshanba"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Среда"

* #thu "Thursday"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Payshanba"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Четверг"

* #fri "Friday"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Juma"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Пятница"

* #sat "Saturday"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shanba"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Суббота"

* #sun "Sunday"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yakshanba"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Воскресенье"