CodeSystem: ClaimResponseUseCS
Id: claim-response-use-cs
Title: "Claim Response Use CS"
Description: "Claim response use supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(claim-response-use-cs, $claim-response-use, 5.0.0)

* #claim "Claim"
  * ^designation[0].language = #uz
  * ^designation[=].value = "To'lov uchun da'vo"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Заявление на возмещение"

* #preauthorization "Preauthorization"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oldindan tasdiqlash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Предварительное согласование"