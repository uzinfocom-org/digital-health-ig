CodeSystem: DeviceStatusCS
Id: device-status-cs
Title: "Device Status Code System"
Description: "Status codes for a device, with designations in Uzbek, Russian, and English."

* insert SupplementCodeSystemDraft(device-status-cs, $device-status, 5.0.0)

* #active
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Активный"

* #inactive
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol emas"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неактивный"

* #entered-in-error
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введенный по ошибке"