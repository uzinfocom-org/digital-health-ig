CodeSystem: ClaimResponseStatusCS
Id: claim-response-status-cs
Title: "Claim Response Status CS"
Description: "Claim response status supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(claim-response-status-cs, $claim-response-status, 5.0.0)

* #active "active"
  * ^designation[0].language = #uz
  * ^designation[=].value = "faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "активный"

* #cancelled "cancelled"
  * ^designation[0].language = #uz
  * ^designation[=].value = "bekor qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "отменён"

* #draft "draft"
  * ^designation[0].language = #uz
  * ^designation[=].value = "qoralama"
  * ^designation[+].language = #ru
  * ^designation[=].value = "черновик"

* #entered-in-error "entered-in-error"
  * ^designation[0].language = #uz
  * ^designation[=].value = "xatolik bilan kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "внесено по ошибке"
