CodeSystem: ClaimResponseDecisionCS
Id: claim-response-decision-cs
Title: "Claim Response Decision CS"
Description: "Observation status supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(claim-response-decision-cs, $claim-response-decision, 5.0.0)

* #denied "Denied"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Rad etilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отклонён"

* #approved "Approved"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tasdiqlangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Одобрен"

* #partial "Partial"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qisman tasdiqlangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Частично одобрен"

* #pending "Pending"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ko'rib chiqilmoqda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "На рассмотрении"