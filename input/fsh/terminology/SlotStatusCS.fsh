CodeSystem: SlotStatusCS
Id: slot-status-cs
Title: "Slot status translations"
Description: "Slot status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(slot-status-cs, $slotstatus, 5.0.0)

* #busy
  * ^designation[0].language = #ru
  * ^designation[=].value = "Занят"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Band"

* #free
  * ^designation[0].language = #ru
  * ^designation[=].value = "Свободен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bo'sh"

* #busy-unavailable
  * ^designation[0].language = #ru
  * ^designation[=].value = "Недоступен для записи"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yozilish uchun mavjud emas"

* #busy-tentative
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предварительно занят"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dastlabki band qilingan"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено ошибочно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato bilan kiritilgan"
