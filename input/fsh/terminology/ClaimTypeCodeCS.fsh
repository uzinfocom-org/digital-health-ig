CodeSystem: ClaimTypeCodeCS
Id: claim-type-code-cs
Title: "Claim Type CS"
Description: "Claim Type codes with Uzbek and Russian translations"

* insert SupplementCodeSystemDraft(claim-type-code-cs, $claim-type, 0.1.0)

* #institutional 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Медицинское учреждение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tibbiyot muassasasi"
* #oral 
  * ^designation[0].language = #ru
  * ^designation[=].value = "стоматология"
  * ^designation[+].language = #uz
  * ^designation[=].value = "stomatologiya"

* #pharmacy 
  * ^designation[0].language = #ru
  * ^designation[=].value = "аптека"
  * ^designation[+].language = #uz
  * ^designation[=].value = "dorixona"

* #professional 
  * ^designation[0].language = #ru
  * ^designation[=].value = "медицинский специалист"
  * ^designation[+].language = #uz
  * ^designation[=].value = "tibbiyot mutaxassisi"

* #vision 
  * ^designation[0].language = #ru
  * ^designation[=].value = "офтальмология"
  * ^designation[+].language = #uz
  * ^designation[=].value = "oftalmologiya"