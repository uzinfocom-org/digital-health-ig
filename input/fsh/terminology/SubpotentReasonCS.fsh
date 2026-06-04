CodeSystem: SubpotentReasonCS
Id: subpotent-reason-cs
Title: "Immunization Subpotent Reason translations"
Description: "Immunization Subpotent Reason supplement with Uzbek and Russian translations"
* insert SupplementCodeSystem(subpotent-reason-cs, $immunization-subpotent-reason, 0.1.0)

* #partialdose "Partial Dose"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qisman doza"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Частичная доза"

* #coldchainbreak "Cold Chain Break"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Sovuq zanjirning buzilishi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Нарушение холодовой цепи"

* #recall "Manufacturer Recall"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ishlab chiqaruvchining sharhi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отзыв производителя"

* #adversestorage "Adverse Storage"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noqulay saqlash sharoitlari"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неблагоприятные условия хранения"

* #expired "Expired Product"
  * ^designation[0].language = #uz
  * ^designation[=].value = "Muddati o'tgan mahsulot"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Просроченный продукт"