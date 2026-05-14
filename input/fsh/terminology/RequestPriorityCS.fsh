CodeSystem: RequestPriorityCS
Id: request-priority-cs
Title: "Request Priority CS"
Description: "Request priority supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(request-priority-cs, $request-priority, 5.0.0)
* ^experimental = true

* #routine
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oddiy"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Обычный"

* #urgent
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shoshilinch"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Срочный"

* #asap
  * ^designation[0].language = #uz
  * ^designation[=].value = "Iloji boricha tez"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Как можно скорее"

* #stat
  * ^designation[0].language = #uz
  * ^designation[=].value = "Darhol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Немедленно"
