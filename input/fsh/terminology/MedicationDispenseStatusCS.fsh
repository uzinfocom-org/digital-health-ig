CodeSystem: MedicationDispenseStatusCS
Id: medicationdispense-status-cs
Title: "MedicationDispense Status (UZ supplement)"
Description: "Uzbek and Russian display translations for HL7 MedicationDispense status codes"
* insert SupplementCodeSystemDraft(medicationdispense-status-cs, $medicationdispense-status, 5.0.0)
* ^language = #uz

* #preparation "Tayyorgarlik"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подготовка"
  * ^designation[+].language = #en
  * ^designation[=].value = "Preparation"

* #in-progress "Jarayonda"
  * ^designation[0].language = #ru
  * ^designation[=].value = "В процессе"
  * ^designation[+].language = #en
  * ^designation[=].value = "In Progress"

* #cancelled "Bekor qilingan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отменено"
  * ^designation[+].language = #en
  * ^designation[=].value = "Cancelled"

* #on-hold "To‘xtatib turilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приостановлено"
  * ^designation[+].language = #en
  * ^designation[=].value = "On Hold"

* #completed "Yakunlandi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Завершено"
  * ^designation[+].language = #en
  * ^designation[=].value = "Completed"

* #entered-in-error "Xato kiritilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ошибка ввода"
  * ^designation[+].language = #en
  * ^designation[=].value = "Entered in Error"

* #stopped "To‘xtatildi"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Остановлено"
  * ^designation[+].language = #en
  * ^designation[=].value = "Stopped"

* #declined "Rad etilgan"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отклонено"
  * ^designation[+].language = #en
  * ^designation[=].value = "Declined"

* #unknown "Noma'lum"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #en
  * ^designation[=].value = "Unknown"