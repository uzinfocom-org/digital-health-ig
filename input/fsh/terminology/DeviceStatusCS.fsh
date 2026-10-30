CodeSystem: DeviceStatusCS
Id: device-status-cs
Title: "Device Status Code System"
Description: "Uzbek and Russian translations of the device status codes (active, inactive, entered-in-error)"

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