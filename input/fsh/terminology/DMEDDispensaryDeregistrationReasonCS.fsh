CodeSystem: DMEDDispensaryDeregistrationReasonCS
Id: dmed-dispensary-deregistration-reason-cs
Title: "DMED Dispensary Deregistration Reason CodeSystem"
Description: "Deregistration reasons exactly as DMED sends them in the `deregistration_reason` field of a dispensary registration record. Codes are reproduced verbatim, including the misspelling `patitient_decline`, so that the wire value is always representable; [dmed-dispensary-deregistration-reason-to-dhp-cm](ConceptMap-dmed-dispensary-deregistration-reason-to-dhp-cm.html) translates them to DHP codes."
* insert OriginalCodeSystemDraft(dmed-dispensary-deregistration-reason-cs)

* #unspecified "Ko'rsatilmagan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не указано"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unspecified"

* #recovery_improvement "Tasdiqlangan sog'ayish yoki barqaror yaxshilanish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подтверждённое выздоровление или стойкое улучшение"
  * ^designation[+].language = #en
  * ^designation[=].value = "Confirmed recovery or sustained improvement"

* #deceased "Bemorning vafoti"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Смерть пациента"
  * ^designation[+].language = #en
  * ^designation[=].value = "Death of the patient"

* #residence_change "Doimiy yashash joyining o'zgarishi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изменение постоянного места жительства"
  * ^designation[+].language = #en
  * ^designation[=].value = "Change of permanent residence"

* #prison "Ozodlikdan mahrum qilish"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Лишение свободы"
  * ^designation[+].language = #en
  * ^designation[=].value = "Imprisonment"

// Misspelled in the DMED API contract; kept verbatim so the wire value can be represented.
* #patitient_decline "Bemorning bosh tortishi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отказ пациента"
  * ^designation[+].language = #en
  * ^designation[=].value = "Patient's refusal"

* #other "Boshqa"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Другое"
  * ^designation[+].language = #en
  * ^designation[=].value = "Other"
