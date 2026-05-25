CodeSystem: RequestPriorityCS
Id: request-priority-cs
Title: "Request Priority CS"
Description: "Request priority supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(request-priority-cs, $request-priority, 5.0.0)
* ^experimental = true

* #routine
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обычный (плановый)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oddiy (rejalashtirilgan)"