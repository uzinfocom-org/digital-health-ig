CodeSystem: FMStatusCS
Id: fm-status-cs
Title: "Financial Management Status Code System"
Description: "Financial Management Status codes with Uzbek and Russian translations"

* insert SupplementCodeSystemDraft(fm-status-cs, $fm-status, 5.0.0)

* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "активный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "faol"
  
* #cancelled
  * ^designation[0].language = #ru
  * ^designation[=].value = "отменён"
  * ^designation[+].language = #uz
  * ^designation[=].value = "bekor qilingan"

* #draft
  * ^designation[0].language = #ru
  * ^designation[=].value = "черновик"
  * ^designation[+].language = #uz
  * ^designation[=].value = "qoralama"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "внесено по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "xatolik bilan kiritilgan"