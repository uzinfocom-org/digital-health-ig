CodeSystem: DataAbsentReasonCS
Id: data-absent-reason-cs
Title: "Data absent reason"
Description: "Data absent reason supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(data-absent-reason-cs, $observation-dataAbsentReason, 1.0.0)

* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"
* #asked-unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Спросили, но неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "So'ralgan, lekin noma'lum"
* #temp-unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Временно неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Vaqtincha noma'lum"
* #not-asked
  * ^designation[0].language = #ru
  * ^designation[=].value = "Спросили, но отказано"
  * ^designation[+].language = #uz
  * ^designation[=].value = "So'ralmagan"
* #asked-declined
  * ^designation[0].language = #ru
  * ^designation[=].value = "Спросили, но отказано"
  * ^designation[+].language = #uz
  * ^designation[=].value = "So'raldi, lekin rad etildi"
* #masked
  * ^designation[0].language = #ru
  * ^designation[=].value = "Скрытый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yashirin"
* #not-applicable
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не применимый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qo'llab bo'lmaydigan"
* #unsupported
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неподдерживаемый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qo'llab-quvvatlanmaydi"
* #as-text
  * ^designation[0].language = #ru
  * ^designation[=].value = "Как текст"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Matn ko'rinishida"
* #error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Скрытый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yashirin"
* #not-a-number
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не число (NaN)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Son emas"
* #negative-infinity
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отрицательная бесконечность (NINF)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Manfiy cheksizlik"
* #positive-infinity
  * ^designation[0].language = #ru
  * ^designation[=].value = "Положительная бесконечность (ПБНФ)"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Musbat cheksizlik"
* #not-performed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не выполнено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bajarilmagan"
* #not-permitted
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не разрешено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ruxsat berilmagan"
