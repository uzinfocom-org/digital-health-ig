CodeSystem: DeviceAvailabilityStatusCS
Id: device-availability-status-cs
Title: "Device Availability Status Code System"
Description: "Uzbek and Russian translations of the device availability status codes (lost, damaged, destroyed, available)"

* insert SupplementCodeSystemDraft(device-availability-status-cs, $device-availability-status, 5.0.0)

* #lost
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yo'qolgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Утерян"

* #damaged
  * ^designation[0].language = #uz
  * ^designation[=].value = "Shikastlangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Повреждён"

* #destroyed
  * ^designation[0].language = #uz
  * ^designation[=].value = "Yo'q qilingan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Уничтожен"

* #available
  * ^designation[0].language = #uz
  * ^designation[=].value = "Mavjud"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Доступен"