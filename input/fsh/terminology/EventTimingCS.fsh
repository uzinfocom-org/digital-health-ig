CodeSystem: EventTimingCS
Id: event-timing-cs
Title: "Event Timing translations"
Description: "Translations for standard EventTiming codes (MORN, AFT, EVE, NIGHT, etc.)"
* insert SupplementCodeSystemDraft(event-timing-cs, $event-timing, 5.0.0)

* #MORN "Morning"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ertalab"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Утром"

* #MORN.early "Early Morning"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Erta tongda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ранним утром"

* #MORN.late "Late Morning"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kechki tongda (Tushgacha)"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Поздним утром"

* #NOON "Noon"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tushda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В полдень"

* #AFT "Afternoon"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tushdan keyin"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Днем (после полудня)"

* #AFT.early "Early Afternoon"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tushdan keyin erta"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ранним днем"

* #AFT.late "Late Afternoon"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kechki payt"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Поздним днем"

* #EVE "Evening"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kechqurun"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вечером"

* #EVE.early "Early Evening"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Erta kechqurun"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ранним вечером"

* #EVE.late "Late Evening"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Kechki oqshom"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Поздним вечером"

* #NIGHT "Night"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tunda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Ночью"

* #PHS "After Sleep"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Uyqudan keyin"
  * ^designation[+].language = #ru
  * ^designation[=].value = "После сна"

* #IMD "Immediate"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Darhol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Немедленно"