CodeSystem: ConditionVerificationStatusCS
Id: condition-verification-status-cs
Title: "Verification status types"
Description: "Verification status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(condition-verification-status-cs, $condition-verification-status, 5.0.0)

* #unconfirmed 
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неподтвержденный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tasdiqlanmagan"
* #provisional
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предварительный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dastlabki"
* #differential
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дифференциал"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Differensial"
* #confirmed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подтвержденный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tasdiqlangan"
* #refuted
  * ^designation[0].language = #ru
  * ^designation[=].value = "Опровергнуто"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rad etilgan"
* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato bilan kiritilgan"




