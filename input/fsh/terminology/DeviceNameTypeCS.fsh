CodeSystem: DeviceNameTypeCS
Id: device-name-type-cs
Title: "Device Name Type Code System"
Description: "Uzbek and Russian translations of the device name types (registered-name, user-friendly-name, patient-reported-name)"

* insert SupplementCodeSystemDraft(device-name-type-cs, $device-name-type, 5.0.0)

* #registered-name
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ro'yxatdan o'tgan nomi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Зарегистрированное наименование"

* #user-friendly-name
  * ^designation[0].language = #uz
  * ^designation[=].value = "Foydalanuvchiga qulay nomi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Удобное для пользователя наименование"

* #patient-reported-name
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bemor tomonidan bildirilgan nom"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Наименование, указанное пациентом"