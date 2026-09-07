CodeSystem: MedicationRequestStatusCS
Id: medicationrequest-status-cs
Title: "MedicationRequest Status translations"
Description: "MedicationRequest statuses with translations into Uzbek and Russian."
* insert SupplementCodeSystemDraft(medicationrequest-status-cs, $medicationrequest-status, 5.0.0)

* #active "Active" "The prescription is currently valid and ready to be dispensed."
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Активно"

* #on-hold "On Hold" "Actions implied by the prescription are to be temporarily halted."
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ushlab qolingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "На удержании"

* #ended "Ended" "The prescription has expired or has been superseded."
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tugadi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Завершено"

* #stopped "Stopped" "Actions implied by the prescription are to be permanently halted."
  * ^designation[0].language = #uz
  * ^designation[=].value = "To'xtatildi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остановлено"

* #completed "Completed" "All actions that are implied by the prescription have occurred."
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bajarildi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Завершено"

* #cancelled "Cancelled" "The prescription has been withdrawn before any administrations have occurred."
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bekor qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Отменено"

* #entered-in-error "Entered in Error" "The prescription was entered in error and should not be followed."
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xatoda kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено с ошибкой"

* #draft "Draft" "The prescription is not yet 'actionable'."
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qoralama"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Черновик"

* #unknown "Unknown" "The authoring/source system does not know which of the status values currently applies."
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестно"