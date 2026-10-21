ValueSet: DeviceTypeVS
Id: device-type-vs
Title: "Device Type Value Set"
Description: "Value set of device types (intrauterine contraceptive device, condom etc.), with UZ/RU/EN designations."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceTypeCS)

* include $sct#268460000
* include $sct#706506000
* include $sct#468312002
* include $sct#348649005
* include codes from system $sct where concept is-a #49062001 "Device"