CodeSystem: AllergyVerificationStatusCS
Id: allergy-verification-status-cs
Title: "Allergy verification status"
Description: "Allergy verification status supplement with translations in uzbek and russian"
* insert SupplementCodeSystem(allergy-verification-status-cs, $allergy-verification, 1.0.1)
* #unconfirmed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не подтверждена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tasdiqlanmagan"
* #presumed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предполагаемый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Taxmin qilingan"
* #confirmed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подтверждена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tasdiqlangan"
* #refuted
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опровергнута"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rad etilgan"
* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ошибка ввода"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xatolik bilan kiritilgan"
