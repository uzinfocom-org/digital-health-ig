CodeSystem: DeviceNameTypeCS
Id: device-name-type-cs
Title: "Device Name Type"
Description: "Type of name associated with a device (registered-name, user-friendly-name, patient-reported-name), with UZ/RU/EN designations."

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
  * ^designation[=].value = "Удобное для пользователя наименования"

* #patient-reported-name
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bemor tomonidan bildirilgan nom"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Наименование, указанное пациентом"