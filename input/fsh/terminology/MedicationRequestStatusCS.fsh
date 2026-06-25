CodeSystem: MedicationRequestStatusCS
Id: medicationrequest-status-cs
Title: "MedicationRequest Status translations"
Description: "MedicationRequest statuses with translations into Uzbek and Russian."
* insert SupplementCodeSystemDraft(medicationrequest-status-cs, $medicationrequest-status, 5.0.0)

* #active "Active" "The prescription is currently valid and ready to be dispensed."
  * ^designation[0].language = #uz
  * ^designation[0].value = "Faol"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Активно"

* #on-hold "On Hold" "Actions implied by the prescription are to be temporarily halted."
  * ^designation[0].language = #uz
  * ^designation[0].value = "Ushlab qolingan"
  * ^designation[1].language = #ru
  * ^designation[1].value = "На удержании"

* #ended "Ended" "The prescription has expired or has been superseded."
  * ^designation[0].language = #uz
  * ^designation[0].value = "Tugadi"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Завершено"

* #stopped "Stopped" "Actions implied by the prescription are to be permanently halted."
  * ^designation[0].language = #uz
  * ^designation[0].value = "To'xtatildi"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Остановлено"

* #completed "Completed" "All actions that are implied by the prescription have occurred."
  * ^designation[0].language = #uz
  * ^designation[0].value = "Bajarildi"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Завершено"

* #cancelled "Cancelled" "The prescription has been withdrawn before any administrations have occurred."
  * ^designation[0].language = #uz
  * ^designation[0].value = "Bekor qilingan"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Отменено"

* #entered-in-error "Entered in Error" "The prescription was entered in error and should not be followed."
  * ^designation[0].language = #uz
  * ^designation[0].value = "Xatoda kiritilgan"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Введено с ошибкой"

* #draft "Draft" "The prescription is not yet 'actionable'."
  * ^designation[0].language = #uz
  * ^designation[0].value = "Qoralama"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Черновик"

* #unknown "Unknown" "The authoring/source system does not know which of the status values currently applies."
  * ^designation[0].language = #uz
  * ^designation[0].value = "Noma'lum"
  * ^designation[1].language = #ru
  * ^designation[1].value = "Неизвестно"