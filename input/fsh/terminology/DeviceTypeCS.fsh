CodeSystem: DeviceTypeCS
Id: device-type-cs
Title: "Device Type"
Description: "Type codes for a device (intrauterine contraceptive device, condom, drug-eluting contraceptive implant, contraceptive device), with UZ/RU/EN designations."

* insert SupplementCodeSystemDraft(device-type-cs, $sct, 5.0.0)

* #268460000 "Intrauterine contraceptive device"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bachadon ichi kontratseptiv vosita"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Внутриматочный контрацептив"

* #706506000 "Condom"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Prezervativ"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Презерватив"

* #468312002 "Drug-eluting contraceptive implant"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori moddasi ajratuvchi kontratseptiv implant"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Контрацептивный имплантат с высвобождением лекарственного вещества"

* #348649005 "Contraceptive device"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Vaginal kontraseptiv halqa"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Вагинальное контрацептивное кольцо"