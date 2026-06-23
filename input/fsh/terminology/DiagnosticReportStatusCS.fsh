CodeSystem: DiagnosticReportStatusCS
Id: diagnostic-report-status-cs
Title: "DiagnosticReport status supplement"
Description: "DiagnosticReport status supplement with translations in uzbek and russian"
* insert SupplementCodeSystemDraft(diagnostic-report-status-cs, $diagnostic-report-status, 5.0.0)

* #registered
  * ^designation[0].language = #ru
  * ^designation[=].value = "Зарегистрирован"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ro'yxatdan o'tkazilgan"

* #partial
  * ^designation[0].language = #ru
  * ^designation[=].value = "Частичный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qisman"

* #preliminary
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предварительный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dastlabki"

* #modified
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изменённый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'zgartirilgan"

* #final
  * ^designation[0].language = #ru
  * ^designation[=].value = "Окончательный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yakuniy"

* #corrected
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исправленный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tuzatilgan"

* #appended
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дополненный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qo'shimcha kiritilgan"

* #cancelled
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отменённый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bekor qilingan"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введён по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato bilan kiritilgan"

* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"

