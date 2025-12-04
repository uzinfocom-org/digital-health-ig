CodeSystem: DocumentReferenceCompositionStatusCS
Id: document-reference-composition-status-cs
Title: "DocumentReference Composition Status Translations"
Description: "DocumentReference Composition Status supplement with translations in Uzbek and Russian for DHP."
* insert SupplementCodeSystemDraft(document-reference-composition-status-cs, $document-reference-composition-status, 5.0.0)

* #registered
  * ^designation[0].language = #ru
  * ^designation[=].value = "Зарегистрировано"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ro'yxatga olingan"
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
* #final
  * ^designation[0].language = #ru
  * ^designation[=].value = "Окончательный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yakuniy"
* #amended
  * ^designation[0].language = #ru
  * ^designation[=].value = "Измененный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'zgartirilgan"
* #corrected
  * ^designation[0].language = #ru
  * ^designation[=].value = "Исправленный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tuzatilgan"
* #appended
  * ^designation[0].language = #ru
  * ^designation[=].value = "Дополненный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qo'shilgan"
* #cancelled
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отмененный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bekor qilingan"
* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
* #deprecated
  * ^designation[0].language = #ru
  * ^designation[=].value = "Устаревший"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Eskirgan"
* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"