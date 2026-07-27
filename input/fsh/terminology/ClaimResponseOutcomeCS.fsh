CodeSystem: ClaimResponseOutcomeCS
Id: claim-response-outcome-cs
Title: "Claim Response Outcome CS"
Description: "Claim response outcome supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(claim-response-outcome-cs, $claim-response-outcome, 5.0.0)

* #queued "queued"
  * ^designation[0].language = #uz
  * ^designation[=].value = "navbatda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "в очереди"

* #complete "complete"
  * ^designation[0].language = #uz
  * ^designation[=].value = "yakunlangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "завершён"

* #error "error"
  * ^designation[0].language = #uz
  * ^designation[=].value = "xatolik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "ошибка"

* #partial "partial"
  * ^designation[0].language = #uz
  * ^designation[=].value = "qisman bajarilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "частично выполнен"