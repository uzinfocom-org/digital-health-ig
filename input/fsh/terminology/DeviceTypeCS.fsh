CodeSystem: DeviceTypeCS
Id: device-type-cs
Title: "Device Type Code System"
Description: "Uzbek and Russian translations of SNOMED CT contraceptive device types (intrauterine contraceptive device, condom, drug-eluting contraceptive implant, contraceptive device)"

* insert SupplementCodeSystemDraft(device-type-cs, $sct, 2026.1.0)

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
  * ^designation[=].value = "Kontratseptiv vosita"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Контрацептивное средство"