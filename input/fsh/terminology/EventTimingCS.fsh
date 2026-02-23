CodeSystem: EventTimingCS
Id: event-timing-cs
Title: "Event Timing - UZ/RU Translations"
Description: "Translations for standard EventTiming codes (MORN, AFT, EVE, NIGHT, etc.)"
* insert SupplementCodeSystemDraft(event-timing-cs, $event-timing, 5.0.0)

* #MORN "Morning"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Ertalab"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Утром"

* #MORN.early "Early Morning"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Erta tongda"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Ранним утром"

* #MORN.late "Late Morning"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Kechki tongda (Tushgacha)"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Поздним утром"

* #NOON "Noon"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Tushda"
  * ^designation[1].language = #ru
  * ^designation[1].value = "В полдень"

* #AFT "Afternoon"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Tushdan keyin"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Днем (после полудня)"

* #AFT.early "Early Afternoon"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Tushdan keyin erta"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Ранним днем"

* #AFT.late "Late Afternoon"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Kechki payt"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Поздним днем"

* #EVE "Evening"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Kechqurun"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Вечером"

* #EVE.early "Early Evening"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Erta kechqurun"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Ранним вечером"

* #EVE.late "Late Evening"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Kechki oqshom"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Поздним вечером"

* #NIGHT "Night"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Tunda"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Ночью"

* #PHS "After Sleep"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Uyqudan keyin"
  * ^designation[1].language = #ru
  * ^designation[1].value = "После сна"

* #IMD "Immediate"
  * ^designation[0].language = #uz
  * ^designation[0].value = "Darhol"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Немедленно"