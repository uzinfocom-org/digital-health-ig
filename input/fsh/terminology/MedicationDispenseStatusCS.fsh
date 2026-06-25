CodeSystem: MedicationDispenseStatusCS
Id: medicationdispense-status-cs
Title: "MedicationDispense Status (UZ supplement)"
Description: "Uzbek and Russian display translations for HL7 MedicationDispense status codes"
* insert SupplementCodeSystemDraft(medicationdispense-status-cs, $medicationdispense-status, 5.0.0)

* #preparation
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подготовка"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tayyorgarlik"

* #in-progress
  * ^designation[0].language = #ru
  * ^designation[=].value = "В процессе"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jarayonda"

* #cancelled
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отменено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bekor qilingan"

* #on-hold
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приостановлено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To‘xtatib turilgan"

* #completed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Завершено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yakunlandi"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ошибка ввода"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"

* #stopped
  * ^designation[0].language = #ru
  * ^designation[=].value = "Остановлено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To‘xtatildi"

* #declined
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отклонено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rad etilgan"

* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"