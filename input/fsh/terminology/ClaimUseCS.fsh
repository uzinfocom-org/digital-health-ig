CodeSystem: ClaimUseCS
Id: claim-use-cs
Title: "Claim Use CS"
Description: "Claim Use codes with Uzbek and Russian translations"

* insert SupplementCodeSystemDraft(claim-use-cs, $claim-use, 5.0.0)

* #preauthorization
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предсогласование"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oldindan ruxsat"
* #predetermination
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предопределение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Oldindan aniqlash"
