CodeSystem: MedicationAdministrationStatusReasonCS
Id: medicationadministration-status-reason-cs
Title: "MedicationAdministration status reason translations"
Description: "MedicationAdministration status reason supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(
    medicationadministration-status-reason-cs,
    $sct,
    2026.1.0
)

* #242990004 "Drug not available for administration"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат недоступен для введения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasi yuborish uchun mavjud emas"

* #182895007 "Drug declined by patient"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат отклонен пациентом"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasi bemor tomonidan rad etilgan"

* #182896008 "Drug declined by patient - dislikes taste"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат отклонен пациентом - неприятный вкус"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasi bemor tomonidan rad etilgan - ta'mi yoqmagani uchun"

* #182897004 "Drug declined by patient - side effects"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат отклонен пациентом - побочные эффекты"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasi bemor tomonidan rad etilgan - nojo'ya ta'sirlari uchun"

* #182898009 "Drug declined by patient - inconvenient"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат отклонен пациентом - неудобно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasi bemor tomonidan rad etilgan - noqulay bo'lgani uchun"

* #182899001 "Drug declined by patient - problem swallowing"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат отклонен пациентом - проблема с глотанием"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasi bemor tomonidan rad etilgan - yutishdagi muammo tufayli"

* #182900006 "Drug declined by patient - patient beliefs"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат отклонен пациентом - убеждения пациента"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasi bemor tomonidan rad etilgan - bemorning e'tiqodlari tufayli"

* #182901005 "Drug declined by patient - alternative therapy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат отклонен пациентом - альтернативная терапия"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasi bemor tomonidan rad etilgan - muqobil terapiya tufayli"

* #182902003 "Drug declined by patient - cannot pay script"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат отклонен пациентом - не может оплатить рецепт"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasi bemor tomonidan rad etilgan - retsept uchun to'lay olmasligi tufayli"

* #182903008 "Drug declined by patient - reason unknown"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Препарат отклонен пациентом - причина неизвестна"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori vositasi bemor tomonidan rad etilgan - sababi noma'lum"