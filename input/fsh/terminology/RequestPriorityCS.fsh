CodeSystem: RequestPriorityCS
Id: request-priority-cs
Title: "Request Priority CS"
Description: "Request priority supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(request-priority-cs, $request-priority, 5.0.0)
* ^experimental = true

* #routine
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обычный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oddiy"
* #urgent
  * ^designation[0].language = #ru
  * ^designation[=].value = "Срочный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Shoshilinch"
* #asap
  * ^designation[0].language = #ru
  * ^designation[=].value = "Как можно скорее"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Imkon qadar tezroq"
* #stat
  * ^designation[0].language = #ru
  * ^designation[=].value = "Немедленно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Zudlik bilan"