ValueSet: TelecomUseVS
Id: telecom-use-vs
Title: "Telecom usu"
Description: "Telecom use types in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/telecom-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(TelecomUseCS)

* include codes from system $telecom-use
