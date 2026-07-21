CodeSystem: ClaimUseCS
Id: claim-use-cs
Title: "Claim Use CS"
Description: "Claim Use codes with Uzbek and Russian translations"

* insert SupplementCodeSystemDraft(claim-use-cs, $claim-use, 5.0.0)

* #claim 
  * ^designation[0].language = #uz
  * ^designation[=].value = "To'lov uchun da'vo"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Заявление на возмещение"

* #preauthorization
  * ^designation[0].language = #uz
  * ^designation[=].value = "Oldindan tasdiqlash"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Предварительное согласование"

* #predetermination
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предопределение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oldindan aniqlash"
