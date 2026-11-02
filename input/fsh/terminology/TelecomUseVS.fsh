ValueSet: TelecomUseVS
Id: telecom-use-vs
Title: "Telecom use"
Description: "Telecom uses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/telecom-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(TelecomUseCS)

* include codes from system $telecom-use
