CodeSystem: MedicationAdministrationStatusCodesCS
Id: medication-administration-status-codes-cs
Title: "Medication Administration Status CS"
Description: "Medication Administration Status with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(medication-administration-status-codes-cs, $medication-administration-status-codes, 5.0.0)

* #in-progress
  * ^designation[0].language = #uz
  * ^designation[=].value = "Jarayonda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В процессе"

* #not-done
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bajarilmagan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не выполнено"

* #on-hold
  * ^designation[0].language = #uz
  * ^designation[=].value = "To‘xtatilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Приостановлено"

* #completed
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bajarildi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Выполнено"

* #entered-in-error
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено ошибочно"

* #stopped
  * ^designation[0].language = #uz
  * ^designation[=].value = "To'xtatilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остановлено"

* #unknown
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестно"